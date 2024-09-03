TriOsc lfo => blackhole;
TriOsc osc => dac;

440 => int oscFreq => osc.freq;
0.5 => osc.gain;
6 => lfo.freq;

while(true)
{
    oscFreq + (oscFreq * lfo.last() / 40) => osc.freq;
    1::ms => now;
}