require "../config"

browser = Browser.new
browser.goto("file://#{File.expand_path('../index.html', __FILE__)}")

count = 1
while true

  browser.execute_script("$('#count').html('#{count}')")

  browser.element(:id=>"anchor").click
  browser.element(:id=>"span").click
  browser.element(:id=>"div").click
  browser.element(:id=>"button").click
  browser.element(:id=>"input").click
  
  count+=1
  sleep(0.1)
  
end