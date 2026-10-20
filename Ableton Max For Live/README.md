# Ableton Max for Live device: br.freqshift.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.freqshift.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.freqshift](https://github.com/guaguanco127/br.freqshift)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Credits](#Credits)  

## <a name="About"></a>About

A stereo frequency shifter for Max/MSP, built in gen~, with a feedback delay. A frequency shifter moves every partial of a sound by the same number of Hz. That is not a pitch shift: shifting up 100 Hz turns 200 Hz into 300 Hz but 1000 Hz into 1100 Hz, so the partials stop lining up as harmonics. Voices, trumpet and drums turn bell-like, metallic or robotic; a shift of a few Hz gives slow phasing and beating instead.

The feedback delay sends each echo back through the shifter, so every repeat moves one more step: up and up, or down and down, a barber-pole spiral of echoes.

A compact stereo audio effect with seven controls, all Live parameters, so you can automate them or map them to a controller. One parameter bank, **Freqshift**: Shift, Sideband, Delay, Feedback, Mix, Mix Mode, On/Off. The device's On/Off fades over 20 ms and pauses the DSP; Live's own device switch bypasses it completely. There is no output gain: use Live's mixer.

**Up or Down:** Sideband picks which way the shift goes. Shift itself never goes negative (0.000001 to 2000 Hz), so Sideband alone sets the direction. Switching Sideband crossfades over 10 ms.

**Safe feedback:** Feedback goes up to 0.99 and still can't run away: every pass through the loop goes through a soft limiter (tanh), a DC blocker and a gentle 12 kHz lowpass, so the echoes always fade in the end. Even full-scale noise at maximum Feedback and the shortest Delay stays bounded. If anything ever turns into not-a-number, the loop resets to silence instead of screaming.

**Click-free:** Shift glides over 2 ms and the oscillator never jumps, so moving it never clicks. A new Delay time crossfades over 50 ms from the old echo to the new one (no pitch bend, no scrubbing). Mix, Sideband, On/Off and Mix Mode all crossfade.

**Any sample rate:** the shifter splits the sound into two copies 90 degrees apart (a Hilbert transform) with two chains of six allpass filters. Their coefficients were fitted for this patch so the split holds from 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz: the unwanted sideband stays below -52 dB.

**On/Off and Mix Mode:** Off fades over 20 ms, then pauses (no CPU) and clears the echoes, so turning On starts clean. Mix Mode sets what you hear when Off: Thru = the dry signal, Aux = silence, for an aux send.

**Shift:** 0.000001 to 2000 Hz. How far every partial moves, in Hz. Never negative: Sideband sets the direction. Small values (0.5 - 5 Hz) give phasing and beating; 20 - 50 Hz with Feedback gives the barber-pole; 100 Hz and up gives bells and metal. Default 0.1.

**Sideband:** Down (0) or Up (1), which way the shift goes. Default Up.

**Delay:** 1 to 2000 ms between echoes. Each echo goes through the shifter again, so it moves one more step. The dial is curved, so most of its travel covers the shorter times. Very short times (5 - 20 ms) with Feedback give a ringing, metallic resonance. Default 250.

**Feedback:** 0 to 0.99. How much of each echo goes back in. 0 = a plain frequency shifter, no echoes. Default 0.

**Mix:** 0 to 1. 0 = dry, 0.5 = equal, 1 = all wet (equal-power crossfade). Mixing dry and shifted copies makes beating and phasing; use 1 for the plain shifted sound. Default 1.

**Mix Mode:** what you hear when Off. Thru (0) = the dry signal passes; Aux (1) = silence, for use on an aux send. Default Thru.

**On/Off:** Off fades over 20 ms, then pauses and clears the echoes. Default on.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing.

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.freqshift.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  

4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.

## <a name="Credits"></a>Credits

The allpass-pair Hilbert transform follows Olli Niemitalo's structure (two chains of allpass filters 90 degrees apart); the coefficients here were refitted to cover 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz. Frequency shifting as taught in Alessandro Cipriani and Maurizio Giri, Electronic Music and Sound Design Vol. 3. DSP, feedback loop and patches by Brian Riordan.
