Phasor lfo => blackhole;
TriOsc osc => dac;

440 => int oscFreq => osc.freq;
0.5 => float oscGain => osc.gain;
10 => lfo.freq;

while(true)
{
    oscGain * lfo.last() => osc.gain;
    1::ms => now;
}