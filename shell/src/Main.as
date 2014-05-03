package 
{
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.HTTPStatusEvent;
	import flash.events.IEventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.CommandConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.MediatorConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModelConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModuleConfig;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.modularity.ModularityExtension;
	import robotlegs.bender.framework.api.IContext;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * ...
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		private var _context:IContext;
		private var _loader:Loader;
		private var _req:URLRequest;
		
		public function Main( ):void 
		{
			this.setupContext();
			
			if ( this.stage ) this.init( );
			else addEventListener( Event.ADDED_TO_STAGE, this.init );
		}
		
		/**
		 * Setup the context
		 */
		private function setupContext( ):void 
		{
			this._context = new Context()
				.install( 	MVCSBundle )
				.install( 	ContextViewExtension )
				.install( 	ModularityExtension )
				.configure( ModelConfig, 
							MediatorConfig, 
							CommandConfig, 
							ModuleConfig,
							new ContextView( this ) 
						  );
		}
		
		/**
		 * Init
		 * 
		 * @param	e
		 */
		private function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
			
			this._loader = new Loader();
			this._req = new URLRequest( "../../modules/logger/bin/Robotlegs2ExamplesModularLogger.swf" ); 
			var ldrContext:LoaderContext = new LoaderContext( false, ApplicationDomain.currentDomain ); 
			
			configureListeners(  this._loader.contentLoaderInfo );
			
            this._loader.load( this._req );  
		}
		
		private function completeHandler( event:Event ):void 
        { 
			this.addChild( this._loader.contentLoaderInfo.content );
			
			this.dispatchEvent( new Event( "betoltve" ) );
            //var myGreeter:Class = ApplicationDomain.currentDomain.getDefinition("Greeter") as Class; 
            //var myGreeter:Greeter = Greeter(event.target.content); 
            //var message:String = myGreeter.welcome("Tommy"); 
            //trace(message); // Hello, Tommy 
        } 
		
		 private function configureListeners(dispatcher:IEventDispatcher):void {
            dispatcher.addEventListener(Event.COMPLETE, completeHandler);
        }
		
	}
	
}