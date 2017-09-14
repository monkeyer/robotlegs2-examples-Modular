package hu.vizoli.examples.robotlegs2.modular.shell.config 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.model.ModuleModel;
	import hu.vizoli.examples.robotlegs2.modular.shell.service.ModuleService;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Service config
	 * 
	 * @author vizoli
	 */
	public class ServiceConfig implements IConfig
	{
		[Inject]
		public var injector:IInjector;
		
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
			this.injector.map( ModuleService ).asSingleton();
		}
		
	}

}