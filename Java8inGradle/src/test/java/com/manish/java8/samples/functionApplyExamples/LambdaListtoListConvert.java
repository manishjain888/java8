/**
 * 
 */
package com.manish.java8.samples.functionApplyExamples;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.junit.Assert;
import org.junit.Test;

import com.manish.java8.samples.model.Employee;
import com.manish.java8.samples.model.Person;

/**
 * @author manishjain
 *
 */
public class LambdaListtoListConvert {

	@Test
	public void testListtoList(){
		
		
		
		List<Person> persons = new ArrayList<>();
		
		Person person1 = new Person("Manish","jain");
		Person person2= new Person("NewManish","Newjain");
		Person person3= new Person();
		persons.add(person1);
		persons.add(person2);
		
		List<Employee> employees = persons.stream().map(convertPersonToEmployee).collect(Collectors.toList());
		List<Employee> employees2 = persons.stream().map(p -> new Employee(p.getFirstName(), p.getLastName()))
									.collect(Collectors.toList());
		
		Assert.assertTrue(Arrays.equals(employees.toArray(), employees2.toArray()));
		
	}
	
	
	
	
	Function<Person, Employee> convertPersonToEmployee = new Function<Person, Employee>(){

		@Override
		public Employee apply(Person t) {
			Employee emp = new Employee(t.getFirstName(),t.getLastName());
			return emp;
		};
		
	};

}


