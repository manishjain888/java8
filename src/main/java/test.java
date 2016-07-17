import java.io.BufferedReader;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.Month;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import com.manish.java8.samples.common.util.Util;

enum myclass{
	INSTANCE;
	
}

public class test {
	
	
	
	public Integer getN(){
		return 2;
	}
	
	public void setN(Integer n){
		
	}
	
	public static void meth(String[] args){
		System.out.println(args);
		System.out.println(args[1]);
	}
		
	public static void main(String[] args) {
		Date aDate = null;
		Calendar aCalendar = Calendar.getInstance();
		aCalendar.setTimeInMillis(1450000000000L);
		aDate = aCalendar.getTime();
		System.out.println(new SimpleDateFormat("dd-MMM-yyyy").format(aDate));
		
		Instant anInstant = Instant.ofEpochMilli(1450000000000L);
		DateTimeFormatter d = DateTimeFormatter.ofPattern("dd-MMM-yyyy");
		System.out.println(""+ LocalDateTime.ofInstant(anInstant, ZoneId.systemDefault()).format(d));
		
		aCalendar.add(Calendar.DAY_OF_MONTH, 60);
		aDate = aCalendar.getTime();
		System.out.println(new SimpleDateFormat("dd-MMM-yyyy").format(aDate));
		
		anInstant.plus(60, ChronoUnit.DAYS);
		System.out.println(""+ LocalDateTime.ofInstant(anInstant, ZoneId.systemDefault()).format(d));
		
		
		
		
		
	}
	}


class Invoice{
	public static String formatId(String oldId){
		return oldId + "_Invoice";
	}
}

class Account {
}

