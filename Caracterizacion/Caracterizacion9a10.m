fig=figure('Name','Autor Nicolas David Pastran','NumberTitle','off','Color','white','position',[250 200 850 400]);       
cla('reset')
datose = csvread("DatosExperimentales/EscalonV9a10.csv",2,0);
t=(datose(:,1)')+512;
v1=(datose(:,2)');
v2=(datose(:,3)');
s(1)=subplot(2,1,1);
plot(t,v2,'Color','blue');grid on;
xlabel('Tiempo [S]');
ylabel('Voltios [V]');
ax = gca;
ax.XLim = [0 400]; 
s(2)=subplot(2,1,2);
plot(t,100*v1,'Color','red');grid on;
xlabel('Tiempo [S]');
ylabel('Temperatura [�C]');
ax = gca;
ax.YLim = [45, 51]; 
ax.XLim = [0 400];
title(s(1),'Escalon de 9V a 10V','FontSize',13,'Color', 'blue');
title(s(2),'Respuesta de la planta','FontSize',13,'Color', 'blue');
