require 'fileutils'
require 'without_accents'

# Screenshots
def take_screenshot(file_name, result)
  timer_path = Time.now.strftime('%d_%m_%Y').to_s
  timer_path2 = Time.now.strftime('-%d_%m_%Y-%I_%M_%S').to_s
  file_path = "reports/screenshots/test_#{result}/run_#{timer_path}"
  screenshot = "#{file_path}/#{file_name}#{timer_path2},#.png".without_accents
  screenshot = screenshot.sub! ',', ''
  screenshot = screenshot.sub! '#', ''
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'SCREENSHOT')
end