package base 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import robotlegs.bender.framework.api.IContext;
	
	/**
	 * BaseModuleMain, all of Main class of modules needs to inherit from this.
	 * 
	 * @author vizoli
	 */
	public class BaseModuleMain extends BaseView  
	{
		protected var _moduleName:String;
		protected var _context:IContext;
		
		public function BaseModuleMain() 
		{
			this.setupContext();
			
			if ( this.stage ) this.init( );
			else addEventListener( Event.ADDED_TO_STAGE, this.init );
		}
		
		/**
		 * Setup the context
		 */
		protected function setupContext( ):void 
		{
			
		}
		
		/**
		 * Init
		 * 
		 * @param	e
		 */
		protected function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
		}
		
		/**
		 * Returns the module's name
		 */
		public function get moduleName():String 
		{
			return this._moduleName;
		}
		
	}

}