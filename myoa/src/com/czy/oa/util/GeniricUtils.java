package com.czy.oa.util;

import java.lang.reflect.ParameterizedType;

public class GeniricUtils {
	
	@SuppressWarnings("rawtypes")
	public static Class getGenericType(Class cla)
	{
		ParameterizedType  pType = (ParameterizedType ) cla.getGenericSuperclass();
		
		Class clazz = (Class)pType.getActualTypeArguments()[0];
		
		return clazz;
	}

}
