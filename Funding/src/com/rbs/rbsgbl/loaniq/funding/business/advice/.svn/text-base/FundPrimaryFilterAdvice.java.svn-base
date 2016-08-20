package com.rbs.rbsgbl.loaniq.funding.business.advice;

import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.rbs.rbsgbl.loaniq.funding.business.FundValidator;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.generic.aop.advice.InterfaceMethodInterceptor;

public class FundPrimaryFilterAdvice extends InterfaceMethodInterceptor {

	private final Log logger = LogFactory.getLog(getClass());

	/**
	 * This interface requires that a before() method be implemented:
	 * 
	 * @param Method :
	 * java.lang.reflect.Method object that represents the method to
	 * which the advice is being applied. args : Array of Objects
	 * that are the arguments that were passed to the method when the
	 * method was called. target : The target of the method
	 * invocation (i.e., the object on which the method was called).
	 * @return void
	 * @exception Throwable
	 */

	// try-catch implementation
	@SuppressWarnings("unchecked")
	public Object invoke(MethodInvocation methodInvocation) throws Throwable {
		FundReq fundReq = (FundReq) methodInvocation.getArguments()[0];
		
		if(!FundValidator.Validate(fundReq))
 			methodInvocation.getArguments()[0] = null;
		Object retVal = methodInvocation.proceed();
		return retVal;
	}
}