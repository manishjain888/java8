package com.manish.java8.samples.streams;

import java.util.Arrays;
import java.util.List;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class NumericStreams {

	public static void main(String[] args) {

		List<Dish> menu = Arrays.asList(
				new Dish("pork", false, 800, Dish.Type.MEAT),
				new Dish("beef", false, 700, Dish.Type.MEAT),
				new Dish("chicken", false, 400, Dish.Type.MEAT),
				new Dish("french fries", true, 530, Dish.Type.OTHER),
				new Dish("rice", true, 350, Dish.Type.OTHER),
				new Dish("season fruit", true, 120, Dish.Type.OTHER),
				new Dish("pizza", true, 550, Dish.Type.OTHER),
				new Dish("prawns", false, 300, Dish.Type.FISH),
				new Dish("salmon", false, 450, Dish.Type.FISH) );
		
		//Here we can use the IntStream, DoubleStream and LongStream as Stream does not have sum() since it wouldn't make sense to sum Dish Objects
		
		//IntStream, DoubleStream, and LongStream, that respectively specialize the elements of a stream to be int, long, and double—and thereby avoid hidden boxing costs
		
		int calories = menu.stream().mapToInt(Dish::getCalories).sum();
		
		System.out.println("Total Calories :"+calories);
		
		System.out.println("2. Converting back to stream from IntStream");
		IntStream intstream =menu.stream().mapToInt(Dish::getCalories);
		Stream<Integer> stream = intstream.boxed();
		
		System.out.println("3. Numeric Ranges");
		
		IntStream intstream2 = IntStream.rangeClosed(1, 100).filter(n->n%2==0);
		System.out.println("Count:  "+intstream2.count());

	}

}
