.class public abstract Lcom/oplus/fancyicon/data/expression/Expression;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/Expression$FunctionImpl;,
        Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "Expression"

.field private static final USE_ROOT_CACHE:Z

.field private static sOperatorsPriority:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "+-"

    const-string v1, "*/%"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/data/expression/Expression;->sOperatorsPriority:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(C)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/fancyicon/data/expression/Expression;->isDigitChar(C)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(C)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/fancyicon/data/expression/Expression;->isFunctionChar(C)Z

    move-result p0

    return p0
.end method

.method public static build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->buildInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p0

    return-object p0
.end method

.method private static buildBracket(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;Ljava/util/Stack;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;",
            "Ljava/util/Stack<",
            "Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;",
            ">;",
            "Lcom/oplus/fancyicon/ScreenElementRoot;",
            ")",
            "Lcom/oplus/fancyicon/data/expression/Expression;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/oplus/fancyicon/data/expression/Expression;->buildMultiple(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/fancyicon/data/expression/Expression;->checkParams([Lcom/oplus/fancyicon/data/expression/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Expression"

    if-nez v0, :cond_22

    const-string p1, "invalid expressions: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_22
    :try_start_22
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    iget-object v0, v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->FUN:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    if-ne v0, v3, :cond_46

    new-instance v0, Lcom/oplus/fancyicon/data/expression/FunctionExpression;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    iget-object p1, p1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/oplus/fancyicon/data/expression/FunctionExpression;->setParaExps([Lcom/oplus/fancyicon/data/expression/Expression;)Lcom/oplus/fancyicon/data/expression/FunctionExpression;

    move-result-object p0

    return-object p0

    :cond_46
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_60

    const/4 p1, 0x0

    aget-object p0, p2, p1
    :try_end_4d
    .catch Lcom/oplus/fancyicon/ScreenElementLoadException; {:try_start_22 .. :try_end_4d} :catch_4e

    return-object p0

    :catch_4e
    const-string p1, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-object v1
.end method

.method private static buildInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 16

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return-object v1

    :cond_c
    new-instance v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    const/4 v4, 0x0

    move-object v6, v1

    move v5, v4

    :goto_1e
    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->getToken()Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    move-result-object v7

    const-string v8, "Expression"

    const/4 v9, 0x1

    if-eqz v7, :cond_11c

    sget-object v10, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    iget-object v11, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    const-string v12, "-"

    packed-switch v11, :pswitch_data_166

    goto/16 :goto_119

    :pswitch_38  #0x7
    invoke-static {v7, v2, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->buildBracket(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;Ljava/util/Stack;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v6

    if-nez v6, :cond_3f

    return-object v1

    :cond_3f
    if-eqz v5, :cond_47

    new-instance v8, Lcom/oplus/fancyicon/data/expression/UnaryExpression;

    invoke-direct {v8, v6, v12}, Lcom/oplus/fancyicon/data/expression/UnaryExpression;-><init>(Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V

    move-object v6, v8

    :cond_47
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_119

    :pswitch_4c  #0x6
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_119

    :pswitch_51  #0x1, 0x2, 0x3, 0x4, 0x5
    iget-object v11, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v9, :cond_101

    const/4 v11, 0x2

    if-eq v10, v11, :cond_f9

    const/4 v13, 0x3

    if-eq v10, v13, :cond_da

    const/4 v13, 0x4

    if-eq v10, v13, :cond_d2

    const/4 v13, 0x5

    if-eq v10, v13, :cond_6a

    move-object v6, v1

    goto/16 :goto_108

    :cond_6a
    iget-object v5, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    if-eqz v6, :cond_7b

    iget-object v5, v6, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    sget-object v6, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    if-eq v5, v6, :cond_7b

    goto :goto_7f

    :cond_7b
    move-object v6, v1

    move v5, v9

    goto/16 :goto_108

    :cond_7f
    :goto_7f
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v5

    if-lez v5, :cond_cd

    iget-object v5, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    iget-object v6, v6, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/oplus/fancyicon/data/expression/Expression;->cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_cd

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v5

    if-lt v5, v11, :cond_b8

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/fancyicon/data/expression/Expression;

    new-instance v9, Lcom/oplus/fancyicon/data/expression/BinaryExpression;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    iget-object v10, v10, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v9, v6, v5, v10}, Lcom/oplus/fancyicon/data/expression/BinaryExpression;-><init>(Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_b8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to build: invalid operation position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_cd
    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_ef

    :cond_d2
    new-instance v6, Lcom/oplus/fancyicon/data/expression/StringExpression;

    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v6, v8}, Lcom/oplus/fancyicon/data/expression/StringExpression;-><init>(Ljava/lang/String;)V

    goto :goto_108

    :cond_da
    if-eqz v5, :cond_f1

    new-instance v5, Lcom/oplus/fancyicon/data/expression/NumberExpression;

    invoke-static {v12}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/oplus/fancyicon/data/expression/NumberExpression;-><init>(Ljava/lang/String;)V

    move-object v6, v5

    :goto_ef
    move v5, v4

    goto :goto_108

    :cond_f1
    new-instance v6, Lcom/oplus/fancyicon/data/expression/NumberExpression;

    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v6, v8}, Lcom/oplus/fancyicon/data/expression/NumberExpression;-><init>(Ljava/lang/String;)V

    goto :goto_108

    :cond_f9
    new-instance v6, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;

    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v6, v8, p1}, Lcom/oplus/fancyicon/data/expression/StringVariableExpression;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    goto :goto_108

    :cond_101
    new-instance v6, Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;

    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v6, v8, p1}, Lcom/oplus/fancyicon/data/expression/NumberVariableExpression;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    :goto_108
    iget-object v8, v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    sget-object v9, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    if-eq v8, v9, :cond_119

    if-eqz v5, :cond_116

    new-instance v8, Lcom/oplus/fancyicon/data/expression/UnaryExpression;

    invoke-direct {v8, v6, v12}, Lcom/oplus/fancyicon/data/expression/UnaryExpression;-><init>(Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V

    move-object v6, v8

    :cond_116
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_119
    :goto_119
    move-object v6, v7

    goto/16 :goto_1e

    :cond_11c
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result p1

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/2addr v0, v9

    if-eq p1, v0, :cond_13c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to build: invalid expression:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_13c
    :goto_13c
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result p0

    if-lez p0, :cond_15f

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/fancyicon/data/expression/Expression;

    new-instance v0, Lcom/oplus/fancyicon/data/expression/BinaryExpression;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    iget-object v1, v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v1}, Lcom/oplus/fancyicon/data/expression/BinaryExpression;-><init>(Lcom/oplus/fancyicon/data/expression/Expression;Lcom/oplus/fancyicon/data/expression/Expression;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13c

    :cond_15f
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/Expression;

    return-object p0

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_51  #00000002
        :pswitch_51  #00000003
        :pswitch_51  #00000004
        :pswitch_51  #00000005
        :pswitch_4c  #00000006
        :pswitch_38  #00000007
    .end packed-switch
.end method

.method public static buildMultiple(Ljava/lang/String;)[Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->buildMultiple(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static buildMultiple(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->buildMultipleInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p0

    return-object p0
.end method

.method private static buildMultipleInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)[Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_d
    if-ge v2, v1, :cond_3f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-nez v4, :cond_36

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_29

    if-nez v5, :cond_29

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->buildInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v2, 0x1

    goto :goto_36

    :cond_29
    const/16 v7, 0x28

    if-ne v6, v7, :cond_30

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_30
    const/16 v7, 0x29

    if-ne v6, v7, :cond_36

    add-int/lit8 v5, v5, -0x1

    :cond_36
    :goto_36
    const/16 v7, 0x27

    if-ne v6, v7, :cond_3c

    xor-int/lit8 v4, v4, 0x1

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_3f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_50

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/data/expression/Expression;->buildInner(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/oplus/fancyicon/data/expression/Expression;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/oplus/fancyicon/data/expression/Expression;

    return-object p0
.end method

.method public static bridge synthetic c(C)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/fancyicon/data/expression/Expression;->isVariableChar(C)Z

    move-result p0

    return p0
.end method

.method private static checkParams([Lcom/oplus/fancyicon/data/expression/Expression;)Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_d

    aget-object v2, p0, v1

    if-nez v2, :cond_a

    return v0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method private static cmpOpePri(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/oplus/fancyicon/data/expression/Expression;->getPriority(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lcom/oplus/fancyicon/data/expression/Expression;->getPriority(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static getPriority(Ljava/lang/String;)I
    .registers 4

    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression;->sOperatorsPriority:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    sget-object v2, Lcom/oplus/fancyicon/data/expression/Expression;->sOperatorsPriority:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_11

    return v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    const/4 p0, -0x1

    return p0
.end method

.method private static isDigitChar(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_c

    :cond_8
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private static isFunctionChar(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static isVariableChar(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_8

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7a

    if-le p0, v0, :cond_23

    :cond_10
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x5a

    if-le p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method


# virtual methods
.method public abstract accept(Lcom/oplus/fancyicon/data/expression/ExpressionVisitor;)V
.end method

.method public abstract evaluate(Lcom/oplus/fancyicon/data/Variables;)D
.end method

.method public evaluateStr(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public isNull(Lcom/oplus/fancyicon/data/Variables;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
