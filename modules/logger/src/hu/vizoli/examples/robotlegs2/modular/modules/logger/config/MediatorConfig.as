package hu.vizoli.examples.robotlegs2.modular.modules.logger.config 
{
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
			//this.mediatorMap.map( GameLayoutView ).toMediator( GameLayoutMediator );
		}
		
	}

}