%{
psy.Grating (manual) # Populated by the stim program

-> psy.Condition
---
direction                   : decimal(4,1)                  # 0-360 degrees
spatial_freq                : decimal(4,2)                  # cycles/degree
temp_freq                   : decimal(4,2)                  # Hz
pre_blank=0                 : float                         # (s) blank period preceding trials
luminance                   : float                         # cd/m^2 mean
contrast                    : float                         # Michelson contrast 0-1
aperture_radius=0           : float                         # in units of half-diagonal, 0=no aperture
aperture_x=0                : float                         # aperture x coordinate, in units of half-diagonal, 0 = center
aperture_y=0                : float                         # aperture y coordinate, in units of half-diagonal, 0 = center
grating                     : enum('sqr','sin')             # sinusoidal or square, etc.
init_phase                  : float                         # 0..1
trial_duration              : float                         # s, does not include pre_blank duration
phase2_fraction=0           : float                         # fraction of trial spent in phase 2
phase2_temp_freq=0          : float                         # (Hz)
%}


classdef Grating < dj.Relvar
    properties(Constant)
        table = dj.Table('psy.Grating')
    end
    
    methods
        function self = Grating(varargin)
            self.restrict(varargin)
        end
    end
end
