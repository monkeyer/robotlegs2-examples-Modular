package hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller.events
{
	import flash.events.Event;
	
	/**
	 * AddLogCommandEvent
	 * 
	 * @author vizoli
	 */
	public class AddLogCommandEvent extends Event
	{
		public static const LOG:String = "AddLogCommandEvent.LOG";
		
		public var message:String;
		
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
		public function AddLogCommandEvent( type:String )
		{
			super( type );
		}
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function clone( ):Event
		{
			var event:AddLogCommandEvent = new AddLogCommandEvent( type );
			event.message = message;
			
			return event;
		}
		
	}
	
}