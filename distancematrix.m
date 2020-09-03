clc
clear all
arduinoObj = arduino('COM3','Mega2560','Libraries','Ultrasonic');

ultrasonicObj1 = ultrasonic(arduinoObj,'D2','D3');
ultrasonicObj2 = ultrasonic(arduinoObj,'D4','D5');
ultrasonicObj3 = ultrasonic(arduinoObj,'D6','D7');
ultrasonicObj4 = ultrasonic(arduinoObj,'D8','D9');

distance=zeros(500,8);
timerVal=tic;
for i=1:500
    
    distance(i,1)=toc(timerVal);
    distance(i,2) = (readDistance(ultrasonicObj1)*1000);
    distance(i,3)=toc(timerVal);
    distance(i,4) = (readDistance(ultrasonicObj2)*1000);
    distance(i,5)=toc(timerVal);
    distance(i,6) = (readDistance(ultrasonicObj3)*1000);
    distance(i,7)=toc(timerVal);
    distance(i,8) = (readDistance(ultrasonicObj4)*1000);
end
