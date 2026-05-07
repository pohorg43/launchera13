.class Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/elements/VariableArrayElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mNumValue:D

.field public mStrValue:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_8

    return-void

    :cond_8
    const-string v0, "expression"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v0, "value"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->b(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Z

    move-result p1

    if-nez p1, :cond_2c

    :try_start_24
    iget-object p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mNumValue:D
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/Double;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_17
    iget-wide p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mNumValue:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mStrValue:Ljava/lang/String;

    return-object p0
.end method

.method public isExpression()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;->mExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
