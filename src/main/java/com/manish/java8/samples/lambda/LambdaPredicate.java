/**
 * 
 */
package com.manish.java8.samples.lambda;

import java.util.Arrays;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

import com.manish.java8.samples.common.util.Util;

/**
 * @author manishjain
 * Use of functional Interface using the Predicate
 */
public class LambdaPredicate {

	public static void main(String[] args) {
		List<String> names = Arrays.asList("peter", "anna", "mike", "xenia");
		
		Predicate<String> nonEmptyPredicate = (String s) -> !s.isEmpty();
		
		List<String> names1= Util.filter(names,nonEmptyPredicate );
		//Or 
		//Following contains the predicate argument and -> test method implementation as its functional interface
		//Also check String s has been just changed to just s as lambda expression deduce appropriate type from its context
		List<String> names2= Util.filter(names,( s) -> !s.isEmpty() );
		
		Util.forEach(names1, (String str) -> System.out.println(str));
		
		composePredicateExample(names1,nonEmptyPredicate);
	}

	private static void composePredicateExample(List<String> names1,
			Predicate<String> nonEmptyPredicate) {
		
		Consumer<Object> c1 = x -> System.out.println(x);
		
		c1.accept("****************Now Compose Example************");
		
		Predicate<String> stringWithLength4 = (s) ->s.length()==4;
		Predicate<String> composePredicate = nonEmptyPredicate.and(stringWithLength4);
		List<String> names2= Util.filter(names1,composePredicate );
		Util.forEach(names2,  System.out::println);
	}


	
	
	
	

}
