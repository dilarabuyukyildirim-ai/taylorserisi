clear all;clc;close all;
% x değerini al
x = input('x degerini giriniz: ');

% terim sayısını al
n = input('seride kac terim olacak: ');

% taylor sonucu
toplam = 0;

for i =0:n-1

    % her terimi hesapla
    terim = (x^i)/factorial(i);
    % toplama ekle
    toplam = toplam + terim;
end
% gerçek değer 
gercek = exp(x);

% sonuçları yazdır
disp('Taylor Sonucu:')
disp(toplam)

disp('Gercek exp(x):')
disp(gercek)

% Grafik

x_deger = -1:0.1:1;
y1 = exp(x_deger);
y2 = zeros(size(x_deger));

for j = 1:length(x_deger)

   toplam = 0;

   for i=0:n-1
       toplam = toplam + (x_deger(j)^i)/factorial(i);
   end
   y2(j) = toplam;
end

plot(x_deger,y1,'b')
hold on
plot(x_deger,y2,'r--')

xlabel('x')
ylabel('f(x)')
legend('Gercek e^x','Taylor')
grid on


    