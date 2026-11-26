.class public Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;
.super Ljava/lang/Object;
.source "SimpleXpathParser.java"


# static fields
.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static final XPATH_ATTR_PATTERN:Ljava/util/regex/Pattern;

.field private static final XPATH_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "//([\\w.]+)\\[contains\\(@(\\w+),\'([^\']*)\'\\)]"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->XPATH_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "//([\\w.]+)\\[@(\\w+)=\'([^\']*)\']"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->XPATH_ATTR_PATTERN:Ljava/util/regex/Pattern;

    .line 25
    const-string v0, "//([\\w.]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->XPATH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {p0, p1, v0, v1, v5}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElements(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->XPATH_ATTR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 55
    invoke-static {p0, p1, v0, v1, v2}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElements(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 59
    :cond_1
    sget-object v1, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElementsByTag(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static findElements(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v6

    .line 79
    invoke-static/range {v0 .. v5}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElementsRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object v6
.end method

.method private static findElementsByTag(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-static {p0, p1, v0}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElementsByTagRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method private static findElementsByTagRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_1
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    .line 143
    invoke-static {v0, p1, p2}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElementsByTagRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findElementsRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getType()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_0
    invoke-virtual {p0, p2}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->attribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_1

    .line 103
    invoke-virtual {v0, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 108
    invoke-interface {p5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_2
    invoke-virtual {p0}, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 115
    invoke-static/range {v1 .. v6}, Lio/github/lazyimmortal/sesame/hook/SimpleXpathParser;->findElementsRecursive(Lio/github/lazyimmortal/sesame/hook/SimpleViewImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    goto :goto_1

    :cond_3
    return-void
.end method
