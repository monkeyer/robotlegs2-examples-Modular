package hu.vizoli.examples.robotlegs2.modular.shell.view 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.base.BaseMediator;
	import hu.vizoli.examples.robotlegs2.modular.shell.events.ModuleInitializationEvent;
	
	/**
	 * LayoutMediator
	 * 
	 * @author vizoli
	 */
	public class LayoutMediator extends BaseMediator 
	{
		[Inject]
		public var view:LayoutView;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function initialize():void
		{
			this.dispatch( new ModuleInitializationEvent( ModuleInitializationEvent.LOGGER ) );
		}
		
	}

}