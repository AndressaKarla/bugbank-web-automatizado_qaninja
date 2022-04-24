require 'capybara'
require 'capybara/cucumber'
require "selenium-webdriver"

require_relative 'helper.rb'
require_relative 'spec_helper.rb'

BROWSER = ENV['BROWSER']

## Configurações do navegador
Capybara.register_driver :chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL'})
  opts = Selenium::WebDriver::Chrome::Options.new

  chrome_args = %w[--window-size=1280,1024 --disable-gpu --no-sandbox --disable-dev-shm-usage]
  chrome_args.each { |arg| opts.add_argument(arg) }

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts, desired_capabilities: caps)
end

## Configurações do navegador headless
Capybara.register_driver :chrome_headless do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(loggingPrefs: { browser: 'ALL' })
  opts = Selenium::WebDriver::Chrome::Options.new

  chrome_args = %w[--headless --window-size=1920,1080 --disable-gpu --no-sandbox --disable-dev-shm-usage]
  chrome_args.each { |arg| opts.add_argument(arg) }
  
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: opts, desired_capabilities: caps)
end

## Configurações antes de cada feature
Before do |feature|
  Capybara.configure do |capybara|
    # Define o navegador utilizado nos testes
      if BROWSER.eql?('chrome')
          capybara.default_driver = :chrome
      elsif BROWSER.eql?('chrome_headless')
          capybara.default_driver = :chrome_headless
      else
          puts "Browser inválido"
      end

      # Define o ambiente a ser testado
      capybara.app_host = 'https://bugbank.netlify.app'
    end

    ## Define o tempo máximo de espera
    Capybara.default_max_wait_time = 10
end

## Configurações após cada cenário
After do |scenario|
  ## Captura os screenshots
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  if scenario.passed?
    take_screenshot(scenario_name, 'passed')
  else
    take_screenshot(scenario_name, 'failed')
  end

  ## Encerra a sessão do navegador
    Capybara.current_session.driver.quit
end