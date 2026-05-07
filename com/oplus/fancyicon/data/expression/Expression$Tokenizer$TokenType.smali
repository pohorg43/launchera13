.class public final enum Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum VAR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

.field public static final enum VARSTR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->INVALID:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v3, "VAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VAR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v5, "VARSTR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->VARSTR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v5, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v7, "NUM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->NUM:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v9, "STR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->STR:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v9, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v11, "OPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->OPE:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v11, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v13, "FUN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->FUN:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    new-instance v13, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const-string v15, "BRACKET"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->BRACKET:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->$VALUES:[Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    return-object v0
.end method
