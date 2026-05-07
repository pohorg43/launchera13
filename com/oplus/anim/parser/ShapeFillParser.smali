.class Lcom/oplus/anim/parser/ShapeFillParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "o"

    const-string v3, "fillEnabled"

    const-string v4, "r"

    const-string v5, "hd"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/ShapeFillParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeFill;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v5, v0

    move v9, v5

    move v0, v1

    move-object v4, v2

    move-object v7, v4

    :goto_8
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Lcom/oplus/anim/parser/ShapeFillParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_44

    if-eq v3, v1, :cond_3f

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3a

    const/4 v6, 0x3

    if-eq v3, v6, :cond_35

    const/4 v6, 0x4

    if-eq v3, v6, :cond_30

    const/4 v6, 0x5

    if-eq v3, v6, :cond_2b

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_8

    :cond_2b
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v9

    goto :goto_8

    :cond_30
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v0

    goto :goto_8

    :cond_35
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v5

    goto :goto_8

    :cond_3a
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v2

    goto :goto_8

    :cond_3f
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseColor(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v7

    goto :goto_8

    :cond_44
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_49
    if-nez v2, :cond_61

    new-instance p0, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    new-instance p1, Lcom/oplus/anim/value/Keyframe;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    move-object v8, p0

    goto :goto_62

    :cond_61
    move-object v8, v2

    :goto_62
    if-ne v0, v1, :cond_67

    sget-object p0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_69

    :cond_67
    sget-object p0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_69
    move-object v6, p0

    new-instance p0, Lcom/oplus/anim/model/content/ShapeFill;

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oplus/anim/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Z)V

    return-object p0
.end method
