Before do |scenario|
  $driver.start_driver
end


After do |scenario|
  $driver.driver_quit
end