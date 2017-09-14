package hu.vizoli.examples.robotlegs2.modular.shell.config 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.model.ModuleModel;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;
	
	/**
	 * Models config
	 * 
	 * @author vizoli
	 */
	public class ModelConfig implements IConfig
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
			this.injector.map( ModuleModel ).asSingleton();
		}
		
	}

}