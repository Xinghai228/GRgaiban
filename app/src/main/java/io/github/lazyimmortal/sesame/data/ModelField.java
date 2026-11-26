package io.github.lazyimmortal.sesame.data;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import io.github.lazyimmortal.sesame.R;
import io.github.lazyimmortal.sesame.util.JsonUtil;
import io.github.lazyimmortal.sesame.util.ToastUtil;
import io.github.lazyimmortal.sesame.util.TypeUtil;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ModelField<T> implements Serializable {

    @JsonIgnore
    private String code;

    @JsonIgnore
    protected T defaultValue;

    @JsonIgnore
    private String description;

    @JsonIgnore
    private String name;
    protected volatile T value;

    @JsonIgnore
    private final Type valueType;

    public Object fromConfigValue(String str) {
        return str;
    }

    @JsonIgnore
    public Object getExpandKey() {
        return null;
    }

    @JsonIgnore
    public Object getExpandValue() {
        return null;
    }

    public Object toConfigValue(T t) {
        return t;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof ModelField;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ModelField)) {
            return false;
        }
        ModelField modelField = (ModelField) obj;
        if (!modelField.canEqual(this)) {
            return false;
        }
        Type valueType = getValueType();
        Type valueType2 = modelField.getValueType();
        if (valueType != null ? !valueType.equals(valueType2) : valueType2 != null) {
            return false;
        }
        String code = getCode();
        String code2 = modelField.getCode();
        if (code != null ? !code.equals(code2) : code2 != null) {
            return false;
        }
        String name = getName();
        String name2 = modelField.getName();
        if (name != null ? !name.equals(name2) : name2 != null) {
            return false;
        }
        String description = getDescription();
        String description2 = modelField.getDescription();
        if (description != null ? !description.equals(description2) : description2 != null) {
            return false;
        }
        T defaultValue = getDefaultValue();
        Object defaultValue2 = modelField.getDefaultValue();
        if (defaultValue != null ? !defaultValue.equals(defaultValue2) : defaultValue2 != null) {
            return false;
        }
        T value = getValue();
        Object value2 = modelField.getValue();
        return value != null ? value.equals(value2) : value2 == null;
    }

    public int hashCode() {
        Type valueType = getValueType();
        int iHashCode = valueType == null ? 43 : valueType.hashCode();
        String code = getCode();
        int iHashCode2 = ((iHashCode + 59) * 59) + (code == null ? 43 : code.hashCode());
        String name = getName();
        int iHashCode3 = (iHashCode2 * 59) + (name == null ? 43 : name.hashCode());
        String description = getDescription();
        int iHashCode4 = (iHashCode3 * 59) + (description == null ? 43 : description.hashCode());
        T defaultValue = getDefaultValue();
        int iHashCode5 = (iHashCode4 * 59) + (defaultValue == null ? 43 : defaultValue.hashCode());
        T value = getValue();
        return (iHashCode5 * 59) + (value != null ? value.hashCode() : 43);
    }

    @JsonIgnore
    public void setCode(String str) {
        this.code = str;
    }

    @JsonIgnore
    public void setDefaultValue(T t) {
        this.defaultValue = t;
    }

    @JsonIgnore
    public void setDescription(String str) {
        this.description = str;
    }

    @JsonIgnore
    public void setName(String str) {
        this.name = str;
    }

    public void setValue(T t) {
        this.value = t;
    }

    public String toString() {
        return "ModelField(valueType=" + getValueType() + ", code=" + getCode() + ", name=" + getName() + ", description=" + getDescription() + ", defaultValue=" + getDefaultValue() + ", value=" + getValue() + ")";
    }

    public Type getValueType() {
        return this.valueType;
    }

    public String getCode() {
        return this.code;
    }

    public String getName() {
        return this.name;
    }

    public String getDescription() {
        return this.description;
    }

    public T getDefaultValue() {
        return this.defaultValue;
    }

    public T getValue() {
        return this.value;
    }

    public ModelField() {
        this.valueType = TypeUtil.getTypeArgument(getClass().getGenericSuperclass(), 0);
    }

    public ModelField(T t) {
        this(null, null, t);
    }

    public ModelField(String str, String str2, T t) {
        this();
        this.code = str;
        this.name = str2;
        this.defaultValue = t;
        this.description = null;
        setObjectValue(t);
    }

    public ModelField(String str, String str2, T t, String str3) {
        this();
        this.code = str;
        this.name = str2;
        this.defaultValue = t;
        this.description = str3;
        setObjectValue(t);
    }

    public void setObjectValue(Object obj) {
        if (obj == null) {
            reset();
        } else {
            this.value = (T) JsonUtil.parseObject(obj, this.valueType);
        }
    }

    @JsonIgnore
    public String getType() {
        return "DEFAULT";
    }

    @JsonIgnore
    public String getConfigValue() {
        return JsonUtil.toJsonString(toConfigValue(this.value));
    }

    @JsonIgnore
    public void setConfigValue(String str) {
        if (str == null) {
            reset();
            return;
        }
        Object objFromConfigValue = fromConfigValue(str);
        if (Objects.equals(objFromConfigValue, str)) {
            this.value = (T) JsonUtil.parseObject(str, this.valueType);
        } else {
            this.value = (T) JsonUtil.parseObject(objFromConfigValue, this.valueType);
        }
    }

    public void reset() {
        T t = this.defaultValue;
        if (t == null) {
            this.value = null;
        } else {
            this.value = (T) JsonUtil.parseObject(JsonUtil.toJsonString(t), this.valueType);
        }
    }

    @JsonIgnore
    public View getView(final Context context) {
        TextView textView = new TextView(context);
        textView.setText(getName());
        textView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        textView.setTextColor(ContextCompat.getColor(context, R.color.button));
        textView.setBackground(ContextCompat.getDrawable(context, R.drawable.button));
        textView.setGravity(8388627);
        textView.setMinHeight(150);
        textView.setMaxHeight(180);
        textView.setPaddingRelative(40, 0, 40, 0);
        textView.setAllCaps(false);
        textView.setOnClickListener(new View.OnClickListener() { // from class: io.github.lazyimmortal.sesame.data.ModelField$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToastUtil.show(context, "无配置项");
            }
        });
        return textView;
    }
}
