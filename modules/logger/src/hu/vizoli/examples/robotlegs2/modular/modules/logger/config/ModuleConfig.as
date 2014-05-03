package hu.vizoli.examples.robotlegs2.modular.modules.logger.config 
{
	import robotlegs.bender.extensions.modularity.api.IModuleConnector;
	import robotlegs.bender.framework.api.IConfig;
	
	/**
	 * ModuleConfig
	 * 
	 * @author vizoli
	 */
	public class ModuleConfig implements IConfig 
	{
		[Inject]
		public var moduleConnector:IModuleConnector;

		/**
		 * Configure
		 */
		public function configure():void
		{
			this.moduleConnector..onChannel( "sh" ).receiveEvent( "shellE" );
		}
		
	}

}