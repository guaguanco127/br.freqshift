# Max/MSP Abstractions:  
## br.freqshift.1.1

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.freqshift.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.freqshift](https://github.com/guaguanco127/br.freqshift)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  

## <a name="About"></a>About

A stereo frequency shifter for Max/MSP, built in gen~, with a feedback delay. A frequency shifter moves every partial of a sound by the same number of Hz. That is not a pitch shift: shifting up 100 Hz turns 200 Hz into 300 Hz but 1000 Hz into 1100 Hz, so the partials stop lining up as harmonics. Voices, trumpet and drums turn bell-like, metallic or robotic; a shift of a few Hz gives slow phasing and beating instead.

The feedback delay sends each echo back through the shifter, so every repeat moves one more step: up and up, or down and down, a barber-pole spiral of echoes.

**Up or Down:** Sideband picks which way the shift goes. Shift itself never goes negative (0.000001 to 2000 Hz), so Sideband alone sets the direction. Switching Sideband crossfades over 10 ms.

**Safe feedback:** Feedback goes up to 0.99 and still can't run away: every pass through the loop goes through a soft limiter (tanh), a DC blocker and a gentle 12 kHz lowpass, so the echoes always fade in the end. Even full-scale noise at maximum Feedback and the shortest Delay stays bounded. If anything ever turns into not-a-number, the loop resets to silence instead of screaming.

**Click-free:** Shift glides over 2 ms and the oscillator never jumps, so moving it never clicks. A new Delay time crossfades over 50 ms from the old echo to the new one (no pitch bend, no scrubbing). Mix, Sideband, On/Off and Mix Mode all crossfade.

**Any sample rate:** the shifter splits the sound into two copies 90 degrees apart (a Hilbert transform) with two chains of six allpass filters. Their coefficients were fitted for this patch so the split holds from 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz: the unwanted sideband stays below -52 dB.

**On/Off and Mix Mode:** Off fades over 20 ms, then pauses (no CPU) and clears the echoes, so turning On starts clean. Mix Mode sets what you hear when Off: Thru = the dry signal, Aux = silence, for an aux send.

**Two files:** br.freqshift.1.1 is the plain object: every Float control inlet takes signals as well as numbers, so an LFO can sweep Shift (or anything else). br.freqshift.ui.1.1 adds the panel of dials for a [bpatcher], plus a State outlet.

### Controls

**Shift:** 0.000001 to 2000 Hz. How far every partial moves, in Hz. Never negative: Sideband sets the direction. The plain object's Shift inlet also takes -2000 to 2000, for signals that sweep through zero (the example's B). Small values (0.5 - 5 Hz) give phasing and beating; 20 - 50 Hz with Feedback gives the barber-pole; 100 Hz and up gives bells and metal. Default 0.1.

**Sideband:** Down (0) or Up (1), which way the shift goes. Default Up.

**Delay:** 1 to 2000 ms between echoes. Each echo goes through the shifter again, so it moves one more step. The dial is curved, so most of its travel covers the shorter times. Very short times (5 - 20 ms) with Feedback give a ringing, metallic resonance. Default 250.

**Feedback:** 0 to 0.99. How much of each echo goes back in. 0 = a plain frequency shifter, no echoes. Default 0.

**Mix:** 0 to 1. 0 = dry, 0.5 = equal, 1 = all wet (equal-power crossfade). Mixing dry and shifted copies makes beating and phasing; use 1 for the plain shifted sound. Default 1.

**Mix Mode:** what you hear when Off. Thru (0) = the dry signal passes; Aux (1) = silence, for use on an aux send. Default Thru.

**On/Off:** Off fades over 20 ms, then pauses and clears the echoes. Default on.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy br.freqshift.1.1.maxpat and br.freqshift.ui.1.1.maxpat into the same folder as the Max patch you are using (the .ui file uses the plain object).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select br.freqshift.ui.1.1.maxpat. Size the bpatcher to 206 x 78 to show all of the controls.

4. For the plain object, create an object with its name (br.freqshift.1.1, do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the same order on both files. On the .ui file, sending a value to an inlet moves its on-screen control too, so the display always matches the sound. On the plain object, the Float inlets (Shift, Delay, Feedback, Mix) also take signals. Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal |  |  |
| 2 | Right In | Signal |  |  |
| 3 | Shift | Float | 0.000001 - 2000 Hz (plain object: -2000 - 2000) | 0.1 |
| 4 | Sideband | Int | 0 Down / 1 Up | 1 |
| 5 | Delay | Float | 1 - 2000 ms | 250 |
| 6 | Feedback | Float | 0 - 0.99 | 0 |
| 7 | Mix | Float | 0 - 1 (0 dry, 1 all wet) | 1 |
| 8 | Mix Mode | Int | 0 Thru / 1 Aux | 0 |
| 9 | On/Off | Int | 0 / 1 | 1 |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | State (.ui only): the settings as named messages, see [State outlet](#State) | Message |

**Ideas:**
- Barber-pole echoes: Shift 20 - 40 Hz, Delay 200 - 400 ms, Feedback 0.8 - 0.9. Try Down too.
- Bells and metal from a voice or trumpet: Shift 100 - 300 Hz, Feedback 0.
- Ringing resonance: a very short Delay (5 - 15 ms) with Feedback 0.8 and Shift 100 - 200.
- Slow phasing: Shift 0.5 - 2 Hz, Mix 0.5.
- Modulation: a slow sine or an LFO into Shift (the example's B does this), through [br.scale](https://github.com/guaguanco127/br.scale).

## <a name="State"></a>State outlet

The last outlet of the .ui file (State) sends the current settings as named messages the moment they change, for example `shift 25.`, `delay 250.`, `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route shift sideband delay feedback mix mode on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| shift | Float | 0.000001 to 2000 Hz |
| sideband | Int | 0 Down / 1 Up |
| delay | Float | 1 to 2000 ms |
| feedback | Float | 0 to 0.99 |
| mix | Float | 0 to 1 |
| mode | Int | 0 Thru / 1 Aux |
| on | Int | 0 / 1 |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The plain object has no State outlet: whatever drives it already knows the values.

## <a name="Example"></a>Example Patch

Open _br.freqshift.example.1.1.maxpat (keep it in the same folder as both abstraction files). Pick a source in the menu: drum loop, Anton (both ship with Max), a drone, or your mic. It starts Off. Both outputs start muted at -70 dB: turn on the audio, then raise one slider slowly.

- **A, the version with dials:** click the recipes, which set Shift, Sideband, Delay, Feedback and Mix through A's inlets: barber-pole up, barber-pole down, bell, slow phasing, metal ring, and back to the defaults.
- **B, the plain object:** Shift swept slowly between -400 and +400 Hz by a sine (a signal into a control inlet), with Delay 180 ms and Feedback 0.7.
- **p "State outlet":** move A's controls and watch each value come out by name through [route].

## <a name="Credits"></a>Credits

The allpass-pair Hilbert transform follows Olli Niemitalo's structure (two chains of allpass filters 90 degrees apart); the coefficients here were refitted to cover 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz. Frequency shifting as taught in Alessandro Cipriani and Maurizio Giri, Electronic Music and Sound Design Vol. 3. DSP, feedback loop and patches by Brian Riordan.
