require "../config"
require File.expand_path("../server.rb", __FILE__)

Thread.new { TestServer.run! }

# wait for sinatra to start
while true
  res = Net::HTTP.start("localhost", 4567) {|http|
    http.get('/')
  }
  
  break if res.kind_of?(Net::HTTPSuccess)
    
  sleep(1)
end


browser = Browser.new
browser.goto("http://localhost:4567")

browser.element(:id=>"fire_ajax_button_a").click

while !(browser.execute_script "return jQuery.active == 0");sleep(0.1);end
browser.wait(120)

browser.element(:id=>"fire_ajax_button_b").click

while !(browser.execute_script "return jQuery.active == 0");sleep(0.1);end
browser.wait(120)

browser.element(:id=>"fire_ajax_button_a").click

while !(browser.execute_script "return jQuery.active == 0");sleep(0.1);end
browser.wait(120)

puts "This program happily ended."