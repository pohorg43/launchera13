.class public Lcom/oplus/anim/parser/LayerParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final EFFECTS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 23

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/LayerParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "d"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/LayerParser;->TEXT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "ty"

    const-string v1, "nm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/LayerParser;->EFFECTS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;
    .registers 29

    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v27, Lcom/oplus/anim/model/layer/Layer;

    move-object/from16 v0, v27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/oplus/anim/model/layer/Layer$LayerType;->PRE_COMP:Lcom/oplus/anim/model/layer/Layer$LayerType;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v4, Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-object v11, v4

    invoke-direct {v4}, Lcom/oplus/anim/model/animatable/AnimatableTransform;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v0 .. v26}, Lcom/oplus/anim/model/layer/Layer;-><init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;ZLcom/oplus/anim/model/content/BlurEffect;Lcom/oplus/anim/parser/DropShadowEffect;)V

    return-object v27
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;
    .registers 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/oplus/anim/model/layer/Layer$MatteType;->NONE:Lcom/oplus/anim/model/layer/Layer$MatteType;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v4, 0x0

    const-string v5, "UNSET"

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    move-object/from16 v32, v1

    move/from16 v26, v2

    move/from16 v23, v3

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v28, v25

    move/from16 v29, v28

    move/from16 v34, v29

    move-object/from16 v18, v4

    move-object/from16 v21, v18

    move-object/from16 v22, v21

    move-object/from16 v30, v22

    move-object/from16 v31, v30

    move-object/from16 v33, v31

    move-object/from16 v35, v33

    move-object/from16 v36, v35

    move/from16 v17, v11

    move/from16 v27, v17

    move/from16 v37, v27

    move-wide/from16 v19, v15

    move-wide v15, v13

    move-object/from16 v14, v36

    move-object v13, v5

    :cond_52
    :goto_52
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_236

    sget-object v1, Lcom/oplus/anim/parser/LayerParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_2e2

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_52

    :pswitch_69  #0x16
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v34

    goto :goto_52

    :pswitch_6e  #0x15
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_52

    :pswitch_73  #0x14
    invoke-static {v0, v7, v3}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseFloat(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Z)Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    move-result-object v33

    goto :goto_52

    :pswitch_78  #0x13
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v37, v1

    goto :goto_52

    :pswitch_80  #0x12
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v17, v1

    goto :goto_52

    :pswitch_88  #0x11
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v29, v1

    goto :goto_52

    :pswitch_96  #0x10
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v28, v1

    goto :goto_52

    :pswitch_a4  #0xf
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v27, v1

    goto :goto_52

    :pswitch_ac  #0xe
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v26, v1

    goto :goto_52

    :pswitch_b4  #0xd
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_103

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    :cond_c5
    :goto_c5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ff

    sget-object v4, Lcom/oplus/anim/parser/LayerParser;->EFFECTS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_e4

    if-eq v4, v2, :cond_dc

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_c5

    :cond_dc
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    const/16 v5, 0x1d

    if-ne v4, v5, :cond_f1

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/BlurEffectParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/BlurEffect;

    move-result-object v35

    goto :goto_c5

    :cond_f1
    const/16 v5, 0x19

    if-ne v4, v5, :cond_c5

    new-instance v4, Lcom/oplus/anim/parser/DropShadowEffectParser;

    invoke-direct {v4}, Lcom/oplus/anim/parser/DropShadowEffectParser;-><init>()V

    invoke-virtual {v4, v0, v7}, Lcom/oplus/anim/parser/DropShadowEffectParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/parser/DropShadowEffect;

    move-result-object v36

    goto :goto_c5

    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    goto :goto_bc

    :cond_103
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Effective doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_52

    :pswitch_11c  #0xc
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    sget-object v1, Lcom/oplus/anim/parser/LayerParser;->TEXT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_153

    if-eq v1, v2, :cond_136

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_11f

    :cond_136
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_145

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableTextPropertiesParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextProperties;

    move-result-object v1

    move-object/from16 v31, v1

    :cond_145
    :goto_145
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14f

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_145

    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_11f

    :cond_153
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableValueParser;->parseDocumentData(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTextFrame;

    move-result-object v30

    goto :goto_11f

    :cond_158
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    goto/16 :goto_52

    :pswitch_15d  #0xb
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :cond_160
    :goto_160
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_170

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/ContentModelParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/ContentModel;

    move-result-object v1

    if-eqz v1, :cond_160

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_160

    :cond_170
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_52

    :pswitch_175  #0xa
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_178
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_186

    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/MaskParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/content/Mask;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_178

    :cond_186
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->incrementMatteOrMaskCount(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_52

    :pswitch_192  #0x9
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    invoke-static {}, Lcom/oplus/anim/model/layer/Layer$MatteType;->values()[Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v4

    array-length v4, v4

    if-lt v1, v4, :cond_1b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported matte type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_1b3
    invoke-static {}, Lcom/oplus/anim/model/layer/Layer$MatteType;->values()[Lcom/oplus/anim/model/layer/Layer$MatteType;

    move-result-object v4

    aget-object v32, v4, v1

    sget-object v1, Lcom/oplus/anim/parser/LayerParser$1;->$SwitchMap$com$oplus$anim$model$layer$Layer$MatteType:[I

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_1cd

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1c7

    goto :goto_1d2

    :cond_1c7
    const-string v1, "Unsupported matte type: Luma Inverted"

    invoke-virtual {v7, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_1d2

    :cond_1cd
    const-string v1, "Unsupported matte type: Luma"

    invoke-virtual {v7, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    :goto_1d2
    invoke-virtual {v7, v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->incrementMatteOrMaskCount(I)V

    goto/16 :goto_52

    :pswitch_1d7  #0x8
    invoke-static/range {p0 .. p1}, Lcom/oplus/anim/parser/AnimatableTransformParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/animatable/AnimatableTransform;

    move-result-object v22

    goto/16 :goto_52

    :pswitch_1dd  #0x7
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    goto/16 :goto_52

    :pswitch_1e7  #0x6
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v24, v1

    goto/16 :goto_52

    :pswitch_1f6  #0x5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    move/from16 v23, v1

    goto/16 :goto_52

    :pswitch_205  #0x4
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v19, v1

    goto/16 :goto_52

    :pswitch_20e  #0x3
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    sget-object v18, Lcom/oplus/anim/model/layer/Layer$LayerType;->UNKNOWN:Lcom/oplus/anim/model/layer/Layer$LayerType;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_52

    invoke-static {}, Lcom/oplus/anim/model/layer/Layer$LayerType;->values()[Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v2

    aget-object v18, v2, v1

    goto/16 :goto_52

    :pswitch_222  #0x2
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_52

    :pswitch_228  #0x1
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    move-wide v15, v1

    goto/16 :goto_52

    :pswitch_230  #0x0
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_52

    :cond_236
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v17, v11

    if-lez v0, :cond_260

    new-instance v5, Lcom/oplus/anim/value/Keyframe;

    const/4 v4, 0x0

    const/16 v38, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v39

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object v11, v5

    move/from16 v5, v38

    move-object/from16 v38, v10

    move-object v10, v6

    move-object/from16 v6, v39

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_264

    :cond_260
    move-object/from16 v38, v10

    move-object v10, v6

    move v0, v11

    :goto_264
    cmpl-float v0, v37, v0

    if-lez v0, :cond_269

    goto :goto_26f

    :cond_269
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v0

    move/from16 v37, v0

    :goto_26f
    new-instance v11, Lcom/oplus/anim/value/Keyframe;

    const/4 v4, 0x0

    invoke-static/range {v37 .. v37}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v3, v9

    move/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/oplus/anim/value/Keyframe;

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v9

    move-object v2, v12

    move-object v3, v12

    move/from16 v5, v37

    invoke-direct/range {v0 .. v6}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a7

    const-string v0, "ai"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ac

    :cond_2a7
    const-string v0, "Convert your Illustrator layers to shape layers."

    invoke-virtual {v7, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    :cond_2ac
    new-instance v37, Lcom/oplus/anim/model/layer/Layer;

    move-object/from16 v0, v37

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide v4, v15

    move-object/from16 v6, v18

    move-wide/from16 v7, v19

    move-object/from16 v9, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v38

    move-object/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v16, v27

    move/from16 v17, v28

    move/from16 v18, v29

    move-object/from16 v19, v30

    move-object/from16 v20, v31

    move-object/from16 v22, v32

    move-object/from16 v23, v33

    move/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v26, v36

    invoke-direct/range {v0 .. v26}, Lcom/oplus/anim/model/layer/Layer;-><init>(Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/String;JLcom/oplus/anim/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/oplus/anim/model/animatable/AnimatableTransform;IIIFFIILcom/oplus/anim/model/animatable/AnimatableTextFrame;Lcom/oplus/anim/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/oplus/anim/model/layer/Layer$MatteType;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;ZLcom/oplus/anim/model/content/BlurEffect;Lcom/oplus/anim/parser/DropShadowEffect;)V

    return-object v37

    nop

    :pswitch_data_2e2
    .packed-switch 0x0
        :pswitch_230  #00000000
        :pswitch_228  #00000001
        :pswitch_222  #00000002
        :pswitch_20e  #00000003
        :pswitch_205  #00000004
        :pswitch_1f6  #00000005
        :pswitch_1e7  #00000006
        :pswitch_1dd  #00000007
        :pswitch_1d7  #00000008
        :pswitch_192  #00000009
        :pswitch_175  #0000000a
        :pswitch_15d  #0000000b
        :pswitch_11c  #0000000c
        :pswitch_b4  #0000000d
        :pswitch_ac  #0000000e
        :pswitch_a4  #0000000f
        :pswitch_96  #00000010
        :pswitch_88  #00000011
        :pswitch_80  #00000012
        :pswitch_78  #00000013
        :pswitch_73  #00000014
        :pswitch_6e  #00000015
        :pswitch_69  #00000016
    .end packed-switch
.end method
