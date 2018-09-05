%% LaTex syntax in Matlab Figures
figure()
% Generate a sring with the LaTex syntax
str1 = '$$ e^{\frac{(t-\tau_d)^2}{(2\sigma^2)}}cos(2\pi f_0t) $$';
str2 = '$$ \int_{0}^{2} x^2\sin(x) dx $$';

% Use "text" command to write in the Matlab image, setting the interpreter to LaTex
% Coordinates use the same scale as the plot
text(0.2,0.1,str1,'Interpreter','latex')
text(0.2,0.5,str2,'Interpreter','latex')

% Add annotations to the image (geometric figures, arrows)
% Coordinates from 0 to 1, using the figure window as reference
annotation('arrow','X',[0.2,0.5],'Y',[0.2,0.5])