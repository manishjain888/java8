/**
 * 
 */
package com.manish.java8.samples.lambda;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.manish.java8.samples.common.util.Util;

/**
 * @author manishjain
 *
 */
public class LambdaMethodReference {
	
	public static void main(String[] args) {

		List<String> names = Arrays.asList("peter", "anna", "mike", "xenia");
		
		Comparator<String> stringLengthComparator =  Comparator.comparing((String s) -> s.length());
		
		//Method Reference can be used as like below as well
		Collections.sort(names, Comparator.comparing(String::length));
		
		 Util.forEach(names, ( str) -> System.out.println(str));

	}


	

}
