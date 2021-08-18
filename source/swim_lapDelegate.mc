import Toybox.Lang;
import Toybox.WatchUi;

class swim_lapDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
        System.println("init");
    }

	function onBack() {
		// close app
		System.exit();
		return true;
	}
	function onSelect() {
		System.println("update Select");
		swim_lapApp.increase_counter();
		WatchUi.requestUpdate();
		return true;
	}
	function onMenu() {
		System.println("update Menu");
		WatchUi.requestUpdate();
		return true;
    }
    function onKey(keyEvent) {
		if(keyEvent.getKey() == KEY_DOWN){
			System.println("DOWN");
			WatchUi.requestUpdate();
			swim_lapApp.reset_counter();
		}else if(keyEvent.getKey() == KEY_UP){
			System.println("UP");
		}else{
		}
        return true;
    }
} 