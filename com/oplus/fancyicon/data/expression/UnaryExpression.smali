.class public Lcom/oplus/fancyicon/data/expression/UnaryExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnaryExpression"


# instance fields
.field private mExp:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mOpe:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    sget-object v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-static {p2}, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->parseOperator(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    if-ne p1, v0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BinaryExpression: invalid operator:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Expression"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public static parseOperator(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;
    .registers 2

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->MIN:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    return-object p0

    :cond_b
    sget-object p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/UnaryExpression;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 4

    sget-object v0, Lcom/oplus/fancyicon/data/expression/UnaryExpression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$UnaryExpression$Ope:[I

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/UnaryExpression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    return-wide p0

    :cond_14
    const-wide/16 v0, 0x0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNull(Lcom/oplus/fancyicon/data/Variables;)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/UnaryExpression;->mExp:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result p0

    return p0
.end method
