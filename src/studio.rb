require_relative './store'

class ArtecStudio
  attr_reader :version

  include Store

  def initialize(version)
    @version = version
  end

  def description
    "Artec Studio Professional #{@version}"
  end

  def to_s
    "Artec Studio Professional #{@version}"
  end
end
