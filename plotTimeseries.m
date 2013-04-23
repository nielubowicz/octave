function [date value] = plotTimeseries(filename, fmt)
%PLOTTIMESERIES Plot a timeseries, (date value), and add date 
%  information to x-axis tickmarks.
%
%  To use: 
%       filename - string filename you wish to plot (can be relative or absolute)
%       fmt - the format of the 2-tuple (date value) - C standard
%  Returns:
%        date series
%        value series

[date value] = textread(filename, fmt);
plot(value);

xt=get(gca,'xtick');
if (xt(end) > length(date))
    xt=get(gca,'xtick')(1:end-1);

xt(1)=1;
set(gca,'xtick', xt);
set(gca,'xticklabel', date(get(gca,'xtick')));

title(filename);
end
