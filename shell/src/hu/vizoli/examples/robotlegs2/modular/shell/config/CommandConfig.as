package hu.vizoli.examples.robotlegs2.modular.shell.config 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.controlller.LoadModuleCommand;
	import hu.vizoli.examples.robotlegs2.modular.shell.events.ModuleInitializationEvent;
	import mx.events.ModuleEvent;
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
			this.commandMap.map( ModuleInitializationEvent.LOGGER, ModuleInitializationEvent ).toCommand( LoadModuleCommand );
		}
		
	}

}