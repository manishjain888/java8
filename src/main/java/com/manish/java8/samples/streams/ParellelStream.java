package com.manish.java8.samples.streams;

import java.util.stream.LongStream;
import java.util.stream.Stream;

/**
 * 
 * @author manishjain
 *
 */
public class ParellelStream {

	/**
	 * 1.A parallel stream is a stream that splits its elements into multiple chunks, processing each chunk with a different thread.
	 * 2. 
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("1. Sequential Sum using the Parellel Stream");
		System.out.println("Sequential Sum : "+sequentialSum());
		recursiveFibonacci();
		
		
		
	}

	private static Long recursiveFibonacci() {
		return null;
		
	}

	private static Long sequentialSum() {
		return Stream.iterate(1L, i->i+1).limit(5).reduce(0L,Long::sum);

	}
	
	
	public static long parallelRangedSum(long n) {
		return LongStream.rangeClosed(1, n)
		.parallel()
		.reduce(0L, Long::sum);
		}

}
