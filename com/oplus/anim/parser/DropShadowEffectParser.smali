.class public Lcom/oplus/anim/parser/DropShadowEffectParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DROP_SHADOW_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final INNER_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# instance fields
.field private color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

.field private direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

.field private radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "nm"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private maybeParseInnerEffect(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const-string v0, ""

    :goto_5
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    sget-object v1, Lcom/oplus/anim/parser/DropShadowEffectParser;->INNER_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p1, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1d

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_5

    :cond_1d
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_94

    :goto_29
    move v2, v1

    goto :goto_5f

    :sswitch_2b
    const-string v2, "Softness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_29

    :cond_34
    const/4 v2, 0x4

    goto :goto_5f

    :sswitch_36
    const-string v2, "Shadow Color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto :goto_29

    :cond_3f
    const/4 v2, 0x3

    goto :goto_5f

    :sswitch_41
    const-string v2, "Direction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    goto :goto_29

    :cond_4a
    const/4 v2, 0x2

    goto :goto_5f

    :sswitch_4c
    const-string v3, "Opacity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    goto :goto_29

    :sswitch_55
    const-string v2, "Distance"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    goto :goto_29

    :cond_5e
    move v2, v4

    :cond_5f
    :goto_5f
    packed-switch v2, :pswitch_data_aa

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_5

    :pswitch_66  #0x4
    invoke-static {p1, p2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    goto :goto_5

    :pswitch_6d  #0x3
    invoke-static {p1, p2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseColor(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    goto :goto_5

    :pswitch_74  #0x2
    invoke-static {p1, p2, v4}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    goto :goto_5

    :pswitch_7b  #0x1
    invoke-static {p1, p2, v4}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    goto :goto_5

    :pswitch_82  #0x0
    invoke-static {p1, p2}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    goto/16 :goto_5

    :cond_8a
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_90
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    return-void

    :sswitch_data_94
    .sparse-switch
        0x150bf015 -> :sswitch_55
        0x17b08feb -> :sswitch_4c
        0x3e12275f -> :sswitch_41
        0x5237c863 -> :sswitch_36
        0x5279bda1 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_82  #00000000
        :pswitch_7b  #00000001
        :pswitch_74  #00000002
        :pswitch_6d  #00000003
        :pswitch_66  #00000004
    .end packed-switch
.end method


# virtual methods
.method public parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/parser/DropShadowEffect;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/oplus/anim/parser/DropShadowEffectParser;->DROP_SHADOW_EFFECT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p1, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :cond_15
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_18
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0, p1, p2}, Lcom/oplus/anim/parser/DropShadowEffectParser;->maybeParseInnerEffect(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    goto :goto_18

    :cond_22
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    :cond_26
    iget-object v2, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    if-eqz v2, :cond_41

    iget-object v3, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->opacity:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v3, :cond_41

    iget-object v4, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->direction:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v4, :cond_41

    iget-object v5, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->distance:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v5, :cond_41

    iget-object v6, p0, Lcom/oplus/anim/parser/DropShadowEffectParser;->radius:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    if-eqz v6, :cond_41

    new-instance p0, Lcom/oplus/anim/parser/DropShadowEffect;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/anim/parser/DropShadowEffect;-><init>(Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V

    return-object p0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method
