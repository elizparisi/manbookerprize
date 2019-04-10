class Book
  
  attr_accessor :title, :details
  @@all []
  
  def initialize(title, details)
    @title = title
    @details = details
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end