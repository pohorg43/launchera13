.class public Lcom/oplus/fancyicon/data/expression/StringVariableExpression;
.super Lcom/oplus/fancyicon/data/expression/VariableExpression;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StringVariableExpression"


# instance fields
.field private mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/data/expression/VariableExpression;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method private ensureVar(Lcom/oplus/fancyicon/data/Variables;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-nez v0, :cond_17

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/data/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/VariableExpression;->mVar:Lcom/oplus/fancyicon/data/Variable;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/data/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    :cond_17
    return-void
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/StringVariableExpression;)V

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 4

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_9

    return-wide v0

    :cond_9
    :try_start_9
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_15} :catch_16

    return-wide p0

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringVariableExpression"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->ensureVar(Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/expression/VariableExpression;->tickTargetElement()V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->getIndex()I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->getVersion()I

    move-result p0

    return p0
.end method

.method public isNull(Lcom/oplus/fancyicon/data/Variables;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->ensureVar(Lcom/oplus/fancyicon/data/Variables;)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/expression/VariableExpression;->tickTargetElement()V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;->mIndexedVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->get()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
