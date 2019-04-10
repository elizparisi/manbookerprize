class CommandLineInterface
  
  def call
    greeting
    menu
    goodbye
  end
    
  def greeting  
    puts "********** Welcome to the Man Booker Prize 2018! *********"
  end
  
  def menu
    puts "What would you like to do? Type winner to see the winning book, type nominees to see the nominated books or type exit to leave."
    
    input = nil
    while input != "exit" 
      input = gets.strip.downcase
      case input 
        when "winner"
          list_winner
        when "nominees"
          list_nominees
        else
          puts "I don't understand, please try again."
      end
    end
  end
  
  def list_winner
    puts "Here is the winner:"
    @book = Book.winner
  end
  
  def list_nominees
    puts "Here are the nominees:"
    @book = Book.nominees
  end
  
  def goodbye
    puts "Thank you for visiting! See you again soon."
  end
end