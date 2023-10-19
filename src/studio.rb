class ArtecStudio
  attr_reader :version

  def initialize(version)
    @version = version
  end

  def description
    "Artec Studio Professional #{@version}"
  end
end
