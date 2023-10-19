require_relative './store'

class Cloud
  attr_reader :volume

  include Store

  def initialize(volume)
    @volume = volume
  end
end
