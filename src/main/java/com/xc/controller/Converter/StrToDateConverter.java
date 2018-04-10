package com.xc.controller.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class StrToDateConverter implements Converter<String,Date> {

	@Override
	public Date convert(String str) {
		try {
			Date date=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(str);
			return date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}
	
	public Date convert2(String str) {
		try {
			Date date=new SimpleDateFormat("yyyy-MM-dd ").parse(str);
			return date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}
}
