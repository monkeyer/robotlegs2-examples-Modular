package hu.vizoli.examples.robotlegs2.modular.shell.base 
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	/**
	 * BaseModel
	 * 
	 * @author vizoli
	 */
	public class BaseModel
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		//--------------------------------------------------------------------------
		//
		//  Protected methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Dispatch event
		 * 
		 * @param	e
		 */
		protected function dispatch( e:Event ):void
		{
			if ( this.eventDispatcher.hasEventListener( e.type ) )
				this.eventDispatcher.dispatchEvent( e );
		}
	}
}