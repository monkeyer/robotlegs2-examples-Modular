package hu.vizoli.examples.robotlegs2.modular.modules.logger.config 
{
	import events.LogEvent;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller.AddLogCommand;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller.events.AddLogCommandEvent;
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.framework.api.IConfig;
	
	/**
	 * CommandConfig
	 * 
	 * @author vizoli
	 */
	public class CommandConfig implements IConfig 
	{
		[Inject]
		public var commandMap:IEventCommandMap;
		
		//--------------------------------------------------------------------------
		//
		//  Public methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Configure
		 */
		public function configure():void
		{
			this.commandMap.map( "LOG", LogEvent ).toCommand( AddLogCommand );
		}
		
	}

}