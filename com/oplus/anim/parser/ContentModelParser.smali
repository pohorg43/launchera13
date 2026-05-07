.class Lcom/oplus/anim/parser/ContentModelParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/ContentModelParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x2

    move v1, v0

    :goto_5
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    sget-object v2, Lcom/oplus/anim/parser/ContentModelParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_23

    if-eq v2, v3, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_5

    :cond_1e
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    goto :goto_5

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, v4

    :goto_29
    if-nez v2, :cond_2c

    return-object v4

    :cond_2c
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_13a

    :goto_34
    move v0, v5

    goto/16 :goto_cf

    :sswitch_37
    const-string v0, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_34

    :cond_40
    const/16 v0, 0xc

    goto/16 :goto_cf

    :sswitch_44
    const-string v0, "tm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_34

    :cond_4d
    const/16 v0, 0xb

    goto/16 :goto_cf

    :sswitch_51
    const-string v0, "st"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_34

    :cond_5a
    const/16 v0, 0xa

    goto/16 :goto_cf

    :sswitch_5e
    const-string v0, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto :goto_34

    :cond_67
    const/16 v0, 0x9

    goto/16 :goto_cf

    :sswitch_6b
    const-string v0, "sh"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_34

    :cond_74
    const/16 v0, 0x8

    goto :goto_cf

    :sswitch_77
    const-string v0, "rp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_34

    :cond_80
    const/4 v0, 0x7

    goto :goto_cf

    :sswitch_82
    const-string v0, "rc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_34

    :cond_8b
    const/4 v0, 0x6

    goto :goto_cf

    :sswitch_8d
    const-string v0, "mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_34

    :cond_96
    const/4 v0, 0x5

    goto :goto_cf

    :sswitch_98
    const-string v0, "gs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_34

    :cond_a1
    const/4 v0, 0x4

    goto :goto_cf

    :sswitch_a3
    const-string v0, "gr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_34

    :cond_ac
    const/4 v0, 0x3

    goto :goto_cf

    :sswitch_ae
    const-string v3, "gf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_cf

    goto/16 :goto_34

    :sswitch_b8
    const-string v0, "fl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_34

    :cond_c2
    move v0, v3

    goto :goto_cf

    :sswitch_c4
    const-string v0, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ce

    goto/16 :goto_34

    :cond_ce
    const/4 v0, 0x0

    :cond_cf
    :goto_cf
    packed-switch v0, :pswitch_data_170

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_12c

    :pswitch_e7  #0xc
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/AnimatableTransformParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v4

    goto :goto_12c

    :pswitch_ec  #0xb
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeTrimPathParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeTrimPath;

    move-result-object v4

    goto :goto_12c

    :pswitch_f1  #0xa
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeStrokeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeStroke;

    move-result-object v4

    goto :goto_12c

    :pswitch_f6  #0x9
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/PolystarShapeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/PolystarShape;

    move-result-object v4

    goto :goto_12c

    :pswitch_fb  #0x8
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapePathParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapePath;

    move-result-object v4

    goto :goto_12c

    :pswitch_100  #0x7
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/RepeaterParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Repeater;

    move-result-object v4

    goto :goto_12c

    :pswitch_105  #0x6
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/RectangleShapeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/RectangleShape;

    move-result-object v4

    goto :goto_12c

    :pswitch_10a  #0x5
    invoke-static {p0}, Lcom/oplus/anim/parser/MergePathsParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;)Lcom/oplus/anim/model/content/MergePaths;

    move-result-object v4

    const-string v0, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_12c

    :pswitch_114  #0x4
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/GradientStrokeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientStroke;

    move-result-object v4

    goto :goto_12c

    :pswitch_119  #0x3
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeGroupParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeGroup;

    move-result-object v4

    goto :goto_12c

    :pswitch_11e  #0x2
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/GradientFillParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/GradientFill;

    move-result-object v4

    goto :goto_12c

    :pswitch_123  #0x1
    invoke-static {p0, p1}, Lcom/oplus/anim/parser/ShapeFillParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeFill;

    move-result-object v4

    goto :goto_12c

    :pswitch_128  #0x0
    invoke-static {p0, p1, v1}, Lcom/oplus/anim/parser/CircleShapeParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;I)Lcom/oplus/anim/model/content/CircleShape;

    move-result-object v4

    :goto_12c
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_136

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_12c

    :cond_136
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    return-object v4

    :sswitch_data_13a
    .sparse-switch
        0xca7 -> :sswitch_c4
        0xcc6 -> :sswitch_b8
        0xcdf -> :sswitch_ae
        0xceb -> :sswitch_a3
        0xcec -> :sswitch_98
        0xda0 -> :sswitch_8d
        0xe31 -> :sswitch_82
        0xe3e -> :sswitch_77
        0xe55 -> :sswitch_6b
        0xe5f -> :sswitch_5e
        0xe61 -> :sswitch_51
        0xe79 -> :sswitch_44
        0xe7e -> :sswitch_37
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_128  #00000000
        :pswitch_123  #00000001
        :pswitch_11e  #00000002
        :pswitch_119  #00000003
        :pswitch_114  #00000004
        :pswitch_10a  #00000005
        :pswitch_105  #00000006
        :pswitch_100  #00000007
        :pswitch_fb  #00000008
        :pswitch_f6  #00000009
        :pswitch_f1  #0000000a
        :pswitch_ec  #0000000b
        :pswitch_e7  #0000000c
    .end packed-switch
.end method
