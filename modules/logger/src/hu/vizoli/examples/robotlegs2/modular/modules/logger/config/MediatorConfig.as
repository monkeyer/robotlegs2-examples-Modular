package hu.vizoli.examples.robotlegs2.modular.modules.logger.config 
{
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.view.LogMediator;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.view.LogView;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	
	/**
	 * Mediators config
	 * 
	 * @author vizoli
	 */
	public class MediatorConfig implements IConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
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
			this.mediatorMap.map( LogView ).toMediator( LogMediator );
		}
		
	}

}