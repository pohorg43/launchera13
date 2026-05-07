.class Lcom/oplus/anim/parser/ShapeStrokeParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DASH_PATTERN_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string v0, "nm"

    const-string v1, "c"

    const-string v2, "w"

    const-string v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/ShapeStrokeParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "n"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ShapeStroke;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move v11, v1

    move v10, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :cond_12
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_fc

    sget-object v13, Lcom/oplus/anim/parser/ShapeStrokeParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v13}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v13

    const/4 v14, 0x1

    packed-switch v13, :pswitch_data_124

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_12

    :pswitch_28  #0x8
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_57

    sget-object v2, Lcom/oplus/anim/parser/ShapeStrokeParser;->DASH_PATTERN_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_52

    if-eq v2, v14, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_36

    :cond_4d
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v15

    goto :goto_36

    :cond_52
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto :goto_36

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_13a

    :goto_64
    const/4 v2, -0x1

    goto :goto_86

    :sswitch_66
    const-string v2, "o"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_64

    :cond_6f
    const/4 v2, 0x2

    goto :goto_86

    :sswitch_71
    const-string v2, "g"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_64

    :cond_7a
    move v2, v14

    goto :goto_86

    :sswitch_7c
    const-string v2, "d"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto :goto_64

    :cond_85
    move v2, v1

    :goto_86
    packed-switch v2, :pswitch_data_148

    move-object/from16 v2, p1

    goto :goto_2b

    :pswitch_8c  #0x2
    move-object/from16 v2, p1

    move-object v5, v15

    goto :goto_2b

    :pswitch_90  #0x0, 0x1
    move-object/from16 v2, p1

    invoke-virtual {v2, v14}, Lcom/oplus/anim/EffectiveAnimationComposition;->setHasDashPattern(Z)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_99
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v13, v14, :cond_12

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    :pswitch_ad  #0x7
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v11

    goto/16 :goto_12

    :pswitch_b5  #0x6
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v10, v13

    goto/16 :goto_12

    :pswitch_be  #0x5
    move-object/from16 v2, p1

    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v13

    sub-int/2addr v13, v14

    aget-object v9, v9, v13

    goto/16 :goto_12

    :pswitch_cd  #0x4
    move-object/from16 v2, p1

    invoke-static {}, Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;->values()[Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v13

    sub-int/2addr v13, v14

    aget-object v8, v8, v13

    goto/16 :goto_12

    :pswitch_dc  #0x3
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseInteger(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    move-result-object v12

    goto/16 :goto_12

    :pswitch_e4  #0x2
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v7

    goto/16 :goto_12

    :pswitch_ec  #0x1
    move-object/from16 v2, p1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseColor(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    move-result-object v6

    goto/16 :goto_12

    :pswitch_f4  #0x0
    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_12

    :cond_fc
    if-nez v12, :cond_113

    new-instance v0, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/oplus/anim/value/Keyframe;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    move-object v12, v0

    :cond_113
    new-instance v13, Lcom/oplus/anim/model/content/ShapeStroke;

    move-object v0, v13

    move-object v1, v4

    move-object v2, v5

    move-object v4, v6

    move-object v5, v12

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    invoke-direct/range {v0 .. v10}, Lcom/oplus/anim/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableIntegerValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/content/ShapeStroke$LineCapType;Lcom/oplus/anim/model/content/ShapeStroke$LineJoinType;FZ)V

    return-object v13

    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_f4  #00000000
        :pswitch_ec  #00000001
        :pswitch_e4  #00000002
        :pswitch_dc  #00000003
        :pswitch_cd  #00000004
        :pswitch_be  #00000005
        :pswitch_b5  #00000006
        :pswitch_ad  #00000007
        :pswitch_28  #00000008
    .end packed-switch

    :sswitch_data_13a
    .sparse-switch
        0x64 -> :sswitch_7c
        0x67 -> :sswitch_71
        0x6f -> :sswitch_66
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_90  #00000000
        :pswitch_90  #00000001
        :pswitch_8c  #00000002
    .end packed-switch
.end method
