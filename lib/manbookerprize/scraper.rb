class Scraper
  
  site = "https://themanbookerprize.com/fiction/backlist/2018"
  
  def self.scrape_winner(site)
    page = Nokogiri::HTML(open(site))
    winner = page.css("div.col-md-4.col-xs-12")
    winning_title = winner.css("h3.title").text 
    Book.new(winning_title)
  end 
  
  def self.scrape_shortlist(site)
    page = Nokogiri::HTML(open(site))
    page.css("div.carousel-container h4.title").each do |title|
      Book.new(title.text)
    end
  end
end