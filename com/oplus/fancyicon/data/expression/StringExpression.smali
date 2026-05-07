.class public Lcom/oplus/fancyicon/data/expression/StringExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "StringExpression"


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/StringExpression;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/StringExpression;)V

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringExpression;->mValue:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_11

    :catch_f
    const-wide/16 p0, 0x0

    :goto_11
    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/StringExpression;->mValue:Ljava/lang/String;

    return-object p0
.end method
