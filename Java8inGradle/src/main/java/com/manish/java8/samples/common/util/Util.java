/**
 * 
 */
package com.manish.java8.samples.common.util;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;

/**
 * @author manishjain
 *
 */
public class Util {

	public static <T> List<T> filter(List<T> names,
			Predicate<T> nonEmptyPredicate) {
		List<T> results = new ArrayList<>();
		for (T t : names) {
			if(nonEmptyPredicate.test(t)){
				results.add(t);
			}
		}
		return results;
	}
	
	public static <T> void forEach(List<T> names, Consumer<T> c) {
		for(T t: names){
			c.accept(t);
		}
	}
}
