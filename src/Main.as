package 
{
	import base.BaseMain;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.system.ApplicationDomain;
	import flash.system.LoaderContext;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.CommandConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.MediatorConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModelConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ModuleConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.config.ServiceConfig;
	import hu.vizoli.examples.robotlegs2.modular.shell.view.LayoutView;
	import robotlegs.bender.bundles.mvcs.MVCSBundle;
	import robotlegs.bender.extensions.contextView.ContextView;
	import robotlegs.bender.extensions.contextView.ContextViewExtension;
	import robotlegs.bender.extensions.modularity.ModularityExtension;
	import robotlegs.bender.framework.impl.Context;
	
	/**
	 * Robotlegs2 Example - Modular
	 * Shell, this is the main project, it loads the modules.
	 * 
	 * @author vizoli ( Name: Zoltan Viski, Site: vizoli.hu, Github: https://github.com/zoltanviski )
	 */
	[ SWF( width='820', height='620', backgroundColor='0x444444', framerate='30' ) ]
	public class Main extends BaseMain 
	{
		private var _layoutView:LayoutView;
		
		public function Main( ):void 
		{
			
		}
		
		/**
		 * @inheritDoc
		 */
		override public function createChildren():void
		{
			this._layoutView = new LayoutView();
			this.addChild( this._layoutView );
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function setupContext( ):void 
		{
			super.setupContext();
			
			this._context = new Context()
				.install( 	MVCSBundle )
				.install( 	ContextViewExtension )
				.install( 	ModularityExtension )
				.configure( ModelConfig, 
							MediatorConfig, 
							CommandConfig, 
							ModuleConfig,
							ServiceConfig,
							new ContextView( this ) 
						  );
		}
		
		/**
		 * @inheritDoc
		 */
		override protected function init( e:Event = null ):void 
		{
			super.init(); 
		}
		
	}
	
}