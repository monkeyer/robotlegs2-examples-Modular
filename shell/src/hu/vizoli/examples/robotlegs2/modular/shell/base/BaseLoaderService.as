package hu.vizoli.examples.robotlegs2.modular.shell.base 
{
	import flash.display.Loader;
	import flash.net.URLRequest;
	import flash.system.LoaderContext;
	
	/**
	 * BaseLoaderService
	 * 
	 * @author vizoli
	 */
	public class BaseLoaderService extends BaseService 
	{
		protected var _loader:Loader;
		protected var _loaderContext:LoaderContext;
		protected var _urlRequest:URLRequest;
		
		public function BaseLoaderService() 
		{
			
		}
		
	}

}