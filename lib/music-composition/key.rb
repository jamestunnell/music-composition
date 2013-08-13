require 'set'

module Music
module Composition

class Key
  include Music::Composition::OrderedPitchClasses
  attr_reader :tonic_pc, :pitch_classes

  # @param [Fixnum] tonic_pc The pitch class of the primary tone of the key.
  # @param [Enumerable] related_pcs Pitch classes of the chord that goes along with the tonic.
  def initialize tonic_pc, related_pcs = []
    @tonic_pc = tonic_pc
    @pitch_classes = ([tonic_pc] + related_pcs).to_pc_ary.uniq
  end

  def to_normal_form
    NormalForm.new(@pitch_classes)
  end

  def to_prime_form
    PrimeForm.new(@pitch_classes)
  end

  def major?
    to_normal_form == NormalForm.new([tonic_pc, tonic_pc + 4, tonic_pc + 7])
  end

  def minor?
    to_normal_form == NormalForm.new([tonic_pc, tonic_pc + 3, tonic_pc + 7])
  end

  def to_s
    tonic_str = PitchClass.to_s(tonic_pc)

    if major?
      key_type_str = "maj"
    elsif minor?
      key_type_str = "min"
    else
      key_type_str = "?"
    end

    return "#{tonic_str} #{key_type_str}"
  end
end

end
end
