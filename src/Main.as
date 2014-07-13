package {

import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.events.Event;
    import flash.text.TextField;

    import starling.core.Starling;

    public class Main extends Sprite {
    private var _starling:Starling;
    public function Main() {
        stage.align = StageAlign.TOP_LEFT;
        stage.scaleMode = StageScaleMode.NO_SCALE;

        mouseEnabled = mouseChildren = false;







        //stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;

//            _splashScreenImage = new splashScreen();
//
//            _splashScreenImage.x = 0;
//            _splashScreenImage.y = 0;
//            _splashScreenImage.width  = 800;
//            _splashScreenImage.height = 600;
//            _splashScreenImage.smoothing = true;
//            addChild(_splashScreenImage);


        loaderInfo.addEventListener(flash.events.Event.COMPLETE, loaderInfo_completeHandler);
    }


    private function loaderInfo_completeHandler(event:flash.events.Event):void {

        Starling.handleLostContext = true;
        Starling.multitouchEnabled = true;

        _starling = new Starling(Game, stage, null, null, "auto", "auto");
    }
}
}
