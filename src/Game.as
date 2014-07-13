/**
 * Created by change-me on 7/13/14.
 */
package
{

    import flash.filesystem.File;

    import starling.display.Sprite;
    import starling.utils.AssetManager;

    public class Game extends Sprite
    {
        private var _assetLoader:AssetManager;
        private var _fakeVector:Vector.<String>;

        public function Game() {
            super();

            _assetLoader = new AssetManager();
            var appDir:File = File.applicationDirectory;
            var file:File;

            file = appDir.resolvePath("assets/");
            _assetLoader.enqueue(file);

            _assetLoader.loadQueue(onProgress);
        }

        private function onProgress(ratio:Number):void {

            trace(ratio);
            if (ratio == 1) {
                assetsLoaded();
//                logger.debug("finished");
            }

        }

        private function assetsLoaded():void {
            var i:Number = _fakeVector.length;
        }

    }
}
