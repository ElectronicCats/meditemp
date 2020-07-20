#include <LiquidCrystal_I2C.h>
#include <Wire.h>
#include <Adafruit_MLX90614.h>

// defines pins numbers of ultrasonic
const int trigPin = 2;
const int echoPin = 5;
// defines variables of ultrasonic
long duration;
int distance;
// set the LCD number of columns and rows
int lcdColumns = 16;
int lcdRows = 2;
// set LCD address, number of columns and rows
// if you don't know your display address, run an I2C scanner sketch
LiquidCrystal_I2C lcd(0x3F, lcdColumns, lcdRows); 
// Instanciar objeto (TEMP)
Adafruit_MLX90614 termometroIR = Adafruit_MLX90614();
 
void setup() 
{
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input
  Serial.begin(9600); // Starts the serial communication
  // initialize LCD
  lcd.init();
  // turn on LCD backlight                      
  lcd.backlight();
  // Iniciar termómetro infrarrojo con Arduino
  termometroIR.begin();
}

void loop() 
{
   temperatura() ;
   
}

 void ultrasonido() 
    {
    // Clears the trigPin
    digitalWrite(trigPin, LOW);
    delayMicroseconds(2);
    // Sets the trigPin on HIGH state for 10 micro seconds
    digitalWrite(trigPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin, LOW);
    // Reads the echoPin, returns the sound wave travel time in microseconds
    duration = pulseIn(echoPin, HIGH);
    // Calculating the distance
    distance= duration*0.034/2;
    // Prints the distance on the Serial Monitor
    Serial.print("Distance: ");
    Serial.println(distance);
    delay(200);  
  return;
    }
  void pantalla() 
    {
      // initialize LCD
  lcd.init();
  // turn on LCD backlight                      
  lcd.backlight();
  // set cursor to first column, first row
  lcd.setCursor(0, 0);
  // print message
  lcd.print("No seas mamon");
  delay(1000);
  // clears the display to print new message
  //lcd.clear();
  // set cursor to first column, second row
  lcd.setCursor(0,1);
  lcd.print("Alan...");
  delay(1000);
  lcd.setCursor(0, 0);
  lcd.clear(); 
  lcd.setCursor(0,1);
  lcd.clear(); 
  lcd.setCursor(0, 0);
  // print message
  lcd.print("Si ya sabes");
  delay(1000);
  lcd.setCursor(0,1);
  lcd.print("Como son...");
  delay(1000);
  lcd.setCursor(0, 0);
  lcd.clear(); 
  lcd.setCursor(0,1);
  lcd.clear(); 
  return;
    }
 void temperatura()
 {
  // Obtener temperaturas grados Celsius
  float temperaturaAmbiente = termometroIR.readAmbientTempC();
  float temperaturaObjeto = termometroIR.readObjectTempC();
 
  // Mostrar información
  Serial.print("Temp. ambiente => ");
  Serial.print(temperaturaAmbiente);
  Serial.println("ºC");
 
  Serial.print("Temp. objeto => ");
  Serial.print(temperaturaObjeto);
  Serial.println("ºC");
  
  delay(2000);
 
  // Si quieres mostrar la información en grados Fahrenheit utiliza las funciones
  // readAmbientTempF() para temperatura ambiente
  // readObjectTempF() para temperatura del objeto
 }
 
 
