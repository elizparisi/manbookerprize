class Book
  
  @@all = []
  attr_accessor :title, :details
  
  def initialize(title, details)
    @title = title
    @details = details
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def nominees
    
  end
  
  def winner
    
  end
end

