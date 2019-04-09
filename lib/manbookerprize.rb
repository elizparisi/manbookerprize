require_relative "manbookerprize/version"
require 'pry'
require 'nokogiri'
require 'open-uri'

module Manbookerprize
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "manbookerprize/cli"
require_relative "manbookerprize/scraper"
require_relative "manbookerprize/books"
