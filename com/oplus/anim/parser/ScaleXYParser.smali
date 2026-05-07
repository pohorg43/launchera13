.class public Lcom/oplus/anim/parser/ScaleXYParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/parser/ValueParser<",
        "Lcom/oplus/anim/value/ScaleXY;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/anim/parser/ScaleXYParser;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/anim/parser/ScaleXYParser;

    invoke-direct {v0}, Lcom/oplus/anim/parser/ScaleXYParser;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/ScaleXYParser;->INSTANCE:Lcom/oplus/anim/parser/ScaleXYParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Lcom/oplus/anim/value/ScaleXY;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne p0, v0, :cond_a

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

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1a
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    if-eqz p0, :cond_29

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    :cond_29
    new-instance p0, Lcom/oplus/anim/value/ScaleXY;

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/oplus/anim/value/ScaleXY;-><init>(FF)V

    return-object p0
.end method

.method public bridge synthetic parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/anim/parser/ScaleXYParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Lcom/oplus/anim/value/ScaleXY;

    move-result-object p0

    return-object p0
.end method
