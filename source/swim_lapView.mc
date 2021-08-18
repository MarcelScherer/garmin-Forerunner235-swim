import Toybox.Graphics;
import Toybox.WatchUi;



class swim_lapView extends WatchUi.View {

	hidden var myText;
	
    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
        myText = findDrawableById("disp_counter");
        
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        // Call the parent onUpdate function to redraw the layout
        myText.setText(swim_lapApp.get_counter());
        View.onUpdate(dc);
        System.println(swim_lapApp.get_counter());
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {
    }
}

