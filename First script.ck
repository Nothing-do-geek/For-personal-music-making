<<<"My first sound">>>;

TriOsc osc => dac => WvOut waveOut => blackhole;

"test.wav" => waveOut.wavFilename;

440 => osc.freq;
0.5 => osc.gain;

1::second => now;