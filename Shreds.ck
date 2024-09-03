TriOsc oscl => ADSR envl => Pan2 pan => dac;

0.2 => oscl.gain;
1::second => dur beat;
(1::ms,beat / 4,0,1::ms) => envl.set;

65 => int offset;
10 => int position;
0 => pan.pan;

while(true)
{
    for (0 => int i; i < 2; i++)
    {
        Std.mtof((12*1) + offset + position) => oscl.freq;
        1 => envl.keyOn;
        beat => now;
    }
}