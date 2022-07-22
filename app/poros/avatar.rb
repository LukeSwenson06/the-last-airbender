class Avatar
  attr_reader :allies,
              :enemies,
              :photo,
              :name,
              :affiliation
  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @name = data[:name]
    @affiliation = data[:affiliation]

  end
end
