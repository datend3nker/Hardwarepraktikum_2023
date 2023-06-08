// Include WiFi libs
#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>
#include "website.h"

// Add your wifi credentials here
const char* ssid     = "Salomea";
const char* password = "B310721.";

// Webserver on port 80 (standard http port)
WiFiServer server(80);

// Variable to store incoiming http request
String request;

// Name of the device (can be used as DNS query in browser)
#define DEVICE_NAME "HWPRobo"

// Pins of motor
#define LMF D1
#define LMR D2
#define RMF D5
#define RMR D6
const uint8_t motorPins[] = {LMF, LMR, RMF, RMR};

// Us pins
#define US1_PIN D8
#define US2_PIN D7
#define US3_PIN D3
const uint8_t usPins[] = {US1_PIN, US2_PIN, US3_PIN};

long duration;
float distance;


void setup() {
  // Init serial
  Serial.begin(9600);

  // Init motor pins as output
  for (size_t i = 0; i < sizeof(motorPins)/sizeof(motorPins[0]); i++) {
    pinMode(motorPins[i], OUTPUT);
    digitalWrite(motorPins[i], LOW);
  }
  
  // Comment if you want that the ESP creates an AP
  // Connect to wifi
  Serial.print("Connecting to ");
  Serial.println(ssid);
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  // Die IP vom Webserver auf dem seriellen Monitor ausgeben
  Serial.println("");
  Serial.println("WiFi connected.");
  Serial.println("IP Adress: ");
  Serial.println(WiFi.localIP());

  // Uncomment if you want that the ESP creates an AP
  /*
  // You can remove the password parameter if you want the AP to be open. 
  WiFi.softAP(ssid, password);
  IPAddress myIP = WiFi.softAPIP();
  Serial.print("AP IP address: ");
  Serial.println(myIP);
  */

  // mDNS name resolving
  if (MDNS.begin(DEVICE_NAME)) {
    Serial.println("MDNS started");
  } else {
    Serial.println("Error starting MDNS");
  }

  // Start webserver
  server.begin();
}

void loop() {
  // Handle clients
  handleClient();
  // Update MDNS
  MDNS.update();
}

void setMotor(bool forward, uint16_t speed, char motor) {
  if (motor == 'L') {
    if (forward) {
        // move foward
      analogWrite(LMF, speed);
      analogWrite(LMR, 0);
    } else if (!forward) {
        // move backwards
      analogWrite(LMF, 0);
      analogWrite(LMR, speed);
    } else {
      analogWrite(LMF, speed);
      analogWrite(RMR, speed);
      } 
  } else if (motor == 'R') {
    if (forward){
        // move foward
      analogWrite(RMF, speed);
      analogWrite(RMR, 0);
    } else if (!forward) {
        // move backwards
      analogWrite(RMF, 0);
      analogWrite(RMR, speed);
    } else {
      analogWrite(RMF, speed);
      analogWrite(LMR, speed);
      }
  }
}

void drive(bool flag, uint16_t tm, uint16_t sp) {
  if (flag) {
    setMotor(flag, sp, 'L');
    setMotor(flag, sp, 'R');
  } else if (!flag) {
    setMotor(flag, sp, 'L');
    setMotor(flag, sp, 'R');
  }
  delay(tm);
  setMotor(flag, 0, 'L');
  setMotor(flag, 0, 'R');
  setMotor(!flag, 0, 'L');
  setMotor(!flag, 0, 'R');
}

void turn(bool flag, uint16_t tm, uint16_t sp) {
  if (flag) {
    setMotor(flag, sp, 'L');
    setMotor(!flag, sp, 'R');
  } else if (!flag) {
    setMotor(flag, sp, 'L');
    setMotor(!flag, sp, 'R');
  }
  delay(tm);
  setMotor(flag, 0, 'L');
  setMotor(flag, 0, 'R');
  setMotor(!flag, 0, 'L');
  setMotor(!flag, 0, 'R');
}

float measureDistance(uint8_t TPin) {
  pinMode(TPin, OUTPUT);
  digitalWrite(TPin, LOW);
  delayMicroseconds(2);
  digitalWrite(TPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(TPin, LOW);
  pinMode(TPin, INPUT);

  // no object detected after 30 milisec
  duration = pulseIn(TPin, HIGH);
  if (duration == 0) {
    return -1;
  }
  // duration - time, 0.034 - Wavespeed, /2 while only hinweg oder ruckweg
  distance = duration * 0.034 / 2;
  return distance / 100;
}

void handleClient() {
  // Check if a client has connected
  WiFiClient client = server.available();
  if (!client)  {  
    return;  
  }
  // Read the first line of the request (we just need this line)
  request = client.readStringUntil('\r');

  // Print request to serial
  Serial.print("request: ");
  Serial.println(request); 

  // print header message
  client.println(header);
  // Check for corresponding get message
  if (request.indexOf("GET /pollUS") >= 0) {
    Serial.println("Polling");
    float us1, us2, us3 = -1;
    // Insert your code here

    us1 = measureDistance(US1_PIN);
    us2 = measureDistance(US2_PIN);
    us3 = measureDistance(US3_PIN);


    // Send US data to website
    client.printf("{\"US1\":%.2f, \"US2\":%.2f, \"US3\":%.2f}", us1, us2, us3);
    
  // Insert code to make the d-pad control working
  // Start by pressing the buttons of the d pad and watch the serial console to see how the get requests look.
  } else if (request.indexOf("GET /back") >= 0){
    drive(true,300,500);
  } else  if (request.indexOf("GET /up") >= 0){
    drive(false,300,500);
  } else if (request.indexOf("GET /left") >= 0){
    turn(true,300,500);
  } else if (request.indexOf("GET /right") >= 0){
    turn(false,300,500);
  } else {
    // Finish HTTP-Request with a newline (thats cruical)
    client.flush();
    client.println(page);
    client.println();
  }
}

