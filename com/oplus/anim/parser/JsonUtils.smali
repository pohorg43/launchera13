.class Lcom/oplus/anim/parser/JsonUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final POINT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/JsonUtils;->POINT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jsonArrayToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_d
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-eq v2, v3, :cond_19

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_d

    :cond_19
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static jsonNumbersToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_a
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_a

    :cond_14
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static jsonObjectToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-object v2, Lcom/oplus/anim/parser/JsonUtils;->POINT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_22

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1d

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_5

    :cond_1d
    invoke-static {p0}, Lcom/oplus/anim/parser/JsonUtils;->valueFromObject(Lcom/oplus/anim/parser/moshi/JsonReader;)F

    move-result v1

    goto :goto_5

    :cond_22
    invoke-static {p0}, Lcom/oplus/anim/parser/JsonUtils;->valueFromObject(Lcom/oplus/anim/parser/moshi/JsonReader;)F

    move-result v0

    goto :goto_5

    :cond_27
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static jsonToColor(Lcom/oplus/anim/parser/moshi/JsonReader;)I
    .registers 7
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L  # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    :goto_1a
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    const/16 p0, 0xff

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/oplus/anim/parser/JsonUtils$1;->$SwitchMap$com$oplus$anim$parser$moshi$JsonReader$Token:[I

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonObjectToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown point starts with "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonArrayToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_36
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonNumbersToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static jsonToPoints(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_8
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_8

    :cond_1e
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return-object v0
.end method

.method public static valueFromObject(Lcom/oplus/anim/parser/moshi/JsonReader;)F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/parser/JsonUtils$1;->$SwitchMap$com$oplus$anim$parser$moshi$JsonReader$Token:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    :goto_1a
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1a

    :cond_24
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return v0

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value for token of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
