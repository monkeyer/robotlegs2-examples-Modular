package hu.vizoli.examples.robotlegs2.modular.shell.view 
{
	import base.BaseMediator;
	import events.LogEvent;
	import flash.display.DisplayObject;
	import flash.events.Event;
	import flash.system.ApplicationDomain;
	import hu.vizoli.examples.robotlegs2.modular.shell.events.ModuleInitializationEvent;
	import hu.vizoli.examples.robotlegs2.modular.shell.model.events.ModuleModelEvent;
	
	/**
	 * LayoutMediator
	 * 
	 * @author vizoli
	 */
	public class LayoutMediator extends BaseMediator 
	{
		[Inject]
		public var view:LayoutView;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void
		{
			this.addContextListener( ModuleModelEvent.LOADED, this.moduleModelEventHandler );
			
			this.dispatch( new ModuleInitializationEvent( ModuleInitializationEvent.LOGGER ) );
		}
		
		/**
		 * Event handler of ModuleModel
		 * 
		 * @param	e
		 */
		private function moduleModelEventHandler( e:ModuleModelEvent ):void 
		{
			switch ( e.type )
			{
				case ModuleModelEvent.LOADED:
					this.view.addChild( e.module );
					
					var event:LogEvent = new LogEvent( LogEvent.LOG );
					event.message = DisplayObject(e.module).toString() + " " + ModuleModelEvent.LOADED;
					
					this.dispatch( event );
				break;
				
				default:
					
				break;
			}
		}
		
	}

}