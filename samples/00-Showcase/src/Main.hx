import cpp.Lib;
import hx.widgets.*;
import hx.widgets.App.WxAppRef;

class Main {
	public static function main() {
		var app = new App();
		app.init();
		
		var frame:Frame = new Frame(null, "hxWidgets");
		//frame.setStatusText("Status: OK");
		frame.setBackgroundColour(0xFFFFFF);
		frame.setSize(10, 10, 800, 600);
		frame.show(true);
		
			// create a button
			var button:Button = new Button(frame, "Button 1");
			button.setBitmap(Bitmap.fromHaxeResource("inbox.bmp"));
			button.setSize(10, 10, 100, 100);
			button.bind(Events.EVT_BUTTON, function(e:Event) {
				trace("click!");
				trace(e.getEventType());
				trace(e.getId());
			});
		
			// create a chekboxes
			var checkbox:CheckBox = new CheckBox(frame, "Check 1");
			checkbox.bind(Events.EVT_CHECKBOX, function(e:Event) {
				trace("checkbox 1: " + checkbox.value);
			});
			checkbox.move(120, 10);

			var checkbox:CheckBox = new CheckBox(frame, "Check 2");
			checkbox.bind(Events.EVT_CHECKBOX, function(e:Event) {
				trace("checkbox 2: " + checkbox.value);
			});
			checkbox.value = true;
			checkbox.move(190, 10);

			var checkbox:CheckBox = new CheckBox(frame, "Check 3");
			checkbox.bind(Events.EVT_CHECKBOX, function(e:Event) {
				trace("checkbox 3: " + checkbox.value);
			});
			checkbox.move(260, 10);
			
			// create a gauge (progress bar)
			var gauge:Gauge = new Gauge(frame);
			gauge.move(120, 30);
			gauge.value = 50;
			
			// create a slider
			var slider:Slider = new Slider(frame);
			slider.move(120, 50);
			slider.min = 25;
			slider.max = 125;
			slider.value = 50;
			slider.bind(Events.EVT_SLIDER, function(e) {
				trace("Slider event: " + slider.value);
				gauge.value = slider.value;
			});
			
			// create a static bitmp
			var staticBmp:StaticBitmap = new StaticBitmap(frame, Bitmap.fromHaxeResource("slinky_tiny_test.bmp"));
			staticBmp.move(130, 75);
			
			// create an image list ready for use with the tabs
			var imageList:ImageList = new ImageList(16, 16);
			imageList.add(Bitmap.fromHaxeResource("inbox.bmp"));
			imageList.add(Bitmap.fromHaxeResource("inbox--arrow.bmp"));
			imageList.add(Bitmap.fromHaxeResource("inbox-document.bmp"));
		
			// create a notebox (tab view)
			var tabs:Notebook = new Notebook(frame);
			tabs.setImageList(imageList);
			tabs.setSize(10, 130, 400, 200);

			// create the panels and contents for the tab view
				var panel1:Panel = new Panel(tabs);
					var button = new Button(panel1, "Tab Button 1a");
					button.setSize(5, 5, 100, 30);

					var button = new Button(panel1, "Tab Button 1b");
					button.move(5, 40);
		
				tabs.addPage(panel1, "Tab 1", false, 0);

				var panel2:Panel = new Panel(tabs);
					var button = new Button(panel2, "Tab Button 2a");
					button.setSize(5, 5, 100, 30);
					
				tabs.addPage(panel2, "Tab 2", false, 1);

				var panel3:Panel = new Panel(tabs);
					var button = new Button(panel3, "Tab Button 3a");
					button.setSize(5, 5, 100, 30);
				tabs.addPage(panel3, "Tab 3", false, 2);
			
		app.run();
		app.exit();
	}
}
