# Max/MSP RNBO Patch for External or VST Creation: br.freqshift.rnbo.1.0  

By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.freqshift.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.freqshift](https://github.com/guaguanco127/br.freqshift)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)  
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A stereo frequency shifter with a feedback delay: every partial moves by the same number of Hz (bell-like, metallic), and each echo goes back through the shifter for barber-pole spirals. The feedback loop is soft-limited and filtered, so it can never run away, and every control crossfades or glides, so nothing clicks. Works at any sample rate.

Inside [rnbo~], the seven params (Shift, Sideband, Delay, Feedback, Mix, MixMode, OnOff) are the plugin parameters, with the same ranges and dial curves as the Max version. Inlets 3 to 9 set the same params, so the external has the same nine inlets as the abstraction. The gen~ code inside is the same as br.freqshift.1.0.

**Shift:** -2000 to 2000 Hz. With Sideband Up, + moves up and - moves down. Default 0.  
**Sideband:** Down / Up. Default Up.  
**Delay:** 1 to 2000 ms between echoes, curved dial. Default 250.  
**Feedback:** 0 to 0.99. Default 0 (no echoes).  
**Mix:** 0 = dry, 1 = all wet, equal power. Default 1.  
**MixMode:** Thru / Aux, what you hear when Off: the dry signal, or silence. Default Thru.  
**OnOff:** Off fades over 20 ms, then pauses and clears the echoes. Default on.  

Outlets: Left and Right. There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="VST"></a>What is a VST or AU Audio Plugin?

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.freqshift.rnbo.1.0.maxpat. Drop a sample of your own onto the [playlist~] and start it to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.freqshift.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.freqshift.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.freqshift.1.0~ in any patch. It has the same inlets as the abstraction, except that the seven controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer**

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.freqshift.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The seven parameters show up in your DAW for automation.

## <a name="Credits"></a>Credits

The allpass-pair Hilbert transform follows Olli Niemitalo's structure (two chains of allpass filters 90 degrees apart); the coefficients here were refitted to cover 20 Hz to 20 kHz at every sample rate from 44.1 to 192 kHz. Frequency shifting as taught in Alessandro Cipriani and Maurizio Giri, Electronic Music and Sound Design Vol. 3. DSP, feedback loop and patches by Brian Riordan.
