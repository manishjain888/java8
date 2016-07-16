package com.manish.java8.samples.lambda;

import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Supplier;

public class LambdaConstructors {

	public static void main(String[] args) {

		Consumer<Object> c1 = x -> System.out.println(x);
		//For Default Constructor
		c1.accept(maker(Test::new));
		
		//For non-default constructor
		 
	}
	
	/*
	 * Using Supplier
	 */
	private static <T> T maker(Supplier<T> fx) {
	    return fx.get();
	  }

}

/**
 * Class with default constructor
 *
 */
class Test {
	  @Override
	  public String toString() {
	    return "Test Object";
	  }
	}

/**
 * Class with non-default constructor
 * @author manishjain
 *
 */
class Test2 {
		
	 private String field1;
	 private String field2;
	 
	public Test2(String field1, String field2) {
		super();
		this.field1 = field1;
		this.field2 = field2;
	}

	@Override
	public String toString() {
		return "Test2 [field1=" + field1 + ", field2=" + field2 + "]";
	}
	 
	
	}