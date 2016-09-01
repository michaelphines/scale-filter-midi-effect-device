require 'fileutils'
require 'zlib'
require 'shellwords'
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
    def flat_note_name(note)
      Note.flat_twelve_tones[note.value % 12]
    end

    def note_label(note_number)
      note = Note.new(note_number)
      octave = (note_number/12) - 2
      "\u2666 #{note.name}#{octave}"
    end

    def generate_filter(path, filter_name, scale)
      Zlib::GzipWriter.open(File.join(path, "#{filter_name}.adg")) do |gz|
        notes_and_values = []
        scale_note_values = scale.note_values.map { |note_number| note_number % 12}
        127.times.map do |note_number|
          notes_and_values << [note_label(note_number), note_number] if scale_note_values.include?(note_number % 12)
        end
        gz.write ScaleFilterDevice.new(filter_name, notes_and_values).xml
      end
    end

    def generate_all
      FileUtils.rm_rf("output")
      SCALE_NAMES.each do |scale_identifier, scale_name|
        path = "./output/Scale Filters/#{scale_name}"
        FileUtils.mkdir_p(path)
        12.times do |note_number|
          root_note = Note.new(note_number)
          scale = root_note.send("#{scale_identifier}_scale")
          generate_filter(path, "#{root_note.name} #{scale_name} Scale Filter", scale)
          generate_filter(path, "#{flat_note_name(root_note)} #{scale_name} Scale Filter", scale) unless root_note.name == flat_note_name(root_note)
        end
      end
    end
  end
end
