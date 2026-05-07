.class Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;,
        Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;
    }
.end annotation


# instance fields
.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;
    .registers 13

    iget v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    iget-object v1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    const-string v5, "Expression"

    const/4 v6, 0x0

    if-ge v0, v1, :cond_148

    iget-object v7, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v4, :cond_11f

    const/16 v8, 0x23

    const/4 v9, 0x1

    if-eq v7, v8, :cond_db

    const/16 v10, 0x40

    if-ne v7, v10, :cond_23

    goto/16 :goto_db

    :cond_23
    invoke-static {v7}, Lcom/oplus/fancyicon/data/expression/Expression;->a(C)Z

    move-result v5

    if-eqz v5, :cond_53

    add-int/lit8 v1, v0, 0x1

    :goto_2b
    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/oplus/fancyicon/data/expression/Expression;->a(C)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_43

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_43
    :goto_43
    iput v1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->NUM:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_53
    invoke-static {v7}, Lcom/oplus/fancyicon/data/expression/Expression;->b(C)Z

    move-result v5

    if-eqz v5, :cond_83

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_61
    if-ge v1, v2, :cond_73

    iget-object v3, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/oplus/fancyicon/data/expression/Expression;->b(C)Z

    move-result v3

    if-nez v3, :cond_70

    goto :goto_73

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_73
    :goto_73
    iput v1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->FUN:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_83
    invoke-static {v7}, Lcom/oplus/fancyicon/data/expression/BinaryExpression;->parseOperator(C)Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    move-result-object v5

    sget-object v6, Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;->INVALID:Lcom/oplus/fancyicon/data/expression/BinaryExpression$Ope;

    if-eq v5, v6, :cond_9a

    add-int/2addr v0, v9

    iput v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object p0

    :cond_9a
    const/16 v5, 0x27

    if-ne v7, v5, :cond_11f

    add-int/lit8 v1, v0, 0x1

    iget-object v6, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v8, v1

    move v10, v3

    :goto_a8
    if-ge v8, v6, :cond_d9

    iget-object v11, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-nez v10, :cond_cf

    if-eq v11, v5, :cond_b5

    goto :goto_cf

    :cond_b5
    add-int/lit8 v0, v8, 0x1

    iput v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    sget-object v2, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->STR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\\'"

    const-string v3, "\'"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v0

    :cond_cf
    :goto_cf
    const/16 v10, 0x5c

    if-ne v11, v10, :cond_d5

    move v10, v9

    goto :goto_d6

    :cond_d5
    move v10, v3

    :goto_d6
    add-int/lit8 v8, v8, 0x1

    goto :goto_a8

    :cond_d9
    move v1, v6

    goto :goto_11f

    :cond_db
    :goto_db
    add-int/2addr v0, v9

    move v1, v0

    :goto_dd
    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_f5

    iget-object v2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/oplus/fancyicon/data/expression/Expression;->c(C)Z

    move-result v2

    if-nez v2, :cond_f2

    goto :goto_f5

    :cond_f2
    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    :cond_f5
    :goto_f5
    if-ne v1, v0, :cond_10a

    const-string v0, "invalid variable name:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_10a
    iput v1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance v2, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    if-ne v7, v8, :cond_113

    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VAR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    goto :goto_115

    :cond_113
    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VARSTR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    :goto_115
    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v2

    :cond_11f
    :goto_11f
    const/16 v5, 0x28

    if-ne v7, v5, :cond_12a

    if-nez v4, :cond_127

    add-int/lit8 v2, v0, 0x1

    :cond_127
    add-int/lit8 v4, v4, 0x1

    goto :goto_144

    :cond_12a
    const/16 v5, 0x29

    if-ne v7, v5, :cond_144

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_144

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    new-instance v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;

    sget-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->BRACKET:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;-><init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v1

    :cond_144
    :goto_144
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_148
    if-eqz v4, :cond_15c

    const-string v0, "mismatched bracket:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15c
    return-object v6
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;->mPos:I

    return-void
.end method
