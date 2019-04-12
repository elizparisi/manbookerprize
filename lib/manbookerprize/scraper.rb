class Scraper
  
  #a winner has a title
  #a winner has an author and details
  
  #a nominee has a title
  #a nominee has an author and details
  
  def self.scrape_winner
    doc = Nokogiri::HTML(open("https://themanbookerprize.com/fiction/backlist/2018"))
    
    winner = self.new
    winner.title = doc.search("h3.title a").text
    winner.author = doc.search("div.field-item.even p strong").text.gsub("Chair of judges Kwame Anthony Appiah comments:","").strip
    winner.details = doc.search("div.field-name-body.field-type-text-with-summary.field-label-hidden").text
    winner
  end 
  
  def self.scrape_shortlist
    doc = Nokogiri::HTML(open("https://themanbookerprize.com/fiction/backlist/2018"))
    page.css("div.carousel-container h4.title").each do |title|
      Book.new(title.text)
    end
  end
end