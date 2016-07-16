package com.manish.java8.samples.builderPatternTest;

import static org.junit.Assert.*;
import org.junit.Test;

import com.manish.java8.samples.builderPattern.GenericBuilder;
import com.manish.java8.samples.builderPattern.Person;

public class BuilderPatternTest {

	@Test
	public void testGenericBuilderof() {
		GenericBuilder<Person> genericPerson = GenericBuilder.of(Person::new);
		 assertNotNull(genericPerson.build());
	}

	@Test
	public void testWithBuild() {
		Person person1 = GenericBuilder.of(Person::new).with(Person::setName, "Manish").with(Person::setAge, 35).build();
		assertEquals( "Manish", person1.getName());
		assertEquals( 35, person1.getAge());
		
		Person person2 = GenericBuilder.of(Person::new).with(Person::setName, "Hello").with(Person::setAge, 35).buildWithVerifcation();
		assertEquals( "Hello", person2.getName());
		assertEquals( 35, person2.getAge());
	}

}
