.class public Lcom/oplus/fancyicon/data/expression/BinaryExpression;
.super Lcom/oplus/fancyicon/data/expression/Expression;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/expression/Expression;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    iput-object v1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-static {p3}, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->parseOperator(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    if-ne p1, v1, :cond_31

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "BinaryExpression: invalid operator:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-void
.end method

.method public static parseOperator(C)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
    .registers 2

    const/16 v0, 0x25

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_20

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1d

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_17

    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0

    :cond_17
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->ADD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MUL:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0

    :cond_1d
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->DIV:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0

    :cond_20
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MIN:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0

    :cond_23
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->MOD:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0
.end method

.method public static parseOperator(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;
    .registers 3

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    goto :goto_14

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->parseOperator(C)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    move-result-object p0

    return-object p0

    :cond_14
    :goto_14
    sget-object p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
    .registers 3

    invoke-virtual {p1, p0}, Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;->visit(Lcom/oplus/fancyicon/data/expression/BinaryExpression;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate(Lcom/oplus/fancyicon/data/Variables;)D
    .registers 4

    sget-object v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_31

    const/4 v1, 0x5

    if-eq v0, v1, :cond_23

    const-string p0, "Expression"

    const-string p1, "fail to evaluate BinaryExpression, invalid operator"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_23
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    rem-double/2addr v0, p0

    return-wide v0

    :cond_31
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_3f
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_4d
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_5b
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v1, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BinaryExpression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$BinaryExpression$Ope:[I

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_21

    const-string p0, "Expression"

    const-string p1, "fail to evaluate string BinaryExpression, invalid operator"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_21
    if-eqz v0, :cond_2b

    if-nez p1, :cond_26

    return-object v0

    :cond_26
    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public isNull(Lcom/oplus/fancyicon/data/Variables;)Z
    .registers 6

    sget-object v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$BinaryExpression$Ope:[I

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mOpe:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2c

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2c

    goto :goto_3d

    :cond_1b
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_3e

    :cond_2c
    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp1:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->mExp2:Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result p0

    if-nez p0, :cond_3d

    return v1

    :cond_3d
    :goto_3d
    return v2

    :cond_3e
    :goto_3e
    return v1
.end method
