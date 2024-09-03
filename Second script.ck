1::second / 2 => dur beat;

SinOsc osc => dac;

400 => osc.freq;
0.9 => osc.gain;

beat => now;

500 => osc.freq;

beat => now;

600 => osc.freq;

beat / 2 => now;

300 => osc.freq;
0.9 => osc.gain;

beat / 2 => now;

400 => osc.freq;
0.5 => osc.gain;

beat * 2 => now;