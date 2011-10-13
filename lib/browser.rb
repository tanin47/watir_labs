# encoding: utf-8
require 'watir-webdriver'
require File.expand_path("../firebug", __FILE__)

class Browser < Watir::Browser
  
  def initialize
    
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile.enable_firebug
    driver = Selenium::WebDriver.for(:firefox, { :profile => profile })
    
    super(driver)
    
  end
  
end