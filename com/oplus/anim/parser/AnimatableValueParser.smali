.class public Lcom/oplus/anim/parser/AnimatableValueParser;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "F",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lcom/oplus/anim/parser/KeyframesParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lcom/oplus/anim/parser/KeyframesParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static parseColor(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    sget-object v1, Lcom/oplus/anim/parser/ColorParser;->INSTANCE:Lcom/oplus/anim/parser/ColorParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseDocumentData(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextFrame;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    sget-object v1, Lcom/oplus/anim/parser/DocumentDataParser;->INSTANCE:Lcom/oplus/anim/parser/DocumentDataParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result p2

    goto :goto_b

    :cond_9
    const/high16 p2, 0x3f800000  # 1.0f

    :goto_b
    sget-object v1, Lcom/oplus/anim/parser/FloatParser;->INSTANCE:Lcom/oplus/anim/parser/FloatParser;

    invoke-static {p0, p2, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseGradientColor(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;

    new-instance v1, Lcom/oplus/anim/parser/GradientColorParser;

    invoke-direct {v1, p2}, Lcom/oplus/anim/parser/GradientColorParser;-><init>(I)V

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseInteger(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    sget-object v1, Lcom/oplus/anim/parser/IntegerParser;->INSTANCE:Lcom/oplus/anim/parser/IntegerParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parsePoint(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatablePointValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatablePointValue;

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/oplus/anim/parser/PointFParser;->INSTANCE:Lcom/oplus/anim/parser/PointFParser;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/oplus/anim/parser/KeyframesParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatablePointValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseScale(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableScaleValue;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;

    sget-object v1, Lcom/oplus/anim/parser/ScaleXYParser;->INSTANCE:Lcom/oplus/anim/parser/ScaleXYParser;

    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseShapeData(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableShapeValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableShapeValue;

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/oplus/anim/parser/ShapeDataParser;->INSTANCE:Lcom/oplus/anim/parser/ShapeDataParser;

    invoke-static {p0, v1, p1, v2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method
