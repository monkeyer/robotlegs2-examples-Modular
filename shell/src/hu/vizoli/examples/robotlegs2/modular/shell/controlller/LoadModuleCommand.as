package hu.vizoli.examples.robotlegs2.modular.shell.controlller 
{
	import hu.vizoli.examples.robotlegs2.modular.shell.base.BaseCommand;
	import hu.vizoli.examples.robotlegs2.modular.shell.service.ModuleService;
	
	/**
	 * LoadModuleCommand
	 * 
	 * @author vizoli
	 */
	public class LoadModuleCommand extends BaseCommand
	{
		[Inject]
		public var moduleService:ModuleService;
		
		//--------------------------------------------------------------------------
		//
		//  Overriden methods
		//
		//--------------------------------------------------------------------------
		
		/**
		 * @inheritDoc
		 */
		override public function execute():void
		{
			this.moduleService.load( "../../modules/logger/bin/Robotlegs2ExamplesModularLogger.swf" );
		}

	}

}