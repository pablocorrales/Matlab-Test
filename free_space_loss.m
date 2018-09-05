% Free Space Path Loss (FSPL)
% Script to obtain the FSPL
clc
clear all
close all 

set(0,'defaultlinelinewidth',2);    % Set linewidth

f = linspace(1,3,1000)*1e9;         % Freq. Range
c = 3e8;                            % Speed of Light
d = [0.4 1 2 3 4 5 6]';                 % Distance Vector

fspl = 4*pi*d*f/c;                  % Free Space Path Loss

fig1 = figure()
plot(f/1e9,mag2db(fspl)); grid on
xlabel('Freq. [GHz]'); ylabel('FSPL [dB]')

C = regexp(sprintf('d = %d m#', d), '#', 'split');  % Create string and the separate it on the '#' symbol
C(end) = [];                                        % Clear last element (The previous step creates an extra element on the legend)
legend(C,'Location','NorthWest')
