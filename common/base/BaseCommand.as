package base 
{
	import flash.events.IEventDispatcher;
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * BaseCommand
	 * 
	 * @author vizoli
	 */
	public class BaseCommand extends Command
	{
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		
		//--------------------------------------------------------------------------
		//
		//  Constructor
		//
		//--------------------------------------------------------------------------
		
		/**
		 * BaseCommand
		 */
		public function BaseCommand() 
		{
			super();
		}
		
	}

}