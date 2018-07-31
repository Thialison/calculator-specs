require "appium_lib"
require "cucumber"

def caps
    { caps: { deviceName: "TestEmulator",
        platformName: "Android",
        app: (File.join(File.dirname(__FILE__),  "ExactCalculator.apk"))        
        }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

Before { $driver.start_driver }
After { $driver.driver_quit }