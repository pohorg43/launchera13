.class synthetic Lcom/oplus/fancyicon/data/expression/Expression$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->values()[Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    :try_start_9
    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VAR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VARSTR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->NUM:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->STR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->FUN:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$1;->$SwitchMap$com$oplus$fancyicon$data$expression$Expression$Tokenizer$TokenType:[I

    sget-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->BRACKET:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    return-void
.end method
