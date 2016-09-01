# Scale Filter MIDI Effect Devices for Ableton

This is a script that generates Ableton MIDI Effect Devices that allow you to filter the piano roll in various keys and modes.

##[Download the *Scale.Filters.zip* here](https://github.com/michaelphines/scale-filter-midi-effect-device/releases)
###Only tested on Live 9.6.2.

![device demo](https://s3.amazonaws.com/michaelphines-shared-files/Scale+Filters.gif)

## Quirks

- If the device is on, you won't be able to play non-diatonic notes. However folding and note names work just fine when the device is disabled. I can't figure out how to get it to start disabled by default.
- It generates lots of theoretical scales like Fb major, but names the notes like A and C# instead of Bbb and Db. This is what Ableton does anyway, though.
- If you do have non-diatonic notes in your MIDI already, those will not disappear.
- I added a marker before each of the diatonic note names, so you can distinguish them. This has the unintended, but possibly pleasant side effect of making notes in the piano roll also have a marker when they're diatonic, but this only works when folded.
- It's mostly untested, but *please do* report bugs!

##Scales generated:
^(In all keys including theoretical ones like Fb)

- Diminished
- Dorian
- Enigmatic
- Harmonic Minor
- Locrian
- Lydian
- Major (Ionian)
- Major Neapolitan
- Major Pentatonic
- Melodic Minor
- Minor Hungarian
- Minor Major Pentatonic
- Minor Neapolitan
- Minor Pentatonic
- Mixolydian
- Natural Minor (Aeolian)
- Phrygian
- Whole Tone


## Implementation details

I didn't have the patience to do it by hand, so I decided to try to write a script. A quick peak at the file header of the Ableton device revealed it was just a gziped XML file, and I found a Ruby gem that generates scales, so I was off to the races. It didn't work at first, but it appears that Ableton cares strangely a lot about the tabbing and whitespace in the XML, which frankly terrifies me. I hope I'm wrong about that.

The generator is [on Github](https://github.com/michaelphines/scale-filter-midi-effect-device) so feel free to create pull requests, issues, forks, etc. I'm too excited to start using it to work much more on it right now.
