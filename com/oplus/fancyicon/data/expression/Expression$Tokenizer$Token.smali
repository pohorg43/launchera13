.class public Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public mToken:Ljava/lang/String;

.field public mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;->INVALID:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mTokenType:Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$TokenType;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/expression/Expression$Tokenizer$Token;->mToken:Ljava/lang/String;

    return-void
.end method
