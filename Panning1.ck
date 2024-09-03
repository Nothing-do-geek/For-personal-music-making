TriOsc osc => ADSR env1 => Pan2 pan => dac;

0 => pan.pan;


0.5::second => dur beat;
(0.5::ms, beat/8, 0, 1::ms) => env1.set;
0.10 => osc.gain;


[0,4,7] @=> int major[];
[0,3,7] @=> int minor[];

60 => int offset;
int position;

for(0 =>  int i; i < 4; i++)
{
    for(-1.0 =>  float j; j < 1.0; 0.1 +=> j)
    {
        j => pan.pan;
        Std.mtof(minor[0] + offset + position) => osc.freq;
        1 => env1.keyOn;
        beat / 4 => now;
    }
}