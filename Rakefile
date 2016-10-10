# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Show'

  app.info_plist["UIBackgroundModes"] = ["location"]
  app.info_plist["NSLocationAlwaysUsageDescription"] = "We utilize location data to enhance your app experience."
  app.info_plist["NSLocationWhenInUseUsageDescription"] = "We utilize location data to enhance your app experience."
end
