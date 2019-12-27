class Ship
  
  attr_accessor :name, :type, :booty
  
  SHIPS = []
  
  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
    @@all << self
  end
  
  def self.all
    SHIPS
  end
end