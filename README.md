# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live

## br.freqshift.1.0

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.freqshift.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.freqshift](https://github.com/guaguanco127/br.freqshift)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.freqshift/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP  
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.freqshift/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.freqshift/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite  

## <a name="About"></a>About

A stereo frequency shifter for Max/MSP, built in gen~, with a feedback delay. A frequency shifter moves every partial of a sound by the same number of Hz. That is not a pitch shift: shifting up 100 Hz turns 200 Hz into 300 Hz but 1000 Hz into 1100 Hz, so the partials stop lining up as harmonics. Voices, trumpet and drums turn bell-like, metallic or robotic; a shift of a few Hz gives slow phasing and beating instead.

The feedback delay sends each echo back through the shifter, so every repeat moves one more step: up and up, or down and down, a barber-pole spiral of echoes.

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

**Up or Down:** Sideband picks which way the shift goes. Shift itself is bipolar, so with Up a negative Shift goes down too. Switching Sideband crossfades over 10 ms.

**Safe feedback:** Feedback goes up to 0.99 and still can't run away: every pass through the loop goes through a soft limiter (tanh), a DC blocker and a gentle 12 kHz lowpass, so the echoes always fade in the end. Even full-scale noise at maximum Feedback and the shortest Delay stays bounded. If anything ever turns into not-a-number, the loop resets to silence instead of screaming.

**Click-free:** Shift glides over 2 ms and the oscillator never jumps, so moving it never clicks. A new Delay time crossfades over 50 ms from the old echo to the new one (no pitch bend, no scrubbing). Mix, Sideband, On/Off and Mix Mode all crossfade.

**Any sample rate:** the shifter splits the sound into two copies 90 degrees apart (a Hilbert transform) with two chains of six allpass filters. Their coefficients were fitted for this patch so the split holds from 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz: the unwanted sideband stays below -52 dB.

**On/Off and Mix Mode:** Off fades over 20 ms, then pauses (no CPU) and clears the echoes, so turning On starts clean. Mix Mode sets what you hear when Off: Thru = the dry signal, Aux = silence, for an aux send.

**Shift:** -2000 to 2000 Hz. How far every partial moves, in Hz. With Sideband Up, + moves up and - moves down. Small values (0.5 - 5 Hz) give phasing and beating; 20 - 50 Hz with Feedback gives the barber-pole; 100 Hz and up gives bells and metal. Default 0.

**Sideband:** Down (0) or Up (1), which way the shift goes. Default Up.

**Delay:** 1 to 2000 ms between echoes. Each echo goes through the shifter again, so it moves one more step. The dial is curved, so most of its travel covers the shorter times. Very short times (5 - 20 ms) with Feedback give a ringing, metallic resonance. Default 250.

**Feedback:** 0 to 0.99. How much of each echo goes back in. 0 = a plain frequency shifter, no echoes. Default 0.

**Mix:** 0 to 1. 0 = dry, 0.5 = equal, 1 = all wet (equal-power crossfade). Mixing dry and shifted copies makes beating and phasing; use 1 for the plain shifted sound. Default 1.

**Mix Mode:** what you hear when Off. Thru (0) = the dry signal passes; Aux (1) = silence, for use on an aux send. Default Thru.

**On/Off:** Off fades over 20 ms, then pauses and clears the echoes. Default on.

## <a name="How"></a>How it works

Each channel is split into two copies 90 degrees apart (a Hilbert transform from two chains of six second-order allpass filters). One oscillator makes a cosine and a sine at the Shift frequency; re x cos - im x sin keeps only the upper sideband, re x cos + im x sin only the lower one. The input to the shifter is the dry signal plus Feedback x the delay output, and the shifted signal goes through the DC blocker, the lowpass and tanh into the delay, so every echo is shifted again. Left and right use the same oscillator and settings, with their own filters and delay lines. Fully Off, nothing is computed.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.freqshift.1.0 | No UI. The plain object to patch with |
| br.freqshift.ui.1.0 | With dials for Shift, Delay, Feedback and Mix and On/Off, Thru/Aux and Down/Up buttons, ready for a [bpatcher] (206 x 78) |
| _br.freqshift.example.1.0 | Example patch: open this first. Pick a source (drum loop, voice, a drone or your mic) |
| br.freqshift.rnbo.1.0 | RNBO patch, to export a Max external or a VST/AU plugin |
| br.freqshift.1.0.amxd | Max for Live audio effect |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Credits"></a>Credits

The allpass-pair Hilbert transform follows Olli Niemitalo's structure (two chains of allpass filters 90 degrees apart); the coefficients here were refitted to cover 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz. Frequency shifting as taught in Alessandro Cipriani and Maurizio Giri, Electronic Music and Sound Design Vol. 3. DSP, feedback loop and patches by Brian Riordan.
