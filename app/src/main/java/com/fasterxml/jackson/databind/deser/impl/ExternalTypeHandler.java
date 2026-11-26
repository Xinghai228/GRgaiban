package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ExternalTypeHandler {
    private final JavaType _beanType;
    private final Map<String, Object> _nameToPropertyIndex;
    private final ExtTypedProperty[] _properties;
    private final TokenBuffer[] _tokens;
    private final String[] _typeIds;

    protected ExternalTypeHandler(JavaType javaType, ExtTypedProperty[] extTypedPropertyArr, Map<String, Object> map, String[] strArr, TokenBuffer[] tokenBufferArr) {
        this._beanType = javaType;
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = map;
        this._typeIds = strArr;
        this._tokens = tokenBufferArr;
    }

    protected ExternalTypeHandler(ExternalTypeHandler externalTypeHandler) {
        this._beanType = externalTypeHandler._beanType;
        ExtTypedProperty[] extTypedPropertyArr = externalTypeHandler._properties;
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        int length = extTypedPropertyArr.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }

    public static Builder builder(JavaType javaType) {
        return new Builder(javaType);
    }

    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }

    public boolean handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Object obj2 = this._nameToPropertyIndex.get(str);
        boolean z = false;
        if (obj2 == null) {
            return false;
        }
        String text = jsonParser.getText();
        if (obj2 instanceof List) {
            Iterator it = ((List) obj2).iterator();
            while (it.hasNext()) {
                if (_handleTypePropertyValue(jsonParser, deserializationContext, str, obj, text, ((Integer) it.next()).intValue())) {
                    z = true;
                }
            }
            return z;
        }
        return _handleTypePropertyValue(jsonParser, deserializationContext, str, obj, text, ((Integer) obj2).intValue());
    }

    private final boolean _handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj, String str2, int i) throws IOException {
        if (!this._properties[i].hasTypePropertyName(str)) {
            return false;
        }
        if (obj != null && this._tokens[i] != null) {
            _deserializeAndSet(jsonParser, deserializationContext, obj, i, str2);
            this._tokens[i] = null;
            return true;
        }
        this._typeIds[i] = str2;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00a3  */
    public boolean handlePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Object obj2 = this._nameToPropertyIndex.get(str);
        if (obj2 == null) {
            return false;
        }
        if (obj2 instanceof List) {
            Iterator it = ((List) obj2).iterator();
            Integer num = (Integer) it.next();
            if (this._properties[num.intValue()].hasTypePropertyName(str)) {
                String text = jsonParser.getText();
                jsonParser.skipChildren();
                this._typeIds[num.intValue()] = text;
                while (it.hasNext()) {
                    this._typeIds[((Integer) it.next()).intValue()] = text;
                }
            } else {
                TokenBuffer tokenBufferBufferAsCopyOfValue = deserializationContext.bufferAsCopyOfValue(jsonParser);
                this._tokens[num.intValue()] = tokenBufferBufferAsCopyOfValue;
                while (it.hasNext()) {
                    this._tokens[((Integer) it.next()).intValue()] = tokenBufferBufferAsCopyOfValue;
                }
            }
            return true;
        }
        int iIntValue = ((Integer) obj2).intValue();
        if (this._properties[iIntValue].hasTypePropertyName(str)) {
            this._typeIds[iIntValue] = jsonParser.getValueAsString();
            jsonParser.skipChildren();
            if (obj != null && this._tokens[iIntValue] != null) {
                String[] strArr = this._typeIds;
                String str2 = strArr[iIntValue];
                strArr[iIntValue] = null;
                _deserializeAndSet(jsonParser, deserializationContext, obj, iIntValue, str2);
                this._tokens[iIntValue] = null;
            }
        } else {
            this._tokens[iIntValue] = deserializationContext.bufferAsCopyOfValue(jsonParser);
            if (obj != null && this._typeIds[iIntValue] != null) {
                String[] strArr2 = this._typeIds;
                String str3 = strArr2[iIntValue];
                strArr2[iIntValue] = null;
                _deserializeAndSet(jsonParser, deserializationContext, obj, iIntValue, str3);
                this._tokens[iIntValue] = null;
            }
        }
        return true;
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        int length = this._properties.length;
        for (int i = 0; i < length; i++) {
            String defaultTypeId = this._typeIds[i];
            ExtTypedProperty extTypedProperty = this._properties[i];
            if (defaultTypeId == null) {
                TokenBuffer tokenBuffer = this._tokens[i];
                if (tokenBuffer != null) {
                    if (tokenBuffer.firstToken().isScalarValue()) {
                        JsonParser jsonParserAsParser = tokenBuffer.asParser(jsonParser);
                        jsonParserAsParser.nextToken();
                        SettableBeanProperty property = extTypedProperty.getProperty();
                        Object objDeserializeIfNatural = TypeDeserializer.deserializeIfNatural(jsonParserAsParser, deserializationContext, property.getType());
                        if (objDeserializeIfNatural != null) {
                            property.set(obj, objDeserializeIfNatural);
                        }
                    }
                    if (!extTypedProperty.hasDefaultType()) {
                        deserializationContext.reportPropertyInputMismatch(this._beanType, extTypedProperty.getProperty().getName(), "Missing external type id property '%s' (and no 'defaultImpl' specified)", extTypedProperty.getTypePropertyName());
                    } else {
                        defaultTypeId = extTypedProperty.getDefaultTypeId();
                        if (defaultTypeId == null) {
                            deserializationContext.reportPropertyInputMismatch(this._beanType, extTypedProperty.getProperty().getName(), "Invalid default type id for property '%s': `null` returned by TypeIdResolver", extTypedProperty.getTypePropertyName());
                        }
                    }
                }
            } else if (this._tokens[i] == null) {
                SettableBeanProperty property2 = extTypedProperty.getProperty();
                if (property2.isRequired() || deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                    deserializationContext.reportPropertyInputMismatch(obj.getClass(), property2.getName(), "Missing property '%s' for external type id '%s'", property2.getName(), extTypedProperty.getTypePropertyName());
                }
                return obj;
            }
            _deserializeAndSet(jsonParser, deserializationContext, obj, i, defaultTypeId);
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0054  */
    /* JADX WARN: Code duplicated, block: B:18:0x005b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0063  */
    /* JADX WARN: Code duplicated, block: B:24:0x0095  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cc A[SYNTHETIC] */
    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer, PropertyBasedCreator propertyBasedCreator) throws IOException {
        SettableBeanProperty property;
        SettableBeanProperty typeProperty;
        int length = this._properties.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            String str = this._typeIds[i];
            ExtTypedProperty extTypedProperty = this._properties[i];
            String defaultTypeId = str;
            if (str == null) {
                TokenBuffer tokenBuffer = this._tokens[i];
                if (tokenBuffer != null && tokenBuffer.firstToken() != JsonToken.VALUE_NULL) {
                    if (!extTypedProperty.hasDefaultType()) {
                        deserializationContext.reportPropertyInputMismatch(this._beanType, extTypedProperty.getProperty().getName(), "Missing external type id property '%s'", extTypedProperty.getTypePropertyName());
                        defaultTypeId = str;
                    } else {
                        defaultTypeId = extTypedProperty.getDefaultTypeId();
                    }
                    if (this._tokens[i] != null) {
                        objArr[i] = _deserialize(jsonParser, deserializationContext, i, defaultTypeId);
                    } else {
                        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                            SettableBeanProperty property2 = extTypedProperty.getProperty();
                            deserializationContext.reportPropertyInputMismatch(this._beanType, property2.getName(), "Missing property '%s' for external type id '%s'", property2.getName(), this._properties[i].getTypePropertyName());
                        }
                        objArr[i] = _deserializeMissingToken(jsonParser, deserializationContext, i, defaultTypeId);
                    }
                    property = extTypedProperty.getProperty();
                    if (property.getCreatorIndex() >= 0) {
                        propertyValueBuffer.assignParameter(property, objArr[i]);
                        typeProperty = extTypedProperty.getTypeProperty();
                        if (typeProperty == null) {
                        }
                    }
                }
            } else {
                if (this._tokens[i] != null) {
                    objArr[i] = _deserialize(jsonParser, deserializationContext, i, defaultTypeId);
                } else {
                    if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY)) {
                        SettableBeanProperty property3 = extTypedProperty.getProperty();
                        deserializationContext.reportPropertyInputMismatch(this._beanType, property3.getName(), "Missing property '%s' for external type id '%s'", property3.getName(), this._properties[i].getTypePropertyName());
                    }
                    objArr[i] = _deserializeMissingToken(jsonParser, deserializationContext, i, defaultTypeId);
                }
                property = extTypedProperty.getProperty();
                if (property.getCreatorIndex() >= 0) {
                    propertyValueBuffer.assignParameter(property, objArr[i]);
                    typeProperty = extTypedProperty.getTypeProperty();
                    if (typeProperty == null && typeProperty.getCreatorIndex() >= 0) {
                        Object obj = defaultTypeId;
                        if (!typeProperty.getType().hasRawClass(String.class)) {
                            TokenBuffer tokenBufferBufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
                            tokenBufferBufferForInputBuffering.writeString(defaultTypeId);
                            Object objDeserialize = typeProperty.getValueDeserializer().deserialize(tokenBufferBufferForInputBuffering.asParserOnFirstToken(), deserializationContext);
                            tokenBufferBufferForInputBuffering.close();
                            obj = objDeserialize;
                        }
                        propertyValueBuffer.assignParameter(typeProperty, obj);
                    }
                }
            }
        }
        Object objBuild = propertyBasedCreator.build(deserializationContext, propertyValueBuffer);
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty property4 = this._properties[i2].getProperty();
            if (property4.getCreatorIndex() < 0) {
                property4.set(objBuild, objArr[i2]);
            }
        }
        return objBuild;
    }

    protected final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, int i, String str) throws IOException {
        JsonParser jsonParserAsParser = this._tokens[i].asParser(jsonParser);
        if (jsonParserAsParser.nextToken() == JsonToken.VALUE_NULL) {
            return null;
        }
        TokenBuffer tokenBufferBufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        tokenBufferBufferForInputBuffering.writeStartArray();
        tokenBufferBufferForInputBuffering.writeString(str);
        tokenBufferBufferForInputBuffering.copyCurrentStructure(jsonParserAsParser);
        tokenBufferBufferForInputBuffering.writeEndArray();
        JsonParser jsonParserAsParser2 = tokenBufferBufferForInputBuffering.asParser(jsonParser);
        jsonParserAsParser2.nextToken();
        return this._properties[i].getProperty().deserialize(jsonParserAsParser2, deserializationContext);
    }

    protected final Object _deserializeMissingToken(JsonParser jsonParser, DeserializationContext deserializationContext, int i, String str) throws IOException {
        TokenBuffer tokenBufferBufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        tokenBufferBufferForInputBuffering.writeStartArray();
        tokenBufferBufferForInputBuffering.writeString(str);
        tokenBufferBufferForInputBuffering.writeEndArray();
        JsonParser jsonParserAsParser = tokenBufferBufferForInputBuffering.asParser(jsonParser);
        jsonParserAsParser.nextToken();
        return this._properties[i].getProperty().deserialize(jsonParserAsParser, deserializationContext);
    }

    protected final void _deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i, String str) throws IOException {
        if (str == null) {
            deserializationContext.reportInputMismatch(this._beanType, "Internal error in external Type Id handling: `null` type id passed", new Object[0]);
        }
        JsonParser jsonParserAsParser = this._tokens[i].asParser(jsonParser);
        if (jsonParserAsParser.nextToken() == JsonToken.VALUE_NULL) {
            this._properties[i].getProperty().set(obj, null);
            return;
        }
        TokenBuffer tokenBufferBufferForInputBuffering = deserializationContext.bufferForInputBuffering(jsonParser);
        tokenBufferBufferForInputBuffering.writeStartArray();
        tokenBufferBufferForInputBuffering.writeString(str);
        tokenBufferBufferForInputBuffering.copyCurrentStructure(jsonParserAsParser);
        tokenBufferBufferForInputBuffering.writeEndArray();
        JsonParser jsonParserAsParser2 = tokenBufferBufferForInputBuffering.asParser(jsonParser);
        jsonParserAsParser2.nextToken();
        this._properties[i].getProperty().deserializeAndSet(jsonParserAsParser2, deserializationContext, obj);
    }

    public static class Builder {
        private final JavaType _beanType;
        private final List<ExtTypedProperty> _properties = new ArrayList();
        private final Map<String, Object> _nameToPropertyIndex = new HashMap();

        protected Builder(JavaType javaType) {
            this._beanType = javaType;
        }

        public void addExternal(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            Integer numValueOf = Integer.valueOf(this._properties.size());
            this._properties.add(new ExtTypedProperty(settableBeanProperty, typeDeserializer));
            _addPropertyIndex(settableBeanProperty.getName(), numValueOf);
            _addPropertyIndex(typeDeserializer.getPropertyName(), numValueOf);
        }

        private void _addPropertyIndex(String str, Integer num) {
            Object obj = this._nameToPropertyIndex.get(str);
            if (obj == null) {
                this._nameToPropertyIndex.put(str, num);
                return;
            }
            if (obj instanceof List) {
                ((List) obj).add(num);
                return;
            }
            LinkedList linkedList = new LinkedList();
            linkedList.add(obj);
            linkedList.add(num);
            this._nameToPropertyIndex.put(str, linkedList);
        }

        public ExternalTypeHandler build(BeanPropertyMap beanPropertyMap) {
            int size = this._properties.size();
            ExtTypedProperty[] extTypedPropertyArr = new ExtTypedProperty[size];
            for (int i = 0; i < size; i++) {
                ExtTypedProperty extTypedProperty = this._properties.get(i);
                SettableBeanProperty settableBeanPropertyFind = beanPropertyMap.find(extTypedProperty.getTypePropertyName());
                if (settableBeanPropertyFind != null) {
                    extTypedProperty.linkTypeProperty(settableBeanPropertyFind);
                }
                extTypedPropertyArr[i] = extTypedProperty;
            }
            return new ExternalTypeHandler(this._beanType, extTypedPropertyArr, this._nameToPropertyIndex, null, null);
        }
    }

    private static final class ExtTypedProperty {
        private final SettableBeanProperty _property;
        private final TypeDeserializer _typeDeserializer;
        private SettableBeanProperty _typeProperty;
        private final String _typePropertyName;

        public ExtTypedProperty(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            this._property = settableBeanProperty;
            this._typeDeserializer = typeDeserializer;
            this._typePropertyName = typeDeserializer.getPropertyName();
        }

        public void linkTypeProperty(SettableBeanProperty settableBeanProperty) {
            this._typeProperty = settableBeanProperty;
        }

        public boolean hasTypePropertyName(String str) {
            return str.equals(this._typePropertyName);
        }

        public boolean hasDefaultType() {
            return this._typeDeserializer.hasDefaultImpl();
        }

        public String getDefaultTypeId() {
            Class<?> defaultImpl = this._typeDeserializer.getDefaultImpl();
            if (defaultImpl == null) {
                return null;
            }
            return this._typeDeserializer.getTypeIdResolver().idFromValueAndType(null, defaultImpl);
        }

        public String getTypePropertyName() {
            return this._typePropertyName;
        }

        public SettableBeanProperty getProperty() {
            return this._property;
        }

        public SettableBeanProperty getTypeProperty() {
            return this._typeProperty;
        }
    }
}
