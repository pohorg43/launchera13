.class Lcom/oplus/anim/parser/KeyframesParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "k"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/KeyframesParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;Z)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;Z)",
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->STRING:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_13

    const-string p0, "Effective doesn\'t support expressions."

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    return-object v0

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    :goto_16
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    sget-object v1, Lcom/oplus/anim/parser/KeyframesParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_16

    :cond_28
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_61

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_49

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;ZZ)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;ZZ)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_5d
    :goto_5d
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_16

    :cond_61
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-static/range {v2 .. v7}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;ZZ)Lcom/oplus/anim/value/Keyframe;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_6f
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    invoke-static {v0}, Lcom/oplus/anim/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    return-object v0
.end method

.method public static setEndFrames(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_5
    :goto_5
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_34

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/value/Keyframe;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/value/Keyframe;

    iget v4, v3, Lcom/oplus/anim/value/Keyframe;->startFrame:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/anim/value/Keyframe;->endFrame:Ljava/lang/Float;

    iget-object v4, v2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_5

    iget-object v3, v3, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iput-object v3, v2, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    instance-of v3, v2, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    invoke-virtual {v2}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;->createPath()V

    goto :goto_5

    :cond_34
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/value/Keyframe;

    iget-object v1, v0, Lcom/oplus/anim/value/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v1, :cond_42

    iget-object v1, v0, Lcom/oplus/anim/value/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v1, :cond_4b

    :cond_42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_4b

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4b
    return-void
.end method
