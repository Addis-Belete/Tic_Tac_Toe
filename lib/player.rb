class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.validate_name(str)
    str.length > 3
  end

  def self.validate_icons(icon)
    icon.length == 1
  end
end
