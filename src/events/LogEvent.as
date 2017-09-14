package events
{
	import flash.events.Event;
	
	/**
	 * LogEvent
	 * 
	 * @author vizoli
	 */
	public class LogEvent extends Event
	{
		public static const LOG:String = "LOG";
		
		public var message:String;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * LogEvent
		 * 
		 * @param 	type
		 */
		public function LogEvent( type:String )
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
			var event:LogEvent = new LogEvent( type );
			event.message = message;
			
			return event;
		}
		
	}
	
}