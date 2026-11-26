package io.github.lazyimmortal.sesame.util;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JsonUtil {
    public static final JsonFactory JSON_FACTORY;
    private static final ObjectMapper MAPPER;
    public static final TypeFactory TYPE_FACTORY;

    static {
        ObjectMapper objectMapper = new ObjectMapper();
        MAPPER = objectMapper;
        TYPE_FACTORY = TypeFactory.defaultInstance();
        JSON_FACTORY = new JsonFactory();
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        objectMapper.setTimeZone(TimeZone.getDefault());
        objectMapper.setDateFormat(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
    }

    public static ObjectMapper copyMapper() {
        return MAPPER.copy();
    }

    public static String toJsonString(Object obj) {
        try {
            return MAPPER.writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String toFormatJsonString(Object obj) {
        try {
            return MAPPER.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isRewriteLossless(String str, String str2) {
        try {
            ObjectMapper objectMapper = MAPPER;
            return dataContainedIn(objectMapper.readTree(str), objectMapper.readTree(str2));
        } catch (Throwable th) {
            Log.printStackTrace(th);
            return false;
        }
    }

    public static String mergeKeepingSourceKeys(String str, String str2) {
        try {
            ObjectMapper objectMapper = MAPPER;
            JsonNode tree = objectMapper.readTree(str);
            JsonNode tree2 = objectMapper.readTree(str2);
            if (tree2 == null) {
                return str;
            }
            return objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(mergeNode(tree, tree2, 0));
        } catch (Throwable th) {
            Log.printStackTrace(th);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.fasterxml.jackson.databind.JsonNode] */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.fasterxml.jackson.databind.JsonNode] */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.fasterxml.jackson.databind.node.ObjectNode] */
    private static JsonNode mergeNode(JsonNode jsonNode, JsonNode jsonNode2, int i) {
        if (i >= 3) {
            return jsonNode2;
        }
        if (jsonNode != null && jsonNode.isObject() && jsonNode2.isObject()) {
            jsonNode2 = ((ObjectNode) jsonNode2).deepCopy();
            Iterator<Map.Entry<String, JsonNode>> itFields = jsonNode.fields();
            while (itFields.hasNext()) {
                Map.Entry<String, JsonNode> next = itFields.next();
                JsonNode jsonNode3 = jsonNode2.get(next.getKey());
                if (jsonNode3 == null) {
                    jsonNode2.set(next.getKey(), next.getValue().deepCopy());
                } else {
                    jsonNode2.set(next.getKey(), mergeNode(next.getValue(), jsonNode3, i + 1));
                }
            }
        }
        return jsonNode2;
    }

    public static boolean isSameData(String str, String str2) {
        try {
            ObjectMapper objectMapper = MAPPER;
            return objectMapper.readTree(str).equals(objectMapper.readTree(str2));
        } catch (Throwable th) {
            Log.printStackTrace(th);
            return false;
        }
    }

    private static boolean dataContainedIn(JsonNode jsonNode, JsonNode jsonNode2) {
        if (jsonNode == null || jsonNode.isNull()) {
            return true;
        }
        if (jsonNode.isObject()) {
            if (jsonNode2 == null || !jsonNode2.isObject()) {
                return false;
            }
            Iterator<Map.Entry<String, JsonNode>> itFields = jsonNode.fields();
            while (itFields.hasNext()) {
                Map.Entry<String, JsonNode> next = itFields.next();
                JsonNode jsonNode3 = jsonNode2.get(next.getKey());
                if (jsonNode3 == null || !dataContainedIn(next.getValue(), jsonNode3)) {
                    return false;
                }
            }
            return true;
        }
        if (jsonNode.isArray()) {
            if (jsonNode2 == null || !jsonNode2.isArray()) {
                return false;
            }
            if (isScalarArray(jsonNode)) {
                if (!isScalarArray(jsonNode2)) {
                    return false;
                }
                HashMap map = new HashMap();
                Iterator<JsonNode> it = jsonNode.iterator();
                while (it.hasNext()) {
                    String string = it.next().toString();
                    Integer num = (Integer) map.get(string);
                    map.put(string, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
                }
                Iterator<JsonNode> it2 = jsonNode2.iterator();
                while (it2.hasNext()) {
                    String string2 = it2.next().toString();
                    Integer num2 = (Integer) map.get(string2);
                    if (num2 != null) {
                        map.put(string2, Integer.valueOf(num2.intValue() - 1));
                    }
                }
                for (Integer num3 : map.values()) {
                    if (num3 != null && num3.intValue() > 0) {
                        return false;
                    }
                }
                return true;
            }
            if (jsonNode2.size() < jsonNode.size()) {
                return false;
            }
            for (int i = 0; i < jsonNode.size(); i++) {
                if (!dataContainedIn(jsonNode.get(i), jsonNode2.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return jsonNode.equals(jsonNode2);
    }

    private static boolean isScalarArray(JsonNode jsonNode) {
        for (JsonNode jsonNode2 : jsonNode) {
            if (jsonNode2.isObject() || jsonNode2.isArray()) {
                return false;
            }
        }
        return true;
    }

    public static JsonParser getJsonParser(String str) {
        try {
            return JSON_FACTORY.createParser(str);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(String str, Type type) {
        try {
            return (T) MAPPER.readValue(str, TYPE_FACTORY.constructType(type));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(String str, JavaType javaType) {
        try {
            return (T) MAPPER.readValue(str, javaType);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(String str, TypeReference<T> typeReference) {
        try {
            return (T) MAPPER.readValue(str, typeReference);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(String str, Class<T> cls) {
        try {
            return (T) MAPPER.readValue(str, cls);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(JsonParser jsonParser, Type type) {
        try {
            return (T) MAPPER.readValue(jsonParser, TYPE_FACTORY.constructType(type));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(JsonParser jsonParser, JavaType javaType) {
        try {
            return (T) MAPPER.readValue(jsonParser, javaType);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(JsonParser jsonParser, TypeReference<T> typeReference) {
        try {
            return (T) MAPPER.readValue(jsonParser, typeReference);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(JsonParser jsonParser, Class<T> cls) {
        try {
            return (T) MAPPER.readValue(jsonParser, cls);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(Object obj, Type type) {
        try {
            return (T) MAPPER.convertValue(obj, TYPE_FACTORY.constructType(type));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(Object obj, JavaType javaType) {
        try {
            return (T) MAPPER.convertValue(obj, javaType);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(Object obj, TypeReference<T> typeReference) {
        try {
            return (T) MAPPER.convertValue(obj, typeReference);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(Object obj, Class<T> cls) {
        try {
            return (T) MAPPER.convertValue(obj, cls);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String parseString(String str, String str2) {
        try {
            JsonNode jsonNode = MAPPER.readTree(str).get(str2);
            if (jsonNode != null) {
                return jsonNode.asText();
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Integer parseInteger(String str, String str2) {
        try {
            JsonNode jsonNode = MAPPER.readTree(str).get(str2);
            if (jsonNode != null) {
                return Integer.valueOf(jsonNode.asInt());
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static List<Integer> parseIntegerList(String str, String str2) {
        try {
            ObjectMapper objectMapper = MAPPER;
            JsonNode jsonNode = objectMapper.readTree(str).get(str2);
            if (jsonNode != null) {
                return (List) objectMapper.convertValue(jsonNode, new TypeReference<List<Integer>>() { // from class: io.github.lazyimmortal.sesame.util.JsonUtil.1
                });
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Boolean parseBoolean(String str, String str2) {
        try {
            JsonNode jsonNode = MAPPER.readTree(str).get(str2);
            if (jsonNode != null) {
                return Boolean.valueOf(jsonNode.asBoolean());
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Short parseShort(String str, String str2) {
        try {
            JsonNode jsonNode = MAPPER.readTree(str).get(str2);
            if (jsonNode != null) {
                return Short.valueOf(Integer.valueOf(jsonNode.asInt()).shortValue());
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Byte parseByte(String str, String str2) {
        try {
            JsonNode jsonNode = MAPPER.readTree(str).get(str2);
            if (jsonNode != null) {
                return Byte.valueOf(Integer.valueOf(jsonNode.asInt()).byteValue());
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> T parseObject(String str, String str2, Class<T> cls) {
        try {
            ObjectMapper objectMapper = MAPPER;
            return (T) objectMapper.treeToValue(objectMapper.readTree(str).get(str2), cls);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static <T> List<T> parseList(String str, Class<T> cls) {
        try {
            return (List) MAPPER.readValue(str, TYPE_FACTORY.constructCollectionType(ArrayList.class, (Class<?>) cls));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static Object toNode(String str) {
        if (str == null) {
            return null;
        }
        try {
            return MAPPER.readTree(str);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String getValueByPath(JSONObject jSONObject, String str) {
        Object valueByPathObject = getValueByPathObject(jSONObject, str);
        return valueByPathObject == null ? "" : String.valueOf(valueByPathObject);
    }

    public static Object getValueByPathObject(JSONObject jSONObject, String str) {
        Object obj;
        String[] strArrSplit = str.split("\\.");
        try {
            int length = strArrSplit.length;
            int i = 0;
            Object obj2 = jSONObject;
            while (i < length) {
                String str2 = strArrSplit[i];
                if (obj2 instanceof JSONObject) {
                    obj = ((JSONObject) obj2).get(str2);
                } else if (obj2 instanceof JSONArray) {
                    obj = ((JSONArray) obj2).get(Integer.parseInt(str2.replaceAll("\\D", "")));
                } else if (str2.contains("[")) {
                    obj = new JSONArray(obj2.toString()).get(Integer.parseInt(str2.replaceAll("\\D", "")));
                } else {
                    obj = new JSONObject(obj2.toString()).get(str2);
                }
                i++;
                obj2 = obj;
            }
            return obj2;
        } catch (Exception unused) {
            return null;
        }
    }

    public static List<String> jsonArrayToList(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            try {
                arrayList.add(jSONArray.getString(i));
            } catch (Exception e) {
                Log.printStackTrace(e);
                arrayList.add("");
            }
        }
        return arrayList;
    }
}
