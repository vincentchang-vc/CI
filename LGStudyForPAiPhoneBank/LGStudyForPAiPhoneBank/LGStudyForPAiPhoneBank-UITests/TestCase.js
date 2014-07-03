#import "lib/tuneup.js"

test("test001", function(target, app)
	 {
	 	var window = app.mainWindow();
	 	app.logElementTree();
	 
	 	assertNotNull(window.buttons()["跳转"],"跳转 按钮为空");
	 	window.buttons()["跳转"].tap();
	 
	 	target.delay(1); 
		assertNotNull(window.buttons()["返回"],"返回 按钮为空");
	 	window.buttons()["返回"].tap();
	 
	 	target.delay(1);
	 	assertNotNull(window.buttons()["载入Web"],"载入web 按钮为空");
	 	window.buttons()["载入Web"].tap();
	 
	 	target.delay(1);
		window.scrollViews()[0].webViews()[0].buttons()["调用原生1"].tap();
	 
		target.delay(1);
		UIATarget.onAlert = function onAlert(alert) 
			{
	 			alert.cancelButton().tap();		
	 		}
	 });