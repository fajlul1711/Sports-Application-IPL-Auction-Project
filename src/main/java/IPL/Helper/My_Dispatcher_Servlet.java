package IPL.Helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class My_Dispatcher_Servlet extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
	Class<?> arr[]	= {My_Config.class};
		return arr;
	}

	@Override
	protected String[] getServletMappings() {
		// here we will do the Mapping of multiple URL by using "/"
		
		String [] arr= {"/"}; //this line indicates that we have Successfully mapped multiple urls.
		
		return arr;
	}

}
