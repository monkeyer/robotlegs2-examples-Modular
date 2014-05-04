package base 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import robotlegs.bender.framework.api.IContext;
	
	/**
	 * BaseMain, all of Main class needs to inherit from this.
	 * 
	 * @author vizoli
	 */
	public class BaseMain extends BaseView  
	{
		protected var _context:IContext;
		
		public function BaseMain() 
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
		
	}

}