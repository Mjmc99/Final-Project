require 'rubygems'
require 'twilio-ruby'
require_relative 'scraper.rb'

class TextingData
def initialize 
   account_sid = 'ACe330ba04d082392df4cb3511dcb72cec' 
   auth_token = '2008ea097713e401a16c54029058da82'
  @client = Twilio::REST::Client.new 'ACed3ed813257f8acedfce46a695216257', 'cb1dd832eda91ea39319fe6827f1650b'
end 

def send(texters)

  @client.account.messages.create(
    :from => "+14342605034", 
    :to => "+16179477754",  
    :body => "The temperature in boston today is: #{texters.weather}º, Duncans most resent video is: #{texters.youtubeDuncan}, and last but certainly not quietest Simon and Lewis's most resent video is: #{texters.youtubeLaS}"
  )
puts "Your message has been sent"

end

end





# def send(texters)

#   @client.account.messages.create(
#     :from => "+14342605034", 
#     :to => "+16179477754", 
#     :body => "The temperature in boston today is #{texters.weather}, Duncans most resent video is #{texters.youtubeDuncan}, and last but not quietest Simon and Lewis's most resent video is #{texters.youtubeLaS}."
#   )
# puts "Your message has been sent"

# end

# end
# #Create a file called "Rakefile"
#   #require twillio.rb
#   #require final....
#   # your_texter = TextingData.new
#   #define a rake task
#     #define a new instance of your twillio class
#     #send your text







