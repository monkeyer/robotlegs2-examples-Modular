package hu.vizoli.examples.robotlegs2.modular.shell.config 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.view.LayoutMediator;
	import hu.vizoli.examples.robotlegs2.modular.shell.view.LayoutView;
	import hu.vizoli.examples.robotlegs2.modular.shell.view.MainMediator;
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
			this.mediatorMap.map( Main ).toMediator( MainMediator );
			this.mediatorMap.map( LayoutView ).toMediator( LayoutMediator );
		}
		
	}

}