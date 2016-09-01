require './scale_filter_device'

class ScaleFilterGenerator
  SCALE_NAMES = {
     major:                  "Major (Ionian)",
     natural_minor:          "Natural Minor (Aeolian)",
     dorian:                 "Dorian",
     phrygian:               "Phrygian",
     lydian:                 "Lydian",
     mixolydian:             "Mixolydian",
     locrian:                "Locrian",
     harmonic_minor:         "Harmonic Minor",
     melodic_minor:          "Melodic Minor",
     whole_tone:             "Whole Tone",
     diminished:             "Diminished",
     major_pentatonic:       "Major Pentatonic",
     minor_pentatonic:       "Minor Pentatonic",
     minor_major_pentatonic: "Minor Major Pentatonic",
     enigmatic:              "Enigmatic",
     major_neapolitan:       "Major Neapolitan",
     minor_neapolitan:       "Minor Neapolitan",
     minor_hungarian:        "Minor Hungarian"
  }

  class << self
    def generate_all
      puts ScaleFilterDevice.new("My Device", a: 1, b: 3).xml
    end
  end
end
