package com.manish.java8.samples.streams;

import java.lang.ProcessBuilder.Redirect;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Reduce method is meant to combine two values and produce a new one; it’s an immutable reduction.
 * Reducing : queries can be classified as reduction operations (a stream is reduced to a value). In functional 
 * programming-language jargon, this is referred to as a fold because you can view this operation 
 * as repeatedly folding a long piece of paper (your stream) until it forms a small square, which is
 * the result of the fold operation.
 * There are two parameters in this code: 
 The initial value of the sum variable, in this case 0

 The operation to combine all the elements of the list, in this case +
 * @author manishjain
 *
 *
 *Note: Collect can perform the same operation but collect is useful when you perform the operation in parallel way 
 *as Reduce work on same data so multiple threads can corrupt the list itself in case of Reduce. So Collect is useful for Parallel.
 */

public class StreamReducing {

	public static void main(String[] args) {
		List<Integer> someNumbers = Arrays.asList(1, 2, 3, 4, 5);
		int sum = someNumbers.stream().reduce(0, (a, b) -> a + b);
		
		System.out.println("Sum : "+sum);
		
		System.out.println(someNumbers.stream().collect(Collectors.reducing(0, Integer::sum)));
		
		//Using Reduce to get optional if there is no initial value
		
		Optional<Integer> sum2 = someNumbers.stream().reduce((a, b) -> (a + b));
		System.out.println("Sum for optional : "+sum);
		
		
		Optional<Integer> max = someNumbers.stream().reduce(Integer::max);
		
		Optional<Integer> min = someNumbers.stream().reduce(Integer::min);
		
		
		System.out.println("Max : "+max + " Min : "+ min);
	}

}
