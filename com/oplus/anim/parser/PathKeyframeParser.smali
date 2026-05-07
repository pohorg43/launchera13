.class Lcom/oplus/anim/parser/PathKeyframeParser;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/animation/keyframe/PathKeyframe;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v5, v0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v3

    sget-object v4, Lcom/oplus/anim/parser/PathParser;->INSTANCE:Lcom/oplus/anim/parser/PathParser;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/anim/parser/KeyframeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;ZZ)Lcom/oplus/anim/value/Keyframe;

    move-result-object p0

    new-instance v0, Lcom/oplus/anim/animation/keyframe/PathKeyframe;

    invoke-direct {v0, p1, p0}, Lcom/oplus/anim/animation/keyframe/PathKeyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/value/Keyframe;)V

    return-object v0
.end method
