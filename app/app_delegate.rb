class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    Parse.setApplicationId("your parse app id", 
    	clientKey:"your parse client key")
    application.registerForRemoteNotificationTypes(UIRemoteNotificationTypeBadge)  	
    true
  end

  def application(application, 
  	didRegisterForRemoteNotificationsWithDeviceToken:newDeviceToken)
		PFPush.storeDeviceToken(newDeviceToken)
		PFPush.subscribeToChannelInBackground("test")
	end

	def application(application, didFailToRegisterForRemoteNotificationsWithError:error)
		alert_log ("application:didFailToRegisterForRemoteNotificationsWithError: #{error.debugDescription}")
	end

	def application(application, didReceiveRemoteNotification:userInfo)
		alert_log ("a push has been received at #{Time.now}: #{userInfo}")
	end

  def alert_log(message)
	  alert = UIAlertView.new 
	  alert.message = message
	  alert.show
  end		
end
