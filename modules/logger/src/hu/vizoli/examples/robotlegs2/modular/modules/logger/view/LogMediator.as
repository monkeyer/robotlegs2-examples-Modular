package hu.vizoli.examples.robotlegs2.modular.modules.logger.view 
{
	import base.BaseMediator;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.controlller.events.AddLogCommandEvent;
	
	/**
	 * LogMediator
	 * 
	 * @author vizoli
	 */
	public class LogMediator extends BaseMediator
	{
		[Inject]
		public var view:LogView;
		
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
			this.addContextListener( AddLogCommandEvent.LOG, logg);
		}
		
		private function logg( e:AddLogCommandEvent ):void
		{
			this.view.addLog ( e.message );
		}
		
	}

}