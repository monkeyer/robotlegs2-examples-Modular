package hu.vizoli.examples.robotlegs2.modular.shell.view 
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import robotlegs.bender.bundles.mvcs.Mediator;
	
	/**
	 * MainMediator
	 * 
	 * @author vizoli
	 */
	public class MainMediator extends Mediator 
	{
		[Inject]
		public var view:Main;
		
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
			this.addViewListener( "betoltve", this.viewEventListeners );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Event handlers
		//
		//--------------------------------------------------------------------------
		
		/**
		 * viewEventListeners
		 * 
		 * @param	e
		 */
		private function viewEventListeners( e:Event ):void
		{
			this.dispatch( new Event( "shellE" ) );
		}
		
	}

}