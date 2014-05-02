package hu.vizoli.examples.robotlegs2.modular.modules.logger.view 
{
	import flash.text.TextField;
	import hu.vizoli.examples.robotlegs2.modular.modules.logger.base.BaseView;
	
	/**
	 * LogView
	 * 
	 * @author vizoli
	 */
	public class LogView extends BaseView 
	{
		private var _logTextField:TextField;
		
		public function LogView() 
		{
			super();
		}
		
		/**
		 * @inheritDoc
		 */
		override public function createChildren():void
		{
			this._logTextField = new TextField();
			this._logTextField.text = "Logger";
			this.addChild( this._logTextField );
		}
		
	}

}