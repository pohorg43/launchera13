.class Lcom/oplus/anim/parser/BlurEffectParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final INNER_BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "ty"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static maybeParseInnerEffect(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/BlurEffect;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_5
    move v2, v0

    :goto_6
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Lcom/oplus/anim/parser/BlurEffectParser;->INNER_BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2e

    if-eq v3, v4, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_6

    :cond_1e
    if-eqz v2, :cond_2a

    new-instance v1, Lcom/oplus/anim/model/content/BlurEffect;

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/oplus/anim/model/content/BlurEffect;-><init>(Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    goto :goto_6

    :cond_2a
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_6

    :cond_2e
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    goto :goto_6

    :cond_36
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    return-object v1
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/BlurEffect;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/oplus/anim/parser/BlurEffectParser;->BLUR_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/BlurEffectParser;->maybeParseInnerEffect(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object v1

    if-eqz v1, :cond_19

    move-object v0, v1

    goto :goto_19

    :cond_27
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_1

    :cond_2b
    return-object v0
.end method
