package io.github.lazyimmortal.sesame.util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class TypeUtil {
    public static Class<?> getClass(Type type) {
        if (type == null) {
            return null;
        }
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        if (type instanceof TypeVariable) {
            Type[] bounds = ((TypeVariable) type).getBounds();
            if (bounds.length == 1) {
                return getClass(bounds[0]);
            }
            return null;
        }
        if (!(type instanceof WildcardType)) {
            return null;
        }
        Type[] upperBounds = ((WildcardType) type).getUpperBounds();
        if (upperBounds.length == 1) {
            return getClass(upperBounds[0]);
        }
        return null;
    }

    public static Type getType(Field field) {
        if (field == null) {
            return null;
        }
        return field.getGenericType();
    }

    public static Class<?> getClass(Field field) {
        if (field == null) {
            return null;
        }
        return field.getType();
    }

    public static Type getFirstParamType(Method method) {
        return getParamType(method, 0);
    }

    public static Class<?> getFirstParamClass(Method method) {
        return getParamClass(method, 0);
    }

    public static Type getParamType(Method method, int i) {
        Type[] paramTypes = getParamTypes(method);
        if (paramTypes == null || paramTypes.length <= i) {
            return null;
        }
        return paramTypes[i];
    }

    public static Class<?> getParamClass(Method method, int i) {
        Class<?>[] paramClasses = getParamClasses(method);
        if (paramClasses == null || paramClasses.length <= i) {
            return null;
        }
        return paramClasses[i];
    }

    public static Type[] getParamTypes(Method method) {
        if (method == null) {
            return null;
        }
        return method.getGenericParameterTypes();
    }

    public static Class<?>[] getParamClasses(Method method) {
        if (method == null) {
            return null;
        }
        return method.getParameterTypes();
    }

    public static Type getReturnType(Method method) {
        if (method == null) {
            return null;
        }
        return method.getGenericReturnType();
    }

    public static Class<?> getReturnClass(Method method) {
        if (method == null) {
            return null;
        }
        return method.getReturnType();
    }

    public static Type getTypeArgument(Type type) {
        return getTypeArgument(type, 0);
    }

    public static Type getTypeArgument(Type type, int i) {
        Type[] typeArguments = getTypeArguments(type);
        if (typeArguments == null || typeArguments.length <= i) {
            return null;
        }
        return typeArguments[i];
    }

    public static Type[] getTypeArguments(Type type) {
        ParameterizedType parameterizedType;
        if (type == null || (parameterizedType = toParameterizedType(type)) == null) {
            return null;
        }
        return parameterizedType.getActualTypeArguments();
    }

    public static ParameterizedType toParameterizedType(Type type) {
        return toParameterizedType(type, 0);
    }

    public static ParameterizedType toParameterizedType(Type type, int i) {
        if (type instanceof ParameterizedType) {
            return (ParameterizedType) type;
        }
        if (!(type instanceof Class)) {
            return null;
        }
        ParameterizedType[] generics = getGenerics((Class) type);
        if (generics.length > i) {
            return generics[i];
        }
        return null;
    }

    public static ParameterizedType[] getGenerics(Class<?> cls) {
        ParameterizedType parameterizedType;
        ArrayList arrayList = new ArrayList();
        Type genericSuperclass = cls.getGenericSuperclass();
        if (genericSuperclass != null && !Object.class.equals(genericSuperclass) && (parameterizedType = toParameterizedType(genericSuperclass)) != null) {
            arrayList.add(parameterizedType);
        }
        for (Type type : cls.getGenericInterfaces()) {
            ParameterizedType parameterizedType2 = toParameterizedType(type);
            if (parameterizedType2 != null) {
                arrayList.add(parameterizedType2);
            }
        }
        return (ParameterizedType[]) arrayList.toArray(new ParameterizedType[0]);
    }

    public static boolean isUnknown(Type type) {
        return type == null || (type instanceof TypeVariable);
    }

    public static boolean hasTypeVariable(Type... typeArr) {
        for (Type type : typeArr) {
            if (type instanceof TypeVariable) {
                return true;
            }
        }
        return false;
    }
}
