package com.manish.java8.samples.streams;

import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

public class Stream1 {

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
		
		System.out.println("1. Normal Stream");
		List<String> lowCalorieDishes = menu.stream()
										.filter(d -> d.getCalories()< 400)
										.sorted(Comparator.comparing(Dish::getCalories))
										.map(d->d.getName()+": Calories "+d.getCalories())
										.collect(Collectors.toList());
		System.out.println(lowCalorieDishes);
		
		System.out.println("2. Terminal Operations");
		
		
		menu.stream().forEach(System.out::println);
										
		System.out.println("Count: "+ menu.stream().count());
		
		System.out.println("2. Finding and Matching");
		System.out.println("As part of data processing, stream API provides facilities such as allMatch, anyMatch, noneMatch, findFirst and findAny");
		
		//see if a predicate matches all elements
		boolean isHealthy = menu.stream()

				.allMatch(d -> d.getCalories() < 1000);
		System.out.println("predicate matches all elements :"+isHealthy);
		
		//matches at least one element
		
		if(menu.stream().anyMatch(Dish::isVegetarian)){

			System.out.println("The menu is (somewhat) vegetarian friendly!!");

			}
		//ensures that no elements in the stream match the given predicate.
		
		boolean isNoneHealthy = menu.stream()

				.noneMatch(d -> d.getCalories() >= 1000);
		
		
	System.out.println("ensures that no elements in the stream match the given predicate. :"+isNoneHealthy);
	
	System.out.println("Example of Reducing");
		
		Comparator<Dish> dishCalarieCalulator = Comparator.comparing(Dish::getCalories);
		Optional<Dish> mostCalriesDish = menu.stream().collect(Collectors.maxBy(dishCalarieCalulator));
		System.out.println("mostCalriesDish: "+mostCalriesDish);
	
	}
		

}
