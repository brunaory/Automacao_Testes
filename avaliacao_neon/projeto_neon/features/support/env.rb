require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'faker'
require "cpf_faker"
require "httparty"
require "httparty/request"
require "httparty/response/headers"
require "rspec/expectations"
require 'pry'
require "capybara/session" 

Capybara.register_driver :selenium do |app|
Capybara::Selenium::Driver.new(app, :browser => :firefox)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 60