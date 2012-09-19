# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.

  app.name = 'motioncasts-parse-demo'
 	app.libs << ['/usr/lib/libz.1.1.3.dylib', '/usr/lib/libsqlite3.dylib']
  app.frameworks += %w(StoreKit AudioToolbox CFNetwork SystemConfiguration 
    MobileCoreServices Security QuartzCore)
  
  app.vendor_project('vendor/Parse.framework', :static, :products => ['Parse'], 
    :headers_dir => 'Headers')


  app.identifier =  "your app id in provisioning center without the seed id"
  app.seed_id = "your seed id in provisioning center"
  app.codesign_certificate = "the name of your developer cert in key chain"
  app.provisioning_profile = "./environment/your.mobileprovision"
  app.entitlements['application-identifier'] = app.seed_id + '.' + app.identifier
  app.entitlements['keychain-access-groups'] = [
    app.seed_id + '.' + app.identifier
  ]
  app.entitlements['aps-environment'] = 'development'
  app.entitlements['get-task-allow'] = true

end
