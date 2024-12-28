#include<xc.h>
#define _XTAL_FREQ 8000000
#pragma config FOSC=INTOSC_EC
#pragma config WDT=OFF
//#define TRIGGER RD0
#define ECHO RC2
#define Alarma RA0
#define Bloqueo RA1
#define Motor2 RA2
#define Buzzer RA3
#pragma config LVP=OFF
#pragma config PBADEN=OFF
unsigned int a=3000;
unsigned int b=48;
unsigned char bandera=0;
unsigned char bandera2=0;
void Transmitir(unsigned char);
unsigned char LeerSensor(void);
void interrupt ISR(void);
void main(void){
  unsigned int t;
  unsigned char d;
  OSCCON=0b01110000;
  ADCON1=15;
  TRISA3=0; 
 TRISA2=0;
  TRISA1=1;
  TRISA0=0;

  __delay_ms(1);
  TRISC1=0;
  TMR3=25536;//TMR3 Servomotor-->CCP2
  T3CON=0b10001000;
  CCPR2=25536+3000;//Angulo 90
  CCP2CON=0b00001001;
  TMR3IF=0;
  TMR3IE=1;
  PEIE=1;
  GIE=1;
  TMR3ON=1;
  
  TRISB = 0b11110000;
  TRISD=0; 
  LATD=0;
  TXSTA=0b00100000;
  RCSTA=0b10000000;
  BAUDCON=0b00000000;
  SPBRG=12;
  T1CON=0b10010000;//Prescaler de 2
  
  //Teclado:
  RBPU=0;
  __delay_ms(100);
  RBIF=0;
  RBIE=1;
  LATB=0b00000000;
  Alarma=0;
  
  while(1){
      if(Bloqueo==0){
          Buzzer=0;
          Alarma=0;
      }

    bandera=0;
    bandera2=0;
     //t=0;
    CCP1CON=0b00000100;
    TMR1=0;
    CCP1IF=0;
    LATD=0b00000000;    
    LATD0=1;
    __delay_us(10);
    LATD0=0;
    while(ECHO==0);
    TMR1ON=1;
    while(CCP1IF==0);
    TMR1ON=0;
    
    d=CCPR1/58;
    if(d<20){
        a=2000;
        bandera=1;
        if(d<10)bandera2=1;
    }
    CCP1CON=0b00000100;
    TMR1=0;
    CCP1IF=0;
    LATD=0b00010000;    
    LATD1=1;
    __delay_us(10);
    LATD1=0;
    while(ECHO==0);
    TMR1ON=1;
    while(CCP1IF==0);
    TMR1ON=0;
    d=CCPR1/58;
    if(d<20){
        a=2400;
        bandera=1;
        if(d<10)bandera2=1;
        
    }
        CCP1CON=0b00000100;
    TMR1=0;
    CCP1IF=0;
    LATD=0b00100000;    
    LATD2=1;
    __delay_us(10);
    LATD2=0;
    while(ECHO==0);
    TMR1ON=1;
    while(CCP1IF==0);
    TMR1ON=0;
    d=CCPR1/58;
    if(d<20){
        a=3600;
        bandera=1;
        if(d<10)bandera2=1;
        
    }
    CCP1CON=0b00000100;
    TMR1=0;
    CCP1IF=0;
    LATD=0b00110000;    
    LATD3=1;
    __delay_us(10);
    LATD3=0;
    while(ECHO==0);
    TMR1ON=1;
    while(CCP1IF==0);
    TMR1ON=0;
    d=CCPR1/58;
    if(d<20){
        a=4000;
        bandera=1;
        if(d<10)bandera2=1;
        
    }
    
    if(bandera2==1)Motor2=1;
    else Motor2=0;
    if (bandera==0)a=3000;
    Transmitir(d/100 + 48);
    Transmitir((d%100)/10 + 48);
    Transmitir(d%10 + 48);
    Transmitir(10);

    __delay_ms(500);    
  }  
}
void Transmitir(unsigned char BufferT){
  while(TRMT==0);
  TXREG=BufferT;  
}
void interrupt ISR(void){
    if(TMR3IF==1){
        TMR3IF=0;
        TMR3=25536;
        CCPR2=25536+a;
        CCP2CON=0b00001001;
    }
    if(RBIF==1){
        if(PORTB!=0b11110000){
            if(Bloqueo==1){
                //generate_tone(Buzzer,1000,20000 );
                Alarma=1;
                while(Bloqueo==1){
                    __delay_us(500);
                    Buzzer=1;
                   
                    __delay_us(250);
                    __delay_us(250);
                    
                    Buzzer=0;
                           
                    
                }
                
            }
                
            
            
            
        
          
            
        }    RBIF=0;

    }
}
unsigned char LeerSensor(void){

        
    
    /*
    while(ECHO==1){
      __delay_us(10);
      t++;
    }
    d=t/5.8;*/

    
    
}