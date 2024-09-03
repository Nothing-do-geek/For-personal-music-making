SinOsc osc => dac;
0.25 => osc.gain;

[ 440, 660, 880, 1320] @=> int frequencies[];

for(0 => int i; i < frequencies.cap(); i++)
{
    frequencies[i] => osc.freq;
    200::ms => now;
}