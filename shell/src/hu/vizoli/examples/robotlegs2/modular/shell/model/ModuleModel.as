package hu.vizoli.examples.robotlegs2.modular.shell.model 
{
	import flash.display.DisplayObject;
	import hu.vizoli.examples.robotlegs2.modular.shell.base.BaseModel;
	
	/**
	 * ModuleModel
	 * 
	 * @author vizoli
	 */
	public class ModuleModel extends BaseModel 
	{
		
		public function ModuleModel() 
		{
			
		}
		
		public function addModule( module:DisplayObject ):void
		{
			trace( "addModule: ", module );
		}
		
	}

}