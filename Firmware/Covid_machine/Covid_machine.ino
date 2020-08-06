#include <LiquidCrystal_I2C.h>
#include <Wire.h>
#include <Adafruit_MLX90614.h>
#include "Wire.h"
#include "FS.h" // Libraries for SD card
#include "SD.h"
#include <SPI.h>
int counter=0;

#define DS3231_I2C_ADDRESS 0x68

int counter = 0;
//defines temperature global variables
float temperaturaObjeto;

// defines pins numbers of ultrasonic
const int trigPin = 25;
const int echoPin = 26;
String memoria = "";
String tiempo = "";
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


void createDir(fs::FS &fs, const char * path);
void removeDir(fs::FS &fs, const char * path);
void readFile(fs::FS &fs, const char * path);
void writeFile(fs::FS &fs, const char * path, const char * message);
void appendFile(fs::FS &fs, const char * path, const char * message);
void renameFile(fs::FS &fs, const char * path1, const char * path2);
void deleteFile(fs::FS &fs, const char * path);
void testFileIO(fs::FS &fs, const char * path);
byte decToBcd(byte val);
byte bcdToDec(byte val);
void setDS3231time(byte second, byte minute, byte hour, byte dayOfWeek, byte dayOfMonth, byte month, byte year);
void readDS3231time(byte *second, byte *minute, byte *hour, byte *dayOfWeek, byte *dayOfMonth, byte *month, byte *year);

void setup()
{
  deleteFile(SD, "/Cliente.csv");
  Wire.begin();
  Serial.begin(9600);
  // set the initial time here:
  // DS3231 seconds, minutes, hours, day, date, month, year
  setDS3231time(1, 6, 13, 2, 3, 8, 20); // Cambiar esto siempre que se inicialice
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input
  pinMode(12, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(33, OUTPUT);
  // initialize LCD
  lcd.init();
  // turn on LCD backlight
  lcd.backlight();
  // Iniciar termómetro infrarrojo con Arduino
  termometroIR.begin();
  pantalla();

  if (!SD.begin()) {
    Serial.println("Card Mount Failed");
    return;
  }
  uint8_t cardType = SD.cardType();

  if (cardType == CARD_NONE) {
    Serial.println("No SD card attached");
    return;
  }

  Serial.print("SD Card Type: ");
  if (cardType == CARD_MMC) {
    Serial.println("MMC");
  } else if (cardType == CARD_SD) {
    Serial.println("SDSC");
  } else if (cardType == CARD_SDHC) {
    Serial.println("SDHC");
  } else {
    Serial.println("UNKNOWN");
  }
  appendFile(SD, "/Cliente.csv", "Temperatura,Hora,Fecha,Val,\n");
  /*
      listDir(SD, "/", 0);
      createDir(SD, "/mydir");
      listDir(SD, "/", 0);
      removeDir(SD, "/mydir");
      listDir(SD, "/", 2);
      writeFile(SD, "/Cliente.csv", "Cliente ");
      appendFile(SD, "/Cliente.csv", "World!\n");
      readFile(SD, "/Cliente.csv");
      deleteFile(SD, "/foo.csv");
      renameFile(SD, "/Cliente.csv", "/foo.csv");
      readFile(SD, "/foo.csv");
      testFileIO(SD, "/test.csv");
      Serial.printf("Total space: %lluMB\n", SD.totalBytes() / (1024 * 1024));
      Serial.printf("Used space: %lluMB\n", SD.usedBytes() / (1024 * 1024));
  */

}


void loop()
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
  distance = duration * 0.034 / 2;
  // Prints the distance on the Serial Monitor
  Serial.print("Distance: ");
  Serial.println(distance);
  delay(200);
  if (distance <= 7)
  {
    counter ++;
    temperatura();
  }

}


void pantalla()
{
  // initialize LCD
  lcd.init();
  // turn on LCD backlight
  lcd.backlight();
  // set cursor to first column, first row
  lcd.setCursor(0, 1);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.clear();
  // print message
  lcd.print("Bienvenido");
  delay(1500);
  // clears the display to print new message
  lcd.clear();
  // set cursor to first column, second row
  lcd.print("Coloque sufrente");
  //delay(1000);
  lcd.setCursor(0, 1);
  lcd.print("abajo por favor");
  delay(1000);
  return;
}

void pantalla2()
{
  lcd.setCursor(0, 1);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.clear();
  lcd.print("Temp ");
  lcd.print(temperaturaObjeto);
  lcd.setCursor(0, 1);
  lcd.print("Pase usted");
  delay(1000);
  return;
}

void pantalla3()
{
  lcd.setCursor(0, 1);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.clear();
  lcd.print("Temp ");
  lcd.print(temperaturaObjeto);
  lcd.setCursor(0, 1);
  lcd.print("NO PASE");
  delay(1000);
  return;
}

void temperatura()
{
  // Obtener temperaturas grados Celsius
  float temperaturaAmbiente = termometroIR.readAmbientTempC();
  temperaturaObjeto = termometroIR.readObjectTempC();
  byte second, minute, hour, dayOfWeek, dayOfMonth, month, year;
  // retrieve data from DS3231
  readDS3231time(&second, &minute, &hour, &dayOfWeek, &dayOfMonth, &month, &year);
  // Mostrar información

  Serial.print("Temp. ambiente => ");
  Serial.print(temperaturaAmbiente);
  Serial.println("ºC");

  Serial.print("Temp. objeto => ");
  Serial.print(temperaturaObjeto);
  Serial.println("ºC");

  memoria += String(temperaturaObjeto);
  memoria += ",";
  tiempo += String(hour);
  tiempo += ":";
  if (minute < 10)
  {
    tiempo += "0";
  }
  tiempo += String(minute);
  tiempo += ":";
  if (second < 10)
  {
    tiempo += "0";
  }
  tiempo += String(second);
  tiempo += ",";
  if (dayOfMonth < 10)
  {
    tiempo += "0";
  }
  tiempo += String(dayOfMonth);
  tiempo += "/";
  if (month < 10)
  {
    tiempo += "0";
  }
  tiempo += String(month);
  tiempo += "/";
  tiempo += String(year);
  tiempo += ",";
  char datos[memoria.length() + 1];
  memoria.toCharArray(datos, memoria.length());
  char datost[tiempo.length() + 1];
  tiempo.toCharArray(datost, tiempo.length());
  appendFile(SD, "/Cliente.csv", datos);
  appendFile(SD, "/Cliente.csv", "C ");
  appendFile(SD, "/Cliente.csv", ",");
  appendFile(SD, "/Cliente.csv", datost);
  appendFile(SD, "/Cliente.csv", ",");
  memoria = "";
  tiempo = "";

  if (23 <= temperaturaObjeto && temperaturaObjeto <= 30)
  {
    digitalWrite(12, HIGH);   // turn the LED on (HIGH is the voltage level)
    pantalla2();
    delay(500);                       // wait for a second
    digitalWrite(12, LOW);    // turn the LED off by making the voltage LOW
    appendFile(SD, "/Cliente.csv", "Si");
  }
  else
  {
    digitalWrite(14, HIGH);   // turn the LED on (HIGH is the voltage level)
    digitalWrite(33, HIGH);
    pantalla3();
    delay(500);                       // wait for a second
    digitalWrite(14, LOW);    // turn the LED off by making the voltage LOW
    digitalWrite(33, LOW);
    appendFile(SD, "/Cliente.csv", "No");
  }
  appendFile(SD, "/Cliente.csv", "\n");
  readFile(SD, "/Cliente.csv");
  pantalla();
  return;

  // Si quieres mostrar la información en grados Fahrenheit utiliza las funciones
  // readAmbientTempF() para temperatura ambiente
  // readObjectTempF() para temperatura del objeto
}
void listDir(fs::FS &fs, const char * dirname, uint8_t levels) {
  Serial.printf("Listing directory: %s\n", dirname);

  File root = fs.open(dirname);
  if (!root) {
    Serial.println("Failed to open directory");
    return;
  }
  if (!root.isDirectory()) {
    Serial.println("Not a directory");
    return;
  }

  File file = root.openNextFile();
  while (file) {
    if (file.isDirectory()) {
      Serial.print("  DIR : ");
      Serial.println(file.name());
      if (levels) {
        listDir(fs, file.name(), levels - 1);
      }
    } else {
      Serial.print("  FILE: ");
      Serial.print(file.name());
      Serial.print("  SIZE: ");
      Serial.println(file.size());
    }
    file = root.openNextFile();
  }
}

void createDir(fs::FS &fs, const char * path) {
  Serial.printf("Creating Dir: %s\n", path);
  if (fs.mkdir(path)) {
    Serial.println("Dir created");
  } else {
    Serial.println("mkdir failed");
  }
}

void removeDir(fs::FS &fs, const char * path) {
  Serial.printf("Removing Dir: %s\n", path);
  if (fs.rmdir(path)) {
    Serial.println("Dir removed");
  } else {
    Serial.println("rmdir failed");
  }
}

void readFile(fs::FS &fs, const char * path) {
  Serial.printf("Reading file: %s\n", path);

  File file = fs.open(path);
  if (!file) {
    Serial.println("Failed to open file for reading");
    return;
  }

  Serial.print("Read from file: ");
  while (file.available()) {
    Serial.write(file.read());
  }
  file.close();
}

void writeFile(fs::FS &fs, const char * path, const char * message) {
  Serial.printf("Writing file: %s\n", path);

  File file = fs.open(path, FILE_WRITE);
  if (!file) {
    Serial.println("Failed to open file for writing");
    return;
  }
  if (file.print(message)) {
    Serial.println("File written");
  } else {
    Serial.println("Write failed");
  }
  file.close();
}

void appendFile(fs::FS &fs, const char * path, const char * message) {
  Serial.printf("Appending to file: %s\n", path);

  File file = fs.open(path, FILE_APPEND);
  if (!file) {
    Serial.println("Failed to open file for appending");
    return;
  }
  if (file.print(message)) {
    Serial.println("Message appended");
  } else {
    Serial.println("Append failed");
  }
  file.close();
}

void renameFile(fs::FS &fs, const char * path1, const char * path2) {
  Serial.printf("Renaming file %s to %s\n", path1, path2);
  if (fs.rename(path1, path2)) {
    Serial.println("File renamed");
  } else {
    Serial.println("Rename failed");
  }
}

void deleteFile(fs::FS &fs, const char * path) {
  Serial.printf("Deleting file: %s\n", path);
  if (fs.remove(path)) {
    Serial.println("File deleted");
  } else {
    Serial.println("Delete failed");
  }
}

void testFileIO(fs::FS &fs, const char * path) {
  File file = fs.open(path);
  static uint8_t buf[512];
  size_t len = 0;
  uint32_t start = millis();
  uint32_t end = start;
  if (file) {
    len = file.size();
    size_t flen = len;
    start = millis();
    while (len) {
      size_t toRead = len;
      if (toRead > 512) {
        toRead = 512;
      }
      file.read(buf, toRead);
      len -= toRead;
    }
    end = millis() - start;
    Serial.printf("%u bytes read for %u ms\n", flen, end);
    file.close();
  } else {
    Serial.println("Failed to open file for reading");
  }


  file = fs.open(path, FILE_WRITE);
  if (!file) {
    Serial.println("Failed to open file for writing");
    return;
  }

  size_t i;
  start = millis();
  for (i = 0; i < 2048; i++) {
    file.write(buf, 512);
  }
  end = millis() - start;
  Serial.printf("%u bytes written for %u ms\n", 2048 * 512, end);
  file.close();
}
byte decToBcd(byte val) {
  return ( (val / 10 * 16) + (val % 10) );
}
// Convert binary coded decimal to normal decimal numbers
byte bcdToDec(byte val) {

  return ( (val / 16 * 10) + (val % 16) );
}
void setDS3231time(byte second, byte minute, byte hour, byte dayOfWeek, byte dayOfMonth, byte month, byte year)
{
  // sets time and date data to DS3231
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); // set next input to start at the seconds register
  Wire.write(decToBcd(second)); // set seconds
  Wire.write(decToBcd(minute)); // set minutes
  Wire.write(decToBcd(hour)); // set hours
  Wire.write(decToBcd(dayOfWeek)); // set day of week (1=Sunday, 7=Saturday)
  Wire.write(decToBcd(dayOfMonth)); // set date (1 to 31)
  Wire.write(decToBcd(month)); // set month
  Wire.write(decToBcd(year)); // set year (0 to 99)
  Wire.endTransmission();
}
void readDS3231time(byte *second, byte *minute, byte *hour, byte *dayOfWeek, byte *dayOfMonth, byte *month, byte *year) {
  Wire.beginTransmission(DS3231_I2C_ADDRESS);
  Wire.write(0); // set DS3231 register pointer to 00h
  Wire.endTransmission();
  Wire.requestFrom(DS3231_I2C_ADDRESS, 7);
  // request seven bytes of data from DS3231 starting from register 00h
  *second = bcdToDec(Wire.read() & 0x7f);
  *minute = bcdToDec(Wire.read());
  *hour = bcdToDec(Wire.read() & 0x3f);
  *dayOfWeek = bcdToDec(Wire.read());
  *dayOfMonth = bcdToDec(Wire.read());
  *month = bcdToDec(Wire.read());
  *year = bcdToDec(Wire.read());
}
