function [x, unit] = goodunit(x, base_unit, interpreter)

if nargin < 3
    interpreter = '';
end

if strcmpi(type, 'tex')
    prefixes = {'y', 'z', 'a', 'f', 'p', 'n', '\mu', 'm', '', 'k', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y'};
else
    prefixes = {'y', 'z', 'a', 'f', 'p', 'n', 'u', 'm', '', 'k', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y'};
end

unit_counter = 9;

x_max = max(x);

if (abs(x_max) < 1) & (abs(x_max) >= 1e-24)
    while (abs(x_max) < 1)
        x_max = x_max*1e3;
        x = x*1e3;
        unit_counter = unit_counter-1;
    end
elseif (abs(x_max) >= 1e3) & (abs(x_max) < 1e24)
    while (abs(x_max) >= 1e3)
        x_max = x_max*1e-3;
        x = x*1e-3;
        unit_counter = unit_counter+1;
    end
end

if x == 0
    unit = '';
else
    unit = [prefixes{unit_counter} base_unit];
end
