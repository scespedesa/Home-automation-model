/* #include <buzzer_tone.c>
*
* Creada por: Ing. Abiezer Hernandez O.
* Fecha de creacion: 22/05/2020
* Electronica y Circuitos
*
*/

#ifndef buzzer_tone_H
#define	buzzer_tone_H

#ifndef Buzzer
#define Buzzer RA3
#endif

#ifdef	__cplusplus
extern "C" {
#endif
    




#ifdef	__cplusplus
}
#endif
#include<xc.h>
#include<string.h>
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 20000000
#endif



void do_delay(int ms_delay, int num_ms, int us_delay, int num_us)
{
   int i;

 for(i=0;i<num_ms;i++)
  __delay_ms(250);
 //__delay_ms(ms_delay);
 for(i=0;i<num_us;i++)
  __delay_us(250);
 //
   //__delay_us(us_delay);
}

void generate_tone( long frequency, long duration)
{
   int total_delay_time;
   long total_ms_delay_time, total_us_delay_time;
   int num_us_delays, num_ms_delays, ms_delay_time, us_delay_time;
   long num_periods;

   total_delay_time = (1000000/frequency)/2-10;

   total_ms_delay_time = total_delay_time/1000;
   num_ms_delays = total_ms_delay_time/250;
   ms_delay_time = total_ms_delay_time%250;

   total_us_delay_time = total_delay_time%1000;
   num_us_delays = total_us_delay_time/250;
   us_delay_time = total_us_delay_time%250;

   num_periods = ((int)duration*1000)/(1000000/frequency);

   while((num_periods--) != 0)
   {
      do_delay(ms_delay_time, num_ms_delays, us_delay_time, num_us_delays);
      Buzzer=1;
      do_delay(ms_delay_time, num_ms_delays, us_delay_time, num_us_delays);
      Buzzer=0;
   }
   return;
}

#endif	/* LIBLCDXC8_H */

