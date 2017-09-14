package hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller 
{
	import base.BaseCommand;
	import events.LogEvent;
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller.events.AddLogCommandEvent;
	
	/**
	 * AddLogCommand
	 * 
	 * @author vizoli
	 */
	public class AddLogCommand extends BaseCommand
	{
		[Inject]
		public var event:LogEvent;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Override the execute
		 */
		override public function execute():void
		{
			var addLogCommandEvent:AddLogCommandEvent = new AddLogCommandEvent( AddLogCommandEvent.LOG );
			addLogCommandEvent.message = this.event.message;
			this.eventDispatcher.dispatchEvent( addLogCommandEvent );
		}

	}
	
}