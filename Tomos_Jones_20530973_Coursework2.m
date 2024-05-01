% Tomos_Jones_2053097
% egytj6@nottingham.ac.uk


%% PRELIMINARY TASK - ARDUINO AND GIT INSTALLATION [10 MARKKS]
clear
a = arduino('COM3','Uno'); % Connecting the arduino
n = 1;
while n > 0
    writeDigitalPin(a,'D7',0);
    pause(0.5);
    writeDigitalPin(a,'D7',1); % LEDs come on
end

%% TASK 1 - READ TEMPERATURE DATA, PLOT, AND WRITE TO A LOG FILE [20 MARKS]
clear
a = arduino()

time = 1:60;
duration = 60;
t = 1:duration;
V_zero = 500;
T_C = 10;

for t = 1:duration;
    volt = readvoltage(a,'A5') % Reads volatage
    temp(t) = ((volt)-(V_zero/1000))/(T_C/1000);
    pause(1); % pauses for 1 second
end
max_temp = max(temp); % This will be the max temperature
min_temp = min(temp);
avrg_temp = avrg(temp);

plot(time,temp)
xlabel('line, s')
ylabel('Temperature')
tittle('temp vs time')
% axis([0,600,0,100]);

% Display Header and Footer
header=sprintf(Data logging initiated-01/05/24\nlocation-Nottingham\n\n')
footer=sprintf('Data logging terminated')

% Display Data from Table
data_1str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(1), Temperature(1));
data_2str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(2), Temperature(60));
data_3str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(3), Temperature(120));
data_4str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(4), Temperature(180));
data_5str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(5), Temperature(240));
data_6str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(6), Temperature(300));
data_7str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(7), Temperature(360));
data_8str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(8), Temperature(420));
data_9str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(9), Temperature(480));
data_10str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(10), Temperature(540));
data_11Str=sprintf('Minuit\t\t %d\nTemperature\t %.2fC\n\n',Minute(11), Temperature(600));
data_12str=sprintf('Max temp\t\t %.dfC\nMax temp\t\t %.dfC\nAverage temp\t\t %.2f\n\n', temp_max,temp_






fileid = fopen(cabin_tempertature.txt, 'w')

%% TASK 2 - LED TEMPERATURE MONITORING DEVICE IMPLEMENTATION [25 MARKS]
% flow chart
V_zero = 500
T_C = 10
volt_task2 = readvoltage(a,'A5');
temp_task2 = ((volt+1000)-V_zero)/T_C;

plot(t,temp_task)
xlabel('Time,s')
ylabel('Temperature, degree Celcius');
title('Temperature vs time')

while true
    fprintf('Temperture: %.2f\n', temp_task2)
    if temp_task2 >= 18 && temp_task2 <== 24 
        writeDigitalPin(a,'D1',1)
        pause(1),
    elseif temp_task2 < 18
        writeDigitalPin(a,'D2',1)
        pause(0.5);
        writeDigitalPin(a,'D2'0);
        pause(0.5)
    else
        writeDigitalPin(a,'D3',1);
        pause(0.25)
        writeDigitalPin(a,'D3',0)
        pause(0.25);
        writeDigitalPin(a,'D3',1)
        pause(0.25)
        writeDigitalPin(a,'D3',0)
        pause(0.25)
    end
end

%% TASK 3 - ALGORITHMS – TEMPERATURE PREDICTION [25 MARKS]

% Insert answers here


%% TASK 4 - REFLECTIVE STATEMENT [5 MARKS]

% Insert answers here