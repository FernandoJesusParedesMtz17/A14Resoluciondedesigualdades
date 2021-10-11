%Octave script
%Title          : Inecuaciones en Octave
%Descripcion    : Script de Octave que realizara el codigo que resuelva inecuaciones y graficas
%Author         : Fernando Jesús Paredes Martinez, Adrian Lovera Bombela 
%Date           : 202123322, 202123498
%version        : 1.0
%Usage          : <https://www.octave.org/missing.html>

pkg load symbolic
syms x
%Inecuaciones de primer grado
disp("...:::Inecuaciones de Primer Grado:::...");
disp(x+7<14);
solve(x+7<14)


x=[-20:7]
y=x-7
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20);
title( "El intervalo es: (-oo,18)" )



%Inecuaciones de Segundo Grado
syms x
disp("...:::Inecuaciones de Segundo grado:::...");
disp(x^2+7*x<13);
solve(x^2+7*x<13)
y=7*x-13
ezplot((x)^2,y)

x=[-20:18]
y=x-18
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 18],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20);
title( "El intervalo es: (-oo,18)" ) 



%Inecuaciones de Valor Absoluto
syms x
disp("...:::Inecuaciones de Valor Absoluto:::...")
disp("|x-9|>2")
solve(abs(x-9)>2)


x=[-20:7]
x=[11:100]
y=x-7
plot(x,y,'ro-',"markersize",10,"linewidth",3)
hold on
plot([-20 7.8],[0,0],'k+-',"linewidth",5,"markersize",12)
plot([0 0],[-15 15],'k-',"linewidth",5)
plot(x,sign(y)*5,'bs-',"markersize",12)
xlabel("Eje X","fontsize",20)
title( "El intervalo es: (-oo,7) y (11,oo)")
