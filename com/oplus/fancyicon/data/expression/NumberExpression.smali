.class public Lcom/oplus/fancyicon/data/expression/NumberExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NumberExpression"


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    :try_start_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mValue:D
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/NumberExpression;)V

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 2

    iget-wide p0, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mValue:D

    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 4

    iget-object p1, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mString:Ljava/lang/String;

    if-nez p1, :cond_c

    iget-wide v0, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mValue:D

    invoke-static {v0, v1}, Lcom/oplus/fancyicon/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mString:Ljava/lang/String;

    :cond_c
    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/NumberExpression;->mString:Ljava/lang/String;

    return-object p0
.end method
