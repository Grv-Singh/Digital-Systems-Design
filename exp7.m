
function [ output_args ] = Untitled( input_args )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t = [0:.1:2*pi]; 			    %Times at which to sample the sine function
sig = sin(t); 			            % Original signal, a sine wave
partition = [-1:.2:1]; 		            % Length 11, to represent 12 intervals
codebook = [-1.2:.2:1];	 	            % Length 12, one entry for each interval
[index,quants]=quantiz(sig,partition,codebook); 			% Quantize.
plot(t,sig,'x',t,quants,'.')
axis([-.2 7 -1.2 1.2])
t = [0:.1:2*pi]; 			    %Times at which to sample the sine function
sig = sin(t); 			            % Original signal, a sine wave
partition = [-1:.2:1]; 		            % Length 11, to represent 12 intervals
codebook = [-1.2:.2:1];	 	            % Length 12, one entry for each interval
[index,quants]=quantiz(sig,partition,codebook); 			% Quantize.
plot(t,sig,'x',t,quants,'.')
axis([-.2 7 -1.2 1.2])

end

