class Scanner
  attr_reader :name, :serial, :accuracy, :weigth

  def initialize(name, serial, accuracy, weigth)
    @serial = serial
    @accuracy = accuracy
    @weigth = weigth
    @name = name
  end

  def to_s
    "Scanner name: #{@name}, serial: #{@serial} accuracy: #{@accuracy}, weight: #{@weigth}"
  end
end

class Leo < Scanner
  LEO_NAME = 'Leo'.freeze
  LEO_ACCURACY = 100.freeze
  LEO_WEIGHT = 15.freeze

  def initialize(serial)
    super(LEO_NAME, "LE.#{serial}", LEO_ACCURACY, LEO_WEIGHT)
  end
end

class Eva < Scanner
  EVA_NAME = 'Eva'.freeze
  EVA_ACCURACY = 95.freeze
  EVA_WEIGHT = 10.freeze

  def initialize(serial)
    super(EVA_NAME, "EV.#{serial}", EVA_ACCURACY, EVA_WEIGHT)
  end

  def scan
    puts "Scanning with Eva"
  end
end

# puts Leo.new(123123123).to_s
