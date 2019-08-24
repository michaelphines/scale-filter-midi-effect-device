require './scale_filter_note_interval'

class ScaleFilterNote < Note
  def general_minor_scale
    intervals = ScaleFilterNoteInterval.general_minor_set
    Scale.new(self, intervals)
  end
end