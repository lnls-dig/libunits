function volt = dbm2volt(dbm, R)
%DBM2VOLT Convert dBm to Volt unit.
%
%   volt = dbm2volt(dbm, R)
%
%   Inputs:
%       dBm: signal expressed in power [dBm]
%       R: load impedance [ohm]
%
%   Outputs:
%       Volts: signal expressed in Volts [V]

%   Copyright (C) 2012 CNPEM
%   Licensed under GNU Lesser General Public License v3.0 (LGPL)
%
%   Revisions:
%       2013-05    Rafael Antonio Baron (LNLS/DIG) - Initial realease
volt = sqrt(1e-3.*R.*10.^(dbm/10));