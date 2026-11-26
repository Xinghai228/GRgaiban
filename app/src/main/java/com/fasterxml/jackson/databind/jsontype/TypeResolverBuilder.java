package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public interface TypeResolverBuilder<T extends TypeResolverBuilder<T>> {
    TypeDeserializer buildTypeDeserializer(DeserializationConfig deserializationConfig, JavaType javaType, Collection<NamedType> collection);

    TypeSerializer buildTypeSerializer(SerializationConfig serializationConfig, JavaType javaType, Collection<NamedType> collection);

    T defaultImpl(Class<?> cls);

    Class<?> getDefaultImpl();

    T inclusion(JsonTypeInfo.As as);

    T init(JsonTypeInfo.Id id, TypeIdResolver typeIdResolver);

    T init(JsonTypeInfo.Value value, TypeIdResolver typeIdResolver);

    T typeIdVisibility(boolean z);

    T typeProperty(String str);

    T withDefaultImpl(Class<?> cls);

    T withSettings(JsonTypeInfo.Value value);

    /* JADX INFO: renamed from: com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder$-CC, reason: invalid class name */
    public final /* synthetic */ class CC {
        public static TypeResolverBuilder $default$withSettings(TypeResolverBuilder _this, JsonTypeInfo.Value value) {
            throw new IllegalStateException("TypeResolveBuilder implementation " + _this.getClass().getName() + " must implement `withSettings()`");
        }
    }
}
