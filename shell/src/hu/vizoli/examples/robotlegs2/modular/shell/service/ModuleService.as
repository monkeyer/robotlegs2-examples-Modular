package hu.vizoli.examples.robotlegs2.modular.shell.service 
{
	import base.BaseLoaderService;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import hu.vizoli.examples.robotlegs2.modular.shell.model.ModuleModel;
	
	/**
	 * ModuleService
	 * 
	 * @author vizoli
	 */
	public class ModuleService extends BaseLoaderService 
	{
		[Inject]
		public var moduleModel:ModuleModel;
		
		/**
		 * Load the module
		 * 
		 * @param	url
		 */
		public function load( url:String ):void 
		{
			this._loader = new Loader();
			this._loaderContext = new LoaderContext( false, ApplicationDomain.currentDomain );
			
			this._urlRequest = new URLRequest( url );  
			
			this._loader.contentLoaderInfo.addEventListener( Event.COMPLETE, this.loaderEventHandler );
			
            this._loader.load( this._urlRequest, this._loaderContext ); 
		}
		
		/**
		 * Event handler of loader
		 * 
		 * @param	e
		 */
		private function loaderEventHandler( e:Event ):void 
        { 
			switch ( e.type )
			{
				case Event.COMPLETE:
					this.moduleModel.addModule( this._loader.contentLoaderInfo.content );
				break;
				
				default:
					trace( e.type );
				break;
			}
			
			var myGreeter:Class = ApplicationDomain.currentDomain.getDefinition("MainLogger") as Class; 
			trace( myGreeter(e.target.content).moduleName ); 
        } 
		
	}

}