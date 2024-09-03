SinOsc osc => ADSR env1 => dac;
env1 => Delay delay1 => dac;
delay1 => delay1;

0,5::second => dur beat;
(0.5::ms, beat/8, 0, 0.5::ms) => env1.set;
0.10 => osc.gain;

beat => delay1.max;
beat /4 => delay1.delay;
0.5 => delay1.gain;

[0,4,7] @=> int major[];
[0,4,7] @=> int minor[];

60 => int offset;
int position;

for(0 =>  int i; i < 4; i++)
{
    for(0 =>  int j; j < minor.cap(); j++)
    {
        Std.mtof(minor[j] + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat => now;
    }
}
