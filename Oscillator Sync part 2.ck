//SinOsc lfo => blackhole;
//TriOsc osc => Pan2 panner => dac;

//0.5 => lfo.freq;
//440 => int oscFreq => osc.freq;
//0.3 => float oscGain => osc.gain;

//while (true)
//{
    //lfo.last() => panner.pan;
    //1::ms => now;
//}

SinOsc lfo2 => blackhole;
SinOsc lfo => blackhole;
SqrOsc osc => LPF filter => dac;

0.5 => lfo2.freq;
1 => lfo.freq;
55 => float oscFreq => osc.freq;
0.1 => float oscGain => osc.gain;
500 => float filterFreq => filter.gain;
3 => filter.Q;

while (true)
{
    ((lfo2.last()+1)*5) => lfo.freq;
    filterFreq + ((lfo.last())*filterFreq) => filter.freq;
    1::ms => now;
}
