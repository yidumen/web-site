package com.yidumen.web.repository;

import org.springframework.jdbc.core.RowMapper;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author 蔡迪旻
 *         2015年08月09日
 */
public final class GenericRowMapper<T> implements RowMapper<T> {

    private Class<T> entityClass;

    public GenericRowMapper(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @Override
    public T mapRow(ResultSet resultSet, int i) throws SQLException {
        final T result;
        try {
            result = entityClass.newInstance();
        } catch (InstantiationException e) {
            return null;
        } catch (IllegalAccessException e) {
            return null;
        }
        final int columnCount = resultSet.getMetaData().getColumnCount();
        for (int j = 1; j <= columnCount; j++) {
            final String fieldName = resultSet.getMetaData().getColumnLabel(j);
            final Field field;
            try {
                field = entityClass.getDeclaredField(fieldName);
            } catch (NoSuchFieldException e) {
                continue;
            }
            final Class<?> fieldType = field.getType();
            Object fieldValue = resultSet.getObject(j);
            if (fieldType.isEnum()) {
                for (Object o : fieldType.getEnumConstants()) {
                    final Enum e = (Enum) o;
                    if (fieldValue.equals(e.ordinal())) {
                        fieldValue = o;
                    }
                }
            }

            final String methodName = paserSetMethodName(fieldName);
            try {
                entityClass.getMethod(methodName, fieldType).invoke(result, fieldValue);
            } catch (NoSuchMethodException | IllegalAccessException | InvocationTargetException e) {
            }
        }
        return result;
    }

    private String paserSetMethodName(String fieldName) {
        if (fieldName == null || fieldName.isEmpty()) {
            return null;
        }
        return "set" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
    }

}
