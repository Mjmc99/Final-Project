require "nokogiri"
require "open-uri"

class Texter


  def initialize
   @doc = Nokogiri::HTML(open('http://www.weather.com/weather/today/Cambridge+MA+USMA0066:1:US'))  
    @weather = @doc.css("div.wx-data-part").css("div.wx-first").css(".wx-temperature").children.first.text
    @las = Nokogiri::HTML(open('http://www.yogscast.com/browse/family/tag/lewis-simon/page/0'))  
   @youtubeLaS = @las.css("#latest > ul > li:nth-child(1) > figure > a > figcaption > h2").text
    @cod = Nokogiri::HTML(open('http://www.yogscast.com/browse/family/tag/duncan/page/0')) 
    # @youtubeDuncan = @cod.css("#latest > ul > li:nth-child(1) > figcaption > a href")
 
   
  end

  def weather
    @weather
  end

  def youtubeDuncan
    @youtubeDuncan
  end 
  def youtubeLaS
    @youtubeLaS
  end 

end

 # texters = Texter.new
 # puts texters.youtubeDuncan
 # puts texters.weather

 # puts texters.youtubeLaS
