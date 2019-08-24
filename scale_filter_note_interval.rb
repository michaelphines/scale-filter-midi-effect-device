class ScaleFilterNoteInterval < NoteInterval
  def self.general_minor_set
    sets = NoteInterval::SCALE_SETS
    set = sets[:aeolian] | sets[:harmonic_minor] | sets[:melodic_minor]
    set.map { |n| NoteInterval.new(n) }
  end
end