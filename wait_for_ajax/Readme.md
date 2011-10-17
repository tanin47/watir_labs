Waiting for AJAX requests to complete
=========================

This project shows you how to wait for an ajax request.

It requires you to use jQuery to fire every Ajax request.
I cannot find any elegant way to hook into AJAX life cycle.

jQuery (or prototype.js) is the best option here. jQuery has a property 'active', which tracks the number of active AJAX requests.
The code to wait for AJAX requests to finish is:

```ruby
while !(browser.execute_script "return jQuery.active == 0");end
```

And another thing that I have added is to wait for a new page to load (if there is any) after an ajax request is finished.
In case of there is a redirection immediately after an AJAX request.

Watir-WebDriver already supports it with:

```ruby
browser.wait(120)
```

To run it, please:

1. Install all required gems by ```bundle install```
2. Run _wait.rb_ with Ruby 1.9

For more information, visit http://tanin.nanakorn.com/watir/wait_for_ajax
