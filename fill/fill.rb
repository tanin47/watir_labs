require "../config"

browser = Browser.new
browser.goto("file://#{File.expand_path('../index.html', __FILE__)}")


iframe = browser.element_by_xpath("//*[@id='cke_about_content']//iframe")

iframe.focus
iframe.send_keys [:control, "a"], :backspace
iframe.send_keys("Hello CKEditor")
iframe.send_keys(:tab)


textbox = browser.element_by_xpath("//*[@id='test_textbox']")

textbox.focus
textbox.send_keys [:control, "a"], :backspace
textbox.send_keys("Hello Textbox")
textbox.send_keys(:tab)


textarea = browser.element_by_xpath("//*[@id='test_textarea']")

textarea.focus
textarea.send_keys [:control, "a"], :backspace
textarea.send_keys("Hello Textarea")
textarea.send_keys(:tab)

