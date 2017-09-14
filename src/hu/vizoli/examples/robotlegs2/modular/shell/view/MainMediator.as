package hu.vizoli.examples.robotlegs2.modular.shell.view 
{
	import base.BaseMediator;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	/**
	 * MainMediator
	 * 
	 * @author vizoli
	 */
	public class MainMediator extends BaseMediator 
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
			this.view.createChildren();
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
			
		}
		
	}

}