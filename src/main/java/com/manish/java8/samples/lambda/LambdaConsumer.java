package com.manish.java8.samples.lambda;

import java.util.Arrays;
import java.util.List;

import com.manish.java8.samples.common.util.Util;

public class LambdaConsumer {

	public static void main(String[] args) {
		List<String> names = Arrays.asList("peter", "anna", "mike", "xenia");
		 Util.forEach(names, (String str) -> System.out.println(str));
	}

	
	

}
