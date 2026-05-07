.class public Lcom/oplus/anim/parser/ColorParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/parser/ValueParser<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/anim/parser/ColorParser;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/anim/parser/ColorParser;

    invoke-direct {v0}, Lcom/oplus/anim/parser/ColorParser;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/ColorParser;->INSTANCE:Lcom/oplus/anim/parser/ColorParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Integer;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object p2, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :cond_10
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object p2

    sget-object v6, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    if-ne p2, v6, :cond_2b

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v9

    goto :goto_2c

    :cond_2b
    move-wide v9, v7

    :goto_2c
    if-eqz p0, :cond_31

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    :cond_31
    cmpg-double p0, v0, v7

    if-gtz p0, :cond_4a

    cmpg-double p0, v2, v7

    if-gtz p0, :cond_4a

    cmpg-double p0, v4, v7

    if-gtz p0, :cond_4a

    const-wide p0, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    cmpg-double p2, v9, v7

    if-gtz p2, :cond_4a

    mul-double/2addr v9, p0

    :cond_4a
    double-to-int p0, v9

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/parser/ColorParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
