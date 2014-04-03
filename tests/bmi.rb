require 'yaml'
require 'selenium-webdriver'
require 'rspec-expectations'

def setup
	@locators = YAML.load_file("./lib/locators.yml")
	@driver = Selenium::WebDriver.for :firefox
	@driver.get "http://mydomain.com/bmicalculator.html"
end

def teardown
	@driver.quit
end

def run
	setup
	yield
	teardown
end

run do
	height = @driver.find_element(@locators['height_text_field'])
	weight = @driver.find_element(@locators['weight_text_field'])
	height.clear
	height.send_keys "150"
	weight.clear
	weight.send_keys "50"
	@driver.find_element(@locators['calculate_button']).click
	@driver.find_element(@locators['bmi_text_field']).attribute('value').should == "22.2"
	@driver.find_element(@locators['category_text_field']).attribute('value').should == "Normal"
end
