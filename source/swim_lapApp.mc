import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

public var counter = 0;

class swim_lapApp extends Application.AppBase {

	var counter = 0;

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return [ new swim_lapView(), new swim_lapDelegate() ] as Array<Views or InputDelegates>;
    }
    
    function increase_counter() as Void {
    	counter = counter + 1; 
    }
    
    function reset_counter() as Void {
    	counter = 0; 
    }
    
    function get_counter() as String {
    	return counter.toString();
    }

}

function getApp() as swim_lapApp {
    return Application.getApp() as swim_lapApp;
}