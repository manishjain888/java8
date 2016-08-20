package com.rbs.rbsgbl.loaniq.funding.business.advice;

import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.rbs.rbsgbl.loaniq.generic.aop.advice.InterfaceMethodInterceptor;

public class FundSecondaryFilterAdvice extends InterfaceMethodInterceptor{

	private final Log logger = LogFactory.getLog(getClass());
	
	/**
	* This interface requires that a before() method be implemented:
	* @param  		Method : java.lang.reflect.Method object that represents the method to which the
							advice is being applied. 
					args :  Array of Objects that are the arguments that were passed to the method when the method was called. 
					target : The target of the method invocation (i.e., the object on which the method was called).
	* @return 		void 
	* @exception 	Throwable
 	*/ 
 	
	// try-catch implementation  
	public Object invoke(MethodInvocation methodInvocation) 
	throws Throwable
	{
		/*FundReq fundReq = null;
		StateCheck stateCheck;
				
		stateCheck  = (StateCheck)RbsBatchApplication.getAppContext().getBean("stateCheck");
		logger.debug("state bean instance loaded from context"+stateCheck);
		
		fundReq 	=  (FundReq)methodInvocation.getArguments()[0];
		logger.debug("check method invoked...");
		methodInvocation.getArguments()[0] = stateCheck.check(fundReq);
		*/
	    Object retVal = methodInvocation.proceed();
	    return retVal;
	}
}
