package hu.vizoli.examples.robotlegs2.modular.shell.model.events
{
	import flash.display.DisplayObject;
	import flash.events.Event;
	
	/**
	 * ModuleModelEvent
	 * 
	 * @author vizoli
	 */
	public class ModuleModelEvent extends Event
	{
		public static const LOADED:String = "LOADED";
		
		public var module:DisplayObject;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * ModuleModelEvent
		 * 
		 * @param 	type
		 */
		public function ModuleModelEvent( type:String )
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
		override public function clone():Event
		{
			var event:ModuleModelEvent = new ModuleModelEvent( type );
			this.module = module
			
			return event;
		}
		
	}
	
}