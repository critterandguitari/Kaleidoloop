#include <avr/io.h>
#include <avr/interrupt.h>
#include <inttypes.h>
#include <math.h>
#include <avr/sleep.h>
#include "apa102.h"
#include "i2c_peripheral.h"

#define I2C_ADDR 0x10
#define INT_ON PORTC|=(1<<2);
#define INT_OFF PORTC&=~(1<<2);
#define DELAY8	{asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");asm volatile("nop");}

#define PO_SIZE 3
// data peripheral output, buttons and knobs
uint8_t data_po[PO_SIZE] = {0xFF,0,0};  // 1 byte for buttons, 2 bytes knobs
uint8_t debounce_timer[4] = {0,0,0,0};
uint8_t buttons[4] = {1,1,1,1};

// data peripheral input, all leds
uint8_t data_pi[6] = {  0,0,0,
                        0,0,0};

extern uint8_t i2c_recv_index;
extern uint8_t i2c_send_index;

void i2c_received(uint8_t received_data) {
    data_pi[i2c_recv_index] = received_data;
    i2c_recv_index++;
    if (i2c_recv_index == 6) i2c_recv_index = 0;
 }

void i2c_requested() {
    // buttons and knobs being read, so clear the interrupt output
    INT_OFF;
    i2c_transmitByte(data_po[i2c_send_index]);
    i2c_send_index++;
    if (i2c_send_index == PO_SIZE) i2c_send_index = 0;
}

// short delay in miliseconds (sort of)
void delay_ms(uint16_t dtime){
    uint32_t time;
    time = dtime;
    time *= 125;
    while(time){
        DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;DELAY8;
        time--;
    }
}

void read_adc(void) {
    uint8_t ch = 0;
    for (ch = 0; ch < 2; ch++) {
        ADMUX = ch;
        ADMUX |= (1 << 5);    // left justify the result, 8 bits in ADCH
        ADCSRA = 0xD6;        // start it
        while(!(ADCSRA & 1<<ADIF));
        data_po[ch + 1] = ADCH;  // data_po is 1 byte for buttons, 2 bytes knobs
    }
}

void set_leds(void) {
    apa102_start();
    for (uint8_t i = 0; i < 3; i++){
        apa102_set_led(data_pi[i*3], data_pi[(i*3)+1], data_pi[(i*3)+2]);
    }
    apa102_end();
}

int main(void) {

    // disable jtag
    MCUCR|= (1<<JTD);
    MCUCR|= (1<<JTD);
    
    delay_ms(1);

    // buttons are on port D, lower nibble
    DDRD &= ~0xF;
    PORTD |= 0xF;
     

    // output interrupt signal on PC2
    DDRC |= (1<<2);
    INT_OFF;
    
    // init LEDs
    apa102_init();

    // init I2C
    i2c_setCallbacks(i2c_received, i2c_requested);
    i2c_init(I2C_ADDR);
    
    sei();
    
    for (int i = 0; i <50; i++){
        apa102_set_all_leds(6,  i % 50, 6);delay_ms(30);
    }
    for (int i = 0; i <50; i++){
        apa102_set_all_leds(3, 3, i % 50);delay_ms(30);
    }
    for (int i = 0; i <50; i++){
        apa102_set_all_leds(1, 1, i % 50);delay_ms(30);
    }

    uint8_t ms_count = 0;
    uint8_t button_changed = 0;
    for(;;) {
        
        // every 10 ms
        if (ms_count >= 10) {
            ms_count = 0;
            // set the leds with values from i2c
            set_leds();

            // get adc values
            read_adc();
        }
        else ms_count++;
 
        for (uint8_t i = 0; i < 4; i++) {

            // button out of debounce interval
            if (debounce_timer[i] == 0) {
                
                uint8_t tmp = 0;

                // get buttons
                if (i == 0) tmp = (PIND >> 0) & 1;
                if (i == 1) tmp = (PIND >> 1) & 1;
                if (i == 2) tmp = (PIND >> 2) & 1;
                if (i == 3) tmp = (PIND >> 3) & 1;
                
                // check if changed
                if (tmp != buttons[i]) {
                    buttons[i] = tmp;
                    debounce_timer[i] = 25;
                    button_changed = 1;
                }
            }
            else {
                debounce_timer[i]--;
            }
        }
            
        if (button_changed) {
            // update and send it out. use tmp so data_po is updated atomically 
            uint8_t tmp0;
            tmp0=0;
            for (uint8_t i = 0; i < 4; i++){
                if (buttons[i]) tmp0 |= (1<<i);
            }
            data_po[0] = tmp0;
            
            INT_ON;
            button_changed = 0;
        }

        delay_ms(1);

    } // for(;;);
} // main()
