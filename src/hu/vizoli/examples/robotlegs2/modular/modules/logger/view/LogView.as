package hu.vizoli.examples.robotlegs2.modular.modules.logger.view 
{
	import base.BaseView;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
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
			
			this.createChildren();
		}
		
		/**
		 * @inheritDoc
		 */
		override public function createChildren():void
		{
			this._logTextField = new TextField();
			this._logTextField.textColor = 0x84B72D;
			this._logTextField.autoSize = TextFieldAutoSize.LEFT;
			this._logTextField.text = "Logs...";
			this.addChild( this._logTextField );
		}
		
		public function addLog( message:String ):void
		{
			this._logTextField.appendText( "\n" + message );
		}
		
	}

}