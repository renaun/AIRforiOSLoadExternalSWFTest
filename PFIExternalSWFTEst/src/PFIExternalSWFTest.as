package
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.net.URLRequest;
	
	public class PFIExternalSWFTest extends Sprite
	{
		public function PFIExternalSWFTest()
		{
			init();
		}
		
		private var loaderLocal:Loader;
		private var loaderRemote:Loader;
		
		private function init():void
		{
			loaderLocal = new Loader();
			loaderLocal.load(new URLRequest("ExternalAnimatedSWF.swf"));
			loaderLocal.x = 10;
			loaderLocal.y = 10;
			addChild(loaderLocal);
			
			loaderRemote = new Loader();
			loaderRemote.load(new URLRequest("http://renaun.com/flex4/ExternalAnimatedSWF.swf"));
			
			loaderRemote.x = 60;
			loaderRemote.y = 60;
			addChild(loaderRemote);
		}
	}
}