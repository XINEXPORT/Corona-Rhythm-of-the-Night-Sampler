// www.piratepad.net/sc2018
// Hi
// PLAYBUF

~buf1 = Buffer.read(s,"C:/Users/Christine/Desktop/Music 4 Mix/Corona (Peace Edit).wav"); // one sound file
~buf2 = Buffer.read(s,"C:/Users/Christine/Desktop/SOUND FX/fan1.wav" ); // another sound file

// Playback:
// {Pan2.ar(PlayBuf.ar(1, ~buf1, rate: 1))}.play; // number of channels and buffer
{PlayBuf.ar(1, ~buf1, rate: BufRateScale.kr(~buf1))}.play;

// regular playback
{Pan2.ar (PlayBuf.ar(1, ~buf1, rate: BufRateScale.kr(~buf1)) * 4 )}.play;

{PlayBuf.ar(2, ~buf1)}.play;

// Get some info about the files:
[~buf1.bufnum, ~buf1.numChannels, ~buf1.path, ~buf1.numFrames];
[~buf2.bufnum, ~buf2.numChannels, ~buf2.path, ~buf2.numFrames];

// Changing playback speed with 'rate'
{Pan2.ar (PlayBuf.ar(numChannels: 1, bufnum: ~buf1, rate: 2, loop: 1))}.play; //rate up
{Pan2.ar (PlayBuf.ar(1, ~buf1, 0.5, loop: 1))}.play; // play at half the speed
{Pan2.ar (PlayBuf.ar(1, ~buf1, Line.kr(0.5, 1, 10), loop: 1))}.play; // speeding up
{Pan2.ar (PlayBuf.ar(1, ~buf1, MouseY.kr(0.5, 3), loop: 1))}.play; // mouse control

{Pan2.ar (PlayBuf.ar(numChannels: 1, bufnum: ~buf2, rate: 2, loop: 1))}.play; //rate up
{Pan2.ar (PlayBuf.ar.(1, ~buf2, 0.5, loop: 1))}.play; // play at half the speed
{Pan2.ar (PlayBuf.ar(1, ~buf2, Line.kr(0.5, 2, 10), loop: 1))}.play; // speeding up
{Pan2.ar (PlayBuf.ar(1, ~buf2, MouseY.kr(1, 3), loop: 1))}.play; // mouse control

// Changing direction (reverse)
{Pan2.ar (PlayBuf.ar(1, ~buf1, -1, loop: 1))}.play; // reverse sound
{PlayBuf.ar(1, ~buf1, -0.5 * MouseX.kr (1,2)) loop: 1)}.play; // play at half the speed AND reversed

{Pan2.ar (PlayBuf.ar(1, ~buf1, MouseY.kr(0.5, 3) loop: 1))}.play; // mouse control