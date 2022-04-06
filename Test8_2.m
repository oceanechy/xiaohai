x=[1 2 3 4 5];  %生成 x(n)
h=[1 2 1 2];  %生成 h(n)

N0=5;   %卷积点数
N1=6;
N2=8;
N3=10;
 
y2=fftconv(x,h,N0);  %用函数 circonv 计算 N0 点循环卷积
ny2=[0:length(y2)-1];
y3=fftconv(x,h,N1);  %用函数 circonv 计算 N1 点循环卷积
ny3=[0:length(y3)-1];
y4=fftconv(x,h,N2);  %用函数 circonv 计算 N1 点循环卷积
ny4=[0:length(y4)-1];
y5=fftconv(x,h,N3);  %用函数 circonv 计算 N1 点循环卷积
ny5=[0:length(y5)-1];
 
%conv线性卷积
subplot(3,2,1);
stem(ny1,y1,'.k');
title('conv线性卷积');
xlabel('n');
ylabel('y1(n)');
grid on;

%定义法线性卷积
subplot(3,2,2);
stem(ny,y,'.k');
title('定义线性卷积');
xlabel('n');
ylabel('y(n)');
grid on;

 
%圆周卷积
subplot(3,2,3);
stem(ny2,y2,'.k');
title('5点循环卷积');
xlabel('n');
ylabel('y2(n)');
grid on;
 
subplot(3,2,4);
stem(ny3,y3,'.k');
title('6点循环卷积');
xlabel('n');
ylabel('y3(n)');
grid on;
 
subplot(3,2,5);
stem(ny4,y4,'.k');
title('8点循环卷积');
xlabel('n');
ylabel('y4(n)');
grid on;
 
subplot(3,2,6);
stem(ny5,y5,'.k');
title('10点循环卷积');
xlabel('n');
ylabel('y5(n)');
grid on;