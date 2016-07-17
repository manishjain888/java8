package com.manish.java8.samples.lambda;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Function;

public class LambdaFunction {

	public static void main(String[] args) {

		List<String> names = Arrays.asList("peter", "anna", "mike", "xenia");

		Map<String, Integer> mapStringToLength = map(names, (String s) ->s.length());
		
		mapStringToLength.forEach((k,v) -> System.out.println("Key: "+k+ " value: "+v));

	}

	private static <T,R> Map<T, R> map(List<T> list, Function<T, R> f) {
		
		Map<T,R> mapInputtoOutput = new HashMap<>();
		
		for (T t : list) {
			mapInputtoOutput.put(t, f.apply(t));
		}
		return mapInputtoOutput;
	}
	
	public void covertOneObjecttoAnother(){
		
	}

}
