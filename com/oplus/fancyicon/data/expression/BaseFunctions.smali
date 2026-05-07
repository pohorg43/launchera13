.class public Lcom/oplus/fancyicon/data/expression/BaseFunctions;
.super Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BaseFunctions"

.field private static final NUM_1:I = 0x1

.field private static final NUM_10:I = 0xa

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3


# instance fields
.field private final mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    return-void
.end method

.method private digit(II)I
    .registers 5

    if-lez p2, :cond_19

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_9

    if-ne p2, v0, :cond_9

    return p0

    :cond_9
    :goto_9
    if-lez p1, :cond_14

    add-int/lit8 v1, p2, -0x1

    if-ge p0, v1, :cond_14

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_14
    if-lez p1, :cond_19

    rem-int/lit8 p1, p1, 0xa

    return p1

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public static load()V
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->RAND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "rand"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "sin"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->COS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "cos"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->TAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "tan"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ASIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "asin"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ACOS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "acos"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ATAN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "atan"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SINH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "sinh"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->COSH:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "cosh"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SQRT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "sqrt"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ABS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "abs"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LEN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "len"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ROUND:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "round"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->INT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "int"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->ISNULL:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "isnull"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->NOT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "not"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->MIN:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "min"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->MAX:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "max"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->DIGIT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "digit"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->EQ:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "eq"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->NE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "ne"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->GE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "ge"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->GT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "gt"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "le"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->LT:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "lt"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->IFELSE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "ifelse"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->EQS:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "eqs"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->SUBSTR:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "substr"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;->REPLACE:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-direct {v0, v1, v3}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;-><init>(Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;I)V

    const-string v1, "replace"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)D
    .registers 11

    sget-object v0, Lcom/oplus/fancyicon/data/expression/BaseFunctions$1;->$SwitchMap$com$oplus$fancyicon$data$expression$BaseFunctions$Fun:[I

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "BaseFunctions"

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_1ee

    const-string p0, "fail to evalute FunctionExpression, invalid function: "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    :pswitch_1c  #0x1d
    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->evaluateStr([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v6}, Lcom/oplus/fancyicon/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_25  #0x1c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->evaluateStr([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v6}, Lcom/oplus/fancyicon/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_2e  #0x1b
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v4

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    move-wide v2, v5

    :goto_42
    return-wide v2

    :pswitch_43  #0x1a
    array-length v0, p1

    rem-int/lit8 v2, v0, 0x2

    if-eq v2, v4, :cond_60

    const-string p1, "function parameter number should be 2*n+1: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ed

    :cond_60
    :goto_60
    add-int/lit8 p0, v0, -0x1

    div-int/lit8 v1, p0, 0x2

    if-ge v7, v1, :cond_7d

    mul-int/lit8 p0, v7, 0x2

    aget-object v1, p1, p0

    invoke-virtual {v1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_7a

    add-int/2addr p0, v4

    aget-object p0, p1, p0

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    return-wide p0

    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    :cond_7d
    aget-object p0, p1, p0

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    return-wide p0

    :pswitch_84  #0x19
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpg-double p0, p0, v5

    if-gtz p0, :cond_8f

    goto :goto_90

    :cond_8f
    move-wide v2, v5

    :goto_90
    return-wide v2

    :pswitch_91  #0x18
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->isNull(Lcom/oplus/fancyicon/data/Variables;)Z

    move-result p0

    if-eqz p0, :cond_9a

    goto :goto_9b

    :cond_9a
    move-wide v2, v5

    :goto_9b
    return-wide v2

    :pswitch_9c  #0x17
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_ad

    goto :goto_ae

    :cond_ad
    move-wide v2, v5

    :goto_ae
    return-wide v2

    :pswitch_af  #0x16
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_c0

    goto :goto_c1

    :cond_c0
    move-wide v2, v5

    :goto_c1
    return-wide v2

    :pswitch_c2  #0x15
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_d3

    goto :goto_d4

    :cond_d3
    move-wide v2, v5

    :goto_d4
    return-wide v2

    :pswitch_d5  #0x14
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_e6

    goto :goto_e7

    :cond_e6
    move-wide v2, v5

    :goto_e7
    return-wide v2

    :pswitch_e8  #0x13
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-eqz p0, :cond_f9

    goto :goto_fa

    :cond_f9
    move-wide v2, v5

    :goto_fa
    return-wide v2

    :pswitch_fb  #0x12
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    cmpl-double p0, v0, p0

    if-nez p0, :cond_10c

    goto :goto_10d

    :cond_10c
    move-wide v2, v5

    :goto_10d
    return-wide v2

    :pswitch_10e  #0x11
    aget-object v0, p1, v7

    invoke-virtual {v0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    aget-object p1, p1, v4

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->digit(II)I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :pswitch_122  #0x10
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_133  #0xf
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_144  #0xe
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-double p0, p0

    return-wide p0

    :pswitch_14d  #0xd
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    :pswitch_159  #0xc
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_167

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double p0, p0

    return-wide p0

    :cond_167
    const-string p0, "ERROR! BaseFunctions.evaluate() function LEN :"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget-object p1, p1, v7

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    :pswitch_17a  #0xb
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_185  #0xa
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_190  #0x9
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cosh(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_19b  #0x8
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sinh(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1a6  #0x7
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1b1  #0x6
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1bc  #0x5
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1c7  #0x4
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1d2  #0x3
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1dd  #0x2
    aget-object p0, p1, v7

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1e8  #0x1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    return-wide p0

    :goto_1ed
    return-wide v5

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_1e8  #00000001
        :pswitch_1dd  #00000002
        :pswitch_1d2  #00000003
        :pswitch_1c7  #00000004
        :pswitch_1bc  #00000005
        :pswitch_1b1  #00000006
        :pswitch_1a6  #00000007
        :pswitch_19b  #00000008
        :pswitch_190  #00000009
        :pswitch_185  #0000000a
        :pswitch_17a  #0000000b
        :pswitch_159  #0000000c
        :pswitch_14d  #0000000d
        :pswitch_144  #0000000e
        :pswitch_133  #0000000f
        :pswitch_122  #00000010
        :pswitch_10e  #00000011
        :pswitch_fb  #00000012
        :pswitch_e8  #00000013
        :pswitch_d5  #00000014
        :pswitch_c2  #00000015
        :pswitch_af  #00000016
        :pswitch_9c  #00000017
        :pswitch_91  #00000018
        :pswitch_84  #00000019
        :pswitch_43  #0000001a
        :pswitch_2e  #0000001b
        :pswitch_25  #0000001c
        :pswitch_1c  #0000001d
    .end packed-switch
.end method

.method public evaluateStr([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 11

    array-length v0, p1

    sget-object v1, Lcom/oplus/fancyicon/data/expression/BaseFunctions$1;->$SwitchMap$com$oplus$fancyicon$data$expression$BaseFunctions$Fun:[I

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1a

    const-string v3, "BaseFunctions"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_99

    const/16 v0, 0x1c

    const/4 v2, 0x3

    const/4 v6, 0x2

    if-eq v1, v0, :cond_5f

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_27

    invoke-virtual {p0, p1, p2}, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->evaluate([Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_b4

    :cond_27
    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b4

    array-length v0, p1

    if-ne v0, v2, :cond_b4

    :try_start_32
    aget-object v0, p1, v5

    invoke-virtual {v0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v0

    aget-object p1, p1, v6

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_b4

    if-nez p1, :cond_44

    const-string p1, ""

    :cond_44
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_48
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_32 .. :try_end_48} :catch_49

    goto :goto_b4

    :catch_49
    move-exception p1

    const-string p2, "evaluateStr REPLACE error : "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_5f
    aget-object p0, p1, v4

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b3

    :try_start_67
    aget-object v0, p1, v5

    invoke-virtual {v0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v0

    double-to-int v0, v0

    array-length v1, p1

    if-lt v1, v2, :cond_7e

    aget-object p1, p1, v6

    invoke-virtual {p1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_b4

    :cond_7e
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_82
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_67 .. :try_end_82} :catch_83

    goto :goto_b4

    :catch_83
    move-exception p0

    const-string p1, "evaluateStr SUBSTR error : "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    :cond_99
    rem-int/lit8 v1, v0, 0x2

    if-eq v1, v5, :cond_b5

    const-string p1, "function parameter number should be 2*n+1: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    :goto_b3
    const/4 p0, 0x0

    :cond_b4
    :goto_b4
    return-object p0

    :cond_b5
    :goto_b5
    add-int/lit8 p0, v0, -0x1

    div-int/lit8 v1, p0, 0x2

    if-ge v4, v1, :cond_d4

    mul-int/lit8 p0, v4, 0x2

    aget-object v1, p1, p0

    invoke-virtual {v1, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v1

    const-wide/16 v6, 0x0

    cmpl-double v1, v1, v6

    if-lez v1, :cond_d1

    add-int/2addr p0, v5

    aget-object p0, p1, p0

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    :cond_d4
    aget-object p0, p1, p0

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/BaseFunctions;->mFun:Lcom/oplus/fancyicon/data/expression/BaseFunctions$Fun;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method
