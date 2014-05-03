package hu.vizoli.examples.robotlegs2.modular.shell.events
{
	import flash.events.Event;
	
	/**
	 * ModuleInitializationEvent
	 * 
	 * @author vizoli
	 */
	public class ModuleInitializationEvent extends Event
	{
		public static const LOGGER:String = "LOGGER";
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * ModuleInitializationEvent
		 * 
		 * @param 	type
		 */
		public function ModuleInitializationEvent( type:String )
		{
			super(type);
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function clone():Event
		{
			var event:ModuleInitializationEvent = new ModuleInitializationEvent( type );
			
			return event;
		}
		
	}
	
}