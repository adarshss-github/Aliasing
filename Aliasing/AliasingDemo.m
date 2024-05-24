t = 0:0.001:10 ;
t1 = 0:1/12:1 ;
w1 = 2*pi*10 ;
w2 = 2*pi*2 ;
y = sin(w1* t) ;
y1 = sin(w1*t1) ;
y2 = -sin(w2*t) ;
plot(t,y,'LineWidth',2,'Color',[0 0.4470 0.7410]);
hold on
plot(t,y2,'--','LineWidth',2,'Color',[0.6350 0.0780 0.1840])
hold on
scatter(t1,y1,'k','filled')
xlim([0 1])
%title('Demonstration of Aliasing','FontSize',18)
xlabel('Time [s]','FontSize',18)
ylabel('Amplitude of Sinusoids','FontSize',18)
legend('10 Hz','2 Hz','FontSize',12)
ax = gca;
ax.FontSize = 16; 

%The 10 Hz frequency is aliased to 2 Hz when you sample at 12 Hz 