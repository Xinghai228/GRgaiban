.class public final synthetic Lcom/fasterxml/jackson/databind/util/JacksonCollectors$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BinaryOperator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    check-cast p2, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->addAll(Lcom/fasterxml/jackson/databind/node/ArrayNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object p1

    return-object p1
.end method
