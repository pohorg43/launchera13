.class public Lcom/oplus/anim/parser/EffectiveCompositionParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ASSETS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final FONT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final MARKER_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const-string v0, "w"

    const-string v1, "h"

    const-string v2, "ip"

    const-string v3, "op"

    const-string v4, "fr"

    const-string v5, "v"

    const-string v6, "layers"

    const-string v7, "assets"

    const-string v8, "fonts"

    const-string v9, "chars"

    const-string v10, "markers"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/EffectiveCompositionParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v1, "id"

    const-string v2, "layers"

    const-string v3, "w"

    const-string v4, "h"

    const-string v5, "p"

    const-string v6, "u"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/EffectiveCompositionParser;->ASSETS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/EffectiveCompositionParser;->FONT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "cm"

    const-string v1, "tm"

    const-string v2, "dr"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/EffectiveCompositionParser;->MARKER_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lcom/oplus/anim/utils/Utils;->dpScale()F

    move-result v12

    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v9}, Landroidx/collection/SparseArrayCompat;-><init>()V

    new-instance v13, Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v13}, Lcom/oplus/anim/EffectiveAnimationComposition;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v14, v4

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d9

    sget-object v2, Lcom/oplus/anim/parser/EffectiveCompositionParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v2

    packed-switch v2, :pswitch_data_f4

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_b2

    :pswitch_51  #0xa
    invoke-static {v0, v11}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseMarkers(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/util/List;)V

    goto :goto_95

    :pswitch_55  #0x9
    invoke-static {v0, v13, v9}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseChars(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Landroidx/collection/SparseArrayCompat;)V

    goto :goto_95

    :pswitch_59  #0x8
    invoke-static {v0, v10}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseFonts(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/util/Map;)V

    goto :goto_95

    :pswitch_5d  #0x7
    invoke-static {v0, v13, v7, v8}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseAssets(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_95

    :pswitch_61  #0x6
    invoke-static {v0, v13, v5, v6}, Lcom/oplus/anim/parser/EffectiveCompositionParser;->parseLayers(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V

    goto :goto_95

    :pswitch_65  #0x5
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v17, v0, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x4

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-static/range {v18 .. v23}, Lcom/oplus/anim/utils/Utils;->isAtLeastVersion(IIIIII)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "EffectiveAnimation only supports bodymovin >= 4.4.0"

    invoke-virtual {v13, v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->addWarning(Ljava/lang/String;)V

    :cond_95
    :goto_95
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    goto :goto_b2

    :pswitch_9a  #0x4
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v14, v10

    goto :goto_b2

    :pswitch_a4  #0x3
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v10

    double-to-float v0, v10

    const v2, 0x3c23d70a  # 0.01f

    sub-float v4, v0, v2

    :goto_b2
    move-object/from16 v0, p0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    goto/16 :goto_37

    :pswitch_ba  #0x2
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v3, v2

    goto :goto_d5

    :pswitch_c4  #0x1
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v15

    goto :goto_d5

    :pswitch_cd  #0x0
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    :goto_d5
    move-object/from16 v0, p0

    goto/16 :goto_37

    :cond_d9
    move-object/from16 v17, v10

    move-object/from16 v18, v11

    int-to-float v0, v1

    mul-float/2addr v0, v12

    float-to-int v0, v0

    int-to-float v1, v15

    mul-float/2addr v1, v12

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v13

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v14

    move-object/from16 v10, v17

    invoke-virtual/range {v0 .. v12}, Lcom/oplus/anim/EffectiveAnimationComposition;->init(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;F)V

    return-object v13

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_cd  #00000000
        :pswitch_c4  #00000001
        :pswitch_ba  #00000002
        :pswitch_a4  #00000003
        :pswitch_9a  #00000004
        :pswitch_65  #00000005
        :pswitch_61  #00000006
        :pswitch_5d  #00000007
        :pswitch_59  #00000008
        :pswitch_55  #00000009
        :pswitch_51  #0000000a
    .end packed-switch
.end method

.method private static parseAssets(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/Map;Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveImageAsset;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move-object v7, v3

    move-object v8, v7

    move-object v9, v8

    :goto_1d
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    sget-object v2, Lcom/oplus/anim/parser/EffectiveCompositionParser;->ASSETS_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_71

    const/4 v3, 0x1

    if-eq v2, v3, :cond_55

    const/4 v3, 0x2

    if-eq v2, v3, :cond_50

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x4

    if-eq v2, v3, :cond_46

    const/4 v3, 0x5

    if-eq v2, v3, :cond_41

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1d

    :cond_41
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1d

    :cond_46
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1d

    :cond_4b
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v6

    goto :goto_1d

    :cond_50
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v5

    goto :goto_1d

    :cond_55
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_58
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/LayerParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_6d
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_1d

    :cond_71
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1d

    :cond_76
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    if-eqz v8, :cond_8a

    new-instance v0, Lcom/oplus/anim/EffectiveImageAsset;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/oplus/anim/EffectiveImageAsset;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveImageAsset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_8a
    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_8f
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return-void
.end method

.method private static parseChars(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Landroidx/collection/SparseArrayCompat;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/oplus/anim/model/FontCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/FontCharacterParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/FontCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/FontCharacter;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return-void
.end method

.method private static parseFonts(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/model/Font;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/oplus/anim/parser/EffectiveCompositionParser;->FONT_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    :cond_18
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_1b
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p0}, Lcom/oplus/anim/parser/FontParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;)Lcom/oplus/anim/model/Font;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/model/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_2d
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_3

    :cond_31
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    return-void
.end method

.method private static parseLayers(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/util/List;Landroidx/collection/LongSparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/oplus/anim/model/layer/Layer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    const/4 v0, 0x0

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-static {p0, p1}, Lcom/oplus/anim/parser/LayerParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getLayerType()Lcom/oplus/anim/model/layer/Layer$LayerType;

    move-result-object v2

    sget-object v3, Lcom/oplus/anim/model/layer/Layer$LayerType;->IMAGE:Lcom/oplus/anim/model/layer/Layer$LayerType;

    if-ne v2, v3, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_18
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/oplus/anim/model/layer/Layer;->getId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " images. EffectiveAnimation should primarily be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to shape layers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;)V

    goto :goto_4

    :cond_49
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return-void
.end method

.method private static parseMarkers(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/Marker;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    :goto_3
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    sget-object v3, Lcom/oplus/anim/parser/EffectiveCompositionParser;->MARKER_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    if-eq v3, v4, :cond_30

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2a

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipName()V

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_f

    :cond_2a
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_f

    :cond_30
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v1, v3

    goto :goto_f

    :cond_36
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_3b
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    new-instance v3, Lcom/oplus/anim/model/Marker;

    invoke-direct {v3, v0, v1, v2}, Lcom/oplus/anim/model/Marker;-><init>(Ljava/lang/String;FF)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_47
    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    return-void
.end method
