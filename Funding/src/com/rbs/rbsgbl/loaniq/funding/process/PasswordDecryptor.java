package com.rbs.rbsgbl.loaniq.funding.process;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.rbs.rbsgbl.loaniq.generic.security.RbsDESedeEncryptDecryptUtil;


public class PasswordDecryptor{
	
	protected static Log log = LogFactory.getLog(PasswordDecryptor.class.getName());

	/* (non-Javadoc)
	 * @see org.springframework.beans.factory.support.MethodReplacer#reimplement(java.lang.Object, java.lang.reflect.Method, java.lang.Object[])
	 */
	String strPassword;	
	String strKeyString;
	String strFTPPassword;
	
	/**
	 * @return Returns the strKeyString.
	 */
	public String getStrKeyString() {
		return strKeyString;
	}

	/**
	 * @param strKeyString The strKeyString to set.
	 */
	public void setStrKeyString(String strKeyString) {
		this.strKeyString = strKeyString;
	}

	/**
	 * @return Returns the strPassword.
	 */
	public String getStrPassword() {
		return strPassword;
	}

	/**
	 * @param strPassword The strPassword to set.
	 */
	public void setStrPassword(String strPassword) {
		this.strPassword = strPassword;
	}
	
	public String getStrFTPPassword() {
		return strFTPPassword;
	}

	public void setStrFTPPassword(String strFTPPassword) {
		this.strFTPPassword = strFTPPassword;
	}

	public void init()
	{
		try {
			this.strPassword = RbsDESedeEncryptDecryptUtil.decrypt(strPassword,strKeyString);
		//	this.strFTPPassword = RbsDESedeEncryptDecryptUtil.decrypt(strFTPPassword,strKeyString);
		} catch (Exception e) {
			log.error("Error in init . " + e.getMessage());
			e.printStackTrace();
		}
	}
		}
