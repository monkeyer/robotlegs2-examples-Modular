package hu.vizoli.examples.robotlegs2.modular.shell.controlller 
{
	import flash.events.KeyboardEvent;
	import hu.vizoli.examples.robotlegs2.modular.shell.base.BaseCommand;
	
	/**
	 * InitApplicationCommand
	 * 
	 * @author vizoli
	 */
	public class ShellCommand extends BaseCommand
	{
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * Override the execute
		 */
		override public function execute():void
		{
			trace( "------------------- NAHAT 1" );
		}

	}
	
}