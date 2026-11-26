package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.StreamReadCapability;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.cfg.DatatypeFeatures;
import com.fasterxml.jackson.databind.cfg.JsonNodeFeature;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ContainerNode;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.RawValue;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;

/* JADX INFO: compiled from: JsonNodeDeserializer.java */
/* JADX INFO: loaded from: classes.dex */
abstract class BaseNodeDeserializer<T extends JsonNode> extends StdDeserializer<T> implements ContextualDeserializer {
    protected final boolean _mergeArrays;
    protected final boolean _mergeObjects;
    protected final Boolean _supportsUpdates;

    protected abstract JsonDeserializer<?> _createWithMerge(boolean z, boolean z2);

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return true;
    }

    public BaseNodeDeserializer(Class<T> cls, Boolean bool) {
        super((Class<?>) cls);
        this._supportsUpdates = bool;
        this._mergeArrays = true;
        this._mergeObjects = true;
    }

    protected BaseNodeDeserializer(BaseNodeDeserializer<?> baseNodeDeserializer, boolean z, boolean z2) {
        super(baseNodeDeserializer);
        this._supportsUpdates = baseNodeDeserializer._supportsUpdates;
        this._mergeArrays = z;
        this._mergeObjects = z2;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromAny(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public LogicalType logicalType() {
        return LogicalType.Untyped;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public Boolean supportsUpdate(DeserializationConfig deserializationConfig) {
        return this._supportsUpdates;
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        DeserializationConfig config = deserializationContext.getConfig();
        Boolean defaultMergeable = config.getDefaultMergeable(ArrayNode.class);
        Boolean defaultMergeable2 = config.getDefaultMergeable(ObjectNode.class);
        Boolean defaultMergeable3 = config.getDefaultMergeable(JsonNode.class);
        boolean z_shouldMerge = _shouldMerge(defaultMergeable, defaultMergeable3);
        boolean z_shouldMerge2 = _shouldMerge(defaultMergeable2, defaultMergeable3);
        return (z_shouldMerge == this._mergeArrays && z_shouldMerge2 == this._mergeObjects) ? this : _createWithMerge(z_shouldMerge, z_shouldMerge2);
    }

    private static boolean _shouldMerge(Boolean bool, Boolean bool2) {
        if (bool != null) {
            return bool.booleanValue();
        }
        if (bool2 != null) {
            return bool2.booleanValue();
        }
        return true;
    }

    protected void _handleDuplicateField(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, String str, ObjectNode objectNode, JsonNode jsonNode, JsonNode jsonNode2) throws IOException {
        if (deserializationContext.isEnabled(DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY)) {
            deserializationContext.reportInputMismatch(JsonNode.class, "Duplicate field '%s' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled", str);
        }
        if (deserializationContext.isEnabled(StreamReadCapability.DUPLICATE_PROPERTIES)) {
            if (jsonNode.isArray()) {
                ((ArrayNode) jsonNode).add(jsonNode2);
                objectNode.replace(str, jsonNode);
            } else {
                ArrayNode arrayNode = jsonNodeFactory.arrayNode();
                arrayNode.add(jsonNode);
                arrayNode.add(jsonNode2);
                objectNode.replace(str, arrayNode);
            }
        }
    }

    protected final ObjectNode _deserializeObjectAtName(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, ContainerStack containerStack) throws IOException {
        JsonNode jsonNode_deserializeContainerNoRecursion;
        ObjectNode objectNode = jsonNodeFactory.objectNode();
        String strCurrentName = jsonParser.currentName();
        while (strCurrentName != null) {
            JsonToken jsonTokenNextToken = jsonParser.nextToken();
            if (jsonTokenNextToken == null) {
                jsonTokenNextToken = JsonToken.NOT_AVAILABLE;
            }
            int iId = jsonTokenNextToken.id();
            if (iId == 1) {
                jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, jsonNodeFactory, containerStack, jsonNodeFactory.objectNode());
            } else if (iId == 3) {
                jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, jsonNodeFactory, containerStack, jsonNodeFactory.arrayNode());
            } else {
                jsonNode_deserializeContainerNoRecursion = _deserializeAnyScalar(jsonParser, deserializationContext);
            }
            JsonNode jsonNode = jsonNode_deserializeContainerNoRecursion;
            JsonNode jsonNodeReplace = objectNode.replace(strCurrentName, jsonNode);
            if (jsonNodeReplace != null) {
                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strCurrentName, objectNode, jsonNodeReplace, jsonNode);
            }
            strCurrentName = jsonParser.nextFieldName();
        }
        return objectNode;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0061 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0063  */
    /* JADX WARN: Code duplicated, block: B:34:0x006c  */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:40:0x0075  */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x007d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0086  */
    /* JADX WARN: Code duplicated, block: B:46:0x008b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0091  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:60:0x00c2 A[SYNTHETIC] */
    protected final JsonNode updateObject(JsonParser jsonParser, DeserializationContext deserializationContext, ObjectNode objectNode, ContainerStack containerStack) throws IOException {
        String strCurrentName;
        int iId;
        JsonNode jsonNode_deserializeContainerNoRecursion;
        if (jsonParser.isExpectedStartObjectToken()) {
            strCurrentName = jsonParser.nextFieldName();
        } else {
            if (!jsonParser.hasToken(JsonToken.FIELD_NAME)) {
                return deserialize(jsonParser, deserializationContext);
            }
            strCurrentName = jsonParser.currentName();
        }
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        while (strCurrentName != null) {
            JsonToken jsonTokenNextToken = jsonParser.nextToken();
            JsonNode jsonNode = objectNode.get(strCurrentName);
            if (jsonNode != null) {
                if (jsonNode instanceof ObjectNode) {
                    if (jsonTokenNextToken == JsonToken.START_OBJECT && this._mergeObjects) {
                        JsonNode jsonNodeUpdateObject = updateObject(jsonParser, deserializationContext, (ObjectNode) jsonNode, containerStack);
                        if (jsonNodeUpdateObject != jsonNode) {
                            objectNode.set(strCurrentName, jsonNodeUpdateObject);
                        }
                    } else {
                        if (jsonTokenNextToken == null) {
                            jsonTokenNextToken = JsonToken.NOT_AVAILABLE;
                        }
                        iId = jsonTokenNextToken.id();
                        if (iId != 1) {
                            if (iId != 3) {
                                if (iId != 6) {
                                    if (iId == 7) {
                                        jsonNode_deserializeContainerNoRecursion = _fromInt(jsonParser, deserializationContext, nodeFactory);
                                    } else {
                                        switch (iId) {
                                            case 9:
                                                jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(true);
                                                break;
                                            case 10:
                                                jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(false);
                                                break;
                                            case 11:
                                                if (deserializationContext.isEnabled(JsonNodeFeature.READ_NULL_PROPERTIES)) {
                                                    jsonNode_deserializeContainerNoRecursion = nodeFactory.nullNode();
                                                }
                                                break;
                                            default:
                                                jsonNode_deserializeContainerNoRecursion = _deserializeRareScalar(jsonParser, deserializationContext);
                                                break;
                                        }
                                    }
                                } else {
                                    jsonNode_deserializeContainerNoRecursion = nodeFactory.textNode(jsonParser.getText());
                                }
                            } else {
                                jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.arrayNode());
                            }
                        } else {
                            jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.objectNode());
                        }
                        objectNode.set(strCurrentName, jsonNode_deserializeContainerNoRecursion);
                    }
                } else if ((jsonNode instanceof ArrayNode) && jsonTokenNextToken == JsonToken.START_ARRAY && this._mergeArrays) {
                    _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, (ArrayNode) jsonNode);
                } else {
                    if (jsonTokenNextToken == null) {
                        jsonTokenNextToken = JsonToken.NOT_AVAILABLE;
                    }
                    iId = jsonTokenNextToken.id();
                    if (iId != 1) {
                        if (iId != 3) {
                            if (iId != 6) {
                                if (iId == 7) {
                                    jsonNode_deserializeContainerNoRecursion = _fromInt(jsonParser, deserializationContext, nodeFactory);
                                } else {
                                    switch (iId) {
                                        case 9:
                                            jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(true);
                                            break;
                                        case 10:
                                            jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(false);
                                            break;
                                        case 11:
                                            if (deserializationContext.isEnabled(JsonNodeFeature.READ_NULL_PROPERTIES)) {
                                                jsonNode_deserializeContainerNoRecursion = nodeFactory.nullNode();
                                            }
                                            break;
                                        default:
                                            jsonNode_deserializeContainerNoRecursion = _deserializeRareScalar(jsonParser, deserializationContext);
                                            break;
                                    }
                                }
                            } else {
                                jsonNode_deserializeContainerNoRecursion = nodeFactory.textNode(jsonParser.getText());
                            }
                        } else {
                            jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.arrayNode());
                        }
                    } else {
                        jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.objectNode());
                    }
                    objectNode.set(strCurrentName, jsonNode_deserializeContainerNoRecursion);
                }
            } else {
                if (jsonTokenNextToken == null) {
                    jsonTokenNextToken = JsonToken.NOT_AVAILABLE;
                }
                iId = jsonTokenNextToken.id();
                if (iId != 1) {
                    if (iId != 3) {
                        if (iId != 6) {
                            if (iId == 7) {
                                jsonNode_deserializeContainerNoRecursion = _fromInt(jsonParser, deserializationContext, nodeFactory);
                            } else {
                                switch (iId) {
                                    case 9:
                                        jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(true);
                                        break;
                                    case 10:
                                        jsonNode_deserializeContainerNoRecursion = nodeFactory.booleanNode(false);
                                        break;
                                    case 11:
                                        if (deserializationContext.isEnabled(JsonNodeFeature.READ_NULL_PROPERTIES)) {
                                            jsonNode_deserializeContainerNoRecursion = nodeFactory.nullNode();
                                        }
                                        break;
                                    default:
                                        jsonNode_deserializeContainerNoRecursion = _deserializeRareScalar(jsonParser, deserializationContext);
                                        break;
                                }
                            }
                        } else {
                            jsonNode_deserializeContainerNoRecursion = nodeFactory.textNode(jsonParser.getText());
                        }
                    } else {
                        jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.arrayNode());
                    }
                } else {
                    jsonNode_deserializeContainerNoRecursion = _deserializeContainerNoRecursion(jsonParser, deserializationContext, nodeFactory, containerStack, nodeFactory.objectNode());
                }
                objectNode.set(strCurrentName, jsonNode_deserializeContainerNoRecursion);
            }
            strCurrentName = jsonParser.nextFieldName();
        }
        return objectNode;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007d  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091  */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0035. Please report as an issue. */
    protected final ContainerNode<?> _deserializeContainerNoRecursion(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, ContainerStack containerStack, ContainerNode<?> containerNode) throws IOException {
        JsonNode jsonNodeTextNode;
        JsonNode jsonNode;
        JsonNode jsonNodeReplace;
        int deserializationFeatures = deserializationContext.getDeserializationFeatures() & F_MASK_INT_COERCIONS;
        ContainerNode containerNodeObjectNode = containerNode;
        do {
            boolean z = true;
            if (containerNodeObjectNode instanceof ObjectNode) {
                ContainerNode containerNode2 = containerNodeObjectNode;
                ObjectNode objectNode = (ObjectNode) containerNodeObjectNode;
                String strNextFieldName = jsonParser.nextFieldName();
                while (true) {
                    if (strNextFieldName != null) {
                        JsonToken jsonTokenNextToken = jsonParser.nextToken();
                        if (jsonTokenNextToken == null) {
                            jsonTokenNextToken = JsonToken.NOT_AVAILABLE;
                        }
                        int iId = jsonTokenNextToken.id();
                        if (iId == z) {
                            ObjectNode objectNode2 = objectNode;
                            ObjectNode objectNode3 = jsonNodeFactory.objectNode();
                            JsonNode jsonNodeReplace2 = objectNode2.replace(strNextFieldName, objectNode3);
                            if (jsonNodeReplace2 != null) {
                                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode2, jsonNodeReplace2, objectNode3);
                            }
                            containerStack.push(containerNode2);
                            objectNode = objectNode3;
                            containerNode2 = objectNode;
                        } else if (iId == 3) {
                            ObjectNode objectNode4 = objectNode;
                            ContainerNode containerNodeArrayNode = jsonNodeFactory.arrayNode();
                            JsonNode jsonNodeReplace3 = objectNode4.replace(strNextFieldName, containerNodeArrayNode);
                            if (jsonNodeReplace3 != null) {
                                _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode4, jsonNodeReplace3, containerNodeArrayNode);
                            }
                            containerStack.push(containerNode2);
                            containerNodeObjectNode = containerNodeArrayNode;
                        } else {
                            switch (iId) {
                                case 6:
                                    jsonNodeTextNode = jsonNodeFactory.textNode(jsonParser.getText());
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                                case 7:
                                    jsonNodeTextNode = _fromInt(jsonParser, deserializationFeatures, jsonNodeFactory);
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                                case 8:
                                    jsonNodeTextNode = _fromFloat(jsonParser, deserializationContext, jsonNodeFactory);
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                                case 9:
                                    jsonNodeTextNode = jsonNodeFactory.booleanNode(z);
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                                case 10:
                                    jsonNodeTextNode = jsonNodeFactory.booleanNode(false);
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                                case 11:
                                    if (deserializationContext.isEnabled(JsonNodeFeature.READ_NULL_PROPERTIES)) {
                                        jsonNodeTextNode = jsonNodeFactory.nullNode();
                                        jsonNode = jsonNodeTextNode;
                                        jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                        if (jsonNodeReplace != null) {
                                            _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                        }
                                    }
                                    break;
                                default:
                                    jsonNodeTextNode = _deserializeRareScalar(jsonParser, deserializationContext);
                                    jsonNode = jsonNodeTextNode;
                                    jsonNodeReplace = objectNode.replace(strNextFieldName, jsonNode);
                                    if (jsonNodeReplace != null) {
                                        _handleDuplicateField(jsonParser, deserializationContext, jsonNodeFactory, strNextFieldName, objectNode, jsonNodeReplace, jsonNode);
                                    }
                                    break;
                            }
                            objectNode = objectNode;
                        }
                        strNextFieldName = jsonParser.nextFieldName();
                        z = true;
                    } else {
                        containerNodeObjectNode = containerStack.popOrNull();
                    }
                }
            } else {
                ArrayNode arrayNode = (ArrayNode) containerNodeObjectNode;
                while (true) {
                    JsonToken jsonTokenNextToken2 = jsonParser.nextToken();
                    if (jsonTokenNextToken2 == null) {
                        jsonTokenNextToken2 = JsonToken.NOT_AVAILABLE;
                    }
                    switch (jsonTokenNextToken2.id()) {
                        case 1:
                            containerStack.push(containerNodeObjectNode);
                            containerNodeObjectNode = jsonNodeFactory.objectNode();
                            arrayNode.add(containerNodeObjectNode);
                            break;
                        case 2:
                        case 5:
                        default:
                            arrayNode.add(_deserializeRareScalar(jsonParser, deserializationContext));
                            break;
                        case 3:
                            containerStack.push(containerNodeObjectNode);
                            containerNodeObjectNode = jsonNodeFactory.arrayNode();
                            arrayNode.add(containerNodeObjectNode);
                            break;
                        case 4:
                            containerNodeObjectNode = containerStack.popOrNull();
                            break;
                        case 6:
                            arrayNode.add(jsonNodeFactory.textNode(jsonParser.getText()));
                            break;
                        case 7:
                            arrayNode.add(_fromInt(jsonParser, deserializationFeatures, jsonNodeFactory));
                            break;
                        case 8:
                            arrayNode.add(_fromFloat(jsonParser, deserializationContext, jsonNodeFactory));
                            break;
                        case 9:
                            arrayNode.add(jsonNodeFactory.booleanNode(true));
                            break;
                        case 10:
                            arrayNode.add(jsonNodeFactory.booleanNode(false));
                            break;
                        case 11:
                            arrayNode.add(jsonNodeFactory.nullNode());
                            break;
                    }
                }
            }
        } while (containerNodeObjectNode != null);
        return containerNode;
    }

    protected final JsonNode _deserializeAnyScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        int iCurrentTokenId = jsonParser.currentTokenId();
        if (iCurrentTokenId == 2) {
            return nodeFactory.objectNode();
        }
        switch (iCurrentTokenId) {
            case 6:
                return nodeFactory.textNode(jsonParser.getText());
            case 7:
                return _fromInt(jsonParser, deserializationContext, nodeFactory);
            case 8:
                return _fromFloat(jsonParser, deserializationContext, nodeFactory);
            case 9:
                return nodeFactory.booleanNode(true);
            case 10:
                return nodeFactory.booleanNode(false);
            case 11:
                return nodeFactory.nullNode();
            case 12:
                return _fromEmbedded(jsonParser, deserializationContext);
            default:
                return (JsonNode) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
        }
    }

    protected final JsonNode _deserializeRareScalar(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        int iCurrentTokenId = jsonParser.currentTokenId();
        if (iCurrentTokenId == 2) {
            return deserializationContext.getNodeFactory().objectNode();
        }
        if (iCurrentTokenId == 8) {
            return _fromFloat(jsonParser, deserializationContext, deserializationContext.getNodeFactory());
        }
        if (iCurrentTokenId == 12) {
            return _fromEmbedded(jsonParser, deserializationContext);
        }
        return (JsonNode) deserializationContext.handleUnexpectedToken(handledType(), jsonParser);
    }

    protected final JsonNode _fromInt(JsonParser jsonParser, int i, JsonNodeFactory jsonNodeFactory) throws IOException {
        if (i != 0) {
            if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(i)) {
                return jsonNodeFactory.numberNode(jsonParser.getBigIntegerValue());
            }
            return jsonNodeFactory.numberNode(jsonParser.getLongValue());
        }
        JsonParser.NumberType numberType = jsonParser.getNumberType();
        if (numberType == JsonParser.NumberType.INT) {
            return jsonNodeFactory.numberNode(jsonParser.getIntValue());
        }
        if (numberType == JsonParser.NumberType.LONG) {
            return jsonNodeFactory.numberNode(jsonParser.getLongValue());
        }
        return jsonNodeFactory.numberNode(jsonParser.getBigIntegerValue());
    }

    protected final JsonNode _fromInt(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberType numberType;
        int deserializationFeatures = deserializationContext.getDeserializationFeatures();
        if ((F_MASK_INT_COERCIONS & deserializationFeatures) != 0) {
            if (DeserializationFeature.USE_BIG_INTEGER_FOR_INTS.enabledIn(deserializationFeatures)) {
                numberType = JsonParser.NumberType.BIG_INTEGER;
            } else if (DeserializationFeature.USE_LONG_FOR_INTS.enabledIn(deserializationFeatures)) {
                numberType = JsonParser.NumberType.LONG;
            } else {
                numberType = jsonParser.getNumberType();
            }
        } else {
            numberType = jsonParser.getNumberType();
        }
        if (numberType == JsonParser.NumberType.INT) {
            return jsonNodeFactory.numberNode(jsonParser.getIntValue());
        }
        if (numberType == JsonParser.NumberType.LONG) {
            return jsonNodeFactory.numberNode(jsonParser.getLongValue());
        }
        return jsonNodeFactory.numberNode(jsonParser.getBigIntegerValue());
    }

    protected final JsonNode _fromFloat(JsonParser jsonParser, DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory) throws IOException {
        JsonParser.NumberTypeFP numberTypeFP = jsonParser.getNumberTypeFP();
        if (numberTypeFP == JsonParser.NumberTypeFP.BIG_DECIMAL) {
            return _fromBigDecimal(deserializationContext, jsonNodeFactory, jsonParser.getDecimalValue());
        }
        if (deserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
            if (jsonParser.isNaN()) {
                if (deserializationContext.isEnabled(JsonNodeFeature.FAIL_ON_NAN_TO_BIG_DECIMAL_COERCION)) {
                    return (JsonNode) deserializationContext.handleWeirdNumberValue(handledType(), Double.valueOf(jsonParser.getDoubleValue()), "Cannot convert NaN into BigDecimal", new Object[0]);
                }
                return jsonNodeFactory.numberNode(jsonParser.getDoubleValue());
            }
            return _fromBigDecimal(deserializationContext, jsonNodeFactory, jsonParser.getDecimalValue());
        }
        if (numberTypeFP == JsonParser.NumberTypeFP.FLOAT32) {
            return jsonNodeFactory.numberNode(jsonParser.getFloatValue());
        }
        return jsonNodeFactory.numberNode(jsonParser.getDoubleValue());
    }

    protected final JsonNode _fromBigDecimal(DeserializationContext deserializationContext, JsonNodeFactory jsonNodeFactory, BigDecimal bigDecimal) {
        boolean zWillStripTrailingBigDecimalZeroes;
        DatatypeFeatures datatypeFeatures = deserializationContext.getDatatypeFeatures();
        if (datatypeFeatures.isExplicitlySet(JsonNodeFeature.STRIP_TRAILING_BIGDECIMAL_ZEROES)) {
            zWillStripTrailingBigDecimalZeroes = datatypeFeatures.isEnabled(JsonNodeFeature.STRIP_TRAILING_BIGDECIMAL_ZEROES);
        } else {
            zWillStripTrailingBigDecimalZeroes = jsonNodeFactory.willStripTrailingBigDecimalZeroes();
        }
        if (zWillStripTrailingBigDecimalZeroes) {
            try {
                bigDecimal = BaseNodeDeserializer$$ExternalSyntheticBackportWithForwarding0.m(bigDecimal);
            } catch (ArithmeticException unused) {
            }
        }
        return jsonNodeFactory.numberNode(bigDecimal);
    }

    protected final JsonNode _fromEmbedded(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonNodeFactory nodeFactory = deserializationContext.getNodeFactory();
        Object embeddedObject = jsonParser.getEmbeddedObject();
        if (embeddedObject == null) {
            return nodeFactory.nullNode();
        }
        if (embeddedObject.getClass() == byte[].class) {
            return nodeFactory.binaryNode((byte[]) embeddedObject);
        }
        if (embeddedObject instanceof RawValue) {
            return nodeFactory.rawValueNode((RawValue) embeddedObject);
        }
        if (embeddedObject instanceof JsonNode) {
            return (JsonNode) embeddedObject;
        }
        return nodeFactory.pojoNode(embeddedObject);
    }

    /* JADX INFO: compiled from: JsonNodeDeserializer.java */
    static final class ContainerStack {
        private int _end;
        private ContainerNode[] _stack;
        private int _top;

        public int size() {
            return this._top;
        }

        public void push(ContainerNode containerNode) {
            int i = this._top;
            int i2 = this._end;
            if (i < i2) {
                ContainerNode[] containerNodeArr = this._stack;
                this._top = i + 1;
                containerNodeArr[i] = containerNode;
                return;
            }
            if (this._stack == null) {
                this._end = 10;
                this._stack = new ContainerNode[10];
            } else {
                int iMin = i2 + Math.min(4000, Math.max(20, i2 >> 1));
                this._end = iMin;
                this._stack = (ContainerNode[]) Arrays.copyOf(this._stack, iMin);
            }
            ContainerNode[] containerNodeArr2 = this._stack;
            int i3 = this._top;
            this._top = i3 + 1;
            containerNodeArr2[i3] = containerNode;
        }

        public ContainerNode popOrNull() {
            int i = this._top;
            if (i == 0) {
                return null;
            }
            ContainerNode[] containerNodeArr = this._stack;
            int i2 = i - 1;
            this._top = i2;
            return containerNodeArr[i2];
        }
    }
}
