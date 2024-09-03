SqrOsc osc => LPF filter => dac => WvOut waveOut => blackhole;

880  => filter.freq;
440 => osc.freq;
3 => filter.Q;
0.2 => osc.gain;
while(true)
{
    for (2000 => int i; i > 0; i--)
    {
        i => filter.freq;
        0.5::ms => now;
    }
}