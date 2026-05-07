.class Lcom/oplus/anim/parser/KeyframeParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static INTERPOLATOR_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options; = null

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_CP_VALUE:F = 100.0f

.field public static NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

.field private static pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string v1, "t"

    const-string v2, "s"

    const-string v3, "e"

    const-string v4, "o"

    const-string v5, "i"

    const-string v6, "h"

    const-string v7, "to"

    const-string v8, "ti"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/KeyframeParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    const-string v0, "x"

    const-string v1, "y"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/oplus/anim/parser/KeyframeParser;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/oplus/anim/parser/KeyframeParser;->pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;
    .registers 8

    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/high16 v1, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->y:F

    const/high16 v3, -0x3d380000  # -100.0f

    const/high16 v4, 0x42c80000  # 100.0f

    invoke-static {v0, v3, v4}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, v2}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v3, v4}, Lcom/oplus/anim/utils/MiscUtils;->clamp(FFF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v3, v4, v0}, Lcom/oplus/anim/utils/Utils;->hashFor(FFFF)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/anim/parser/KeyframeParser;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    goto :goto_40

    :cond_3f
    const/4 v3, 0x0

    :goto_40
    if-eqz v1, :cond_44

    if-nez v3, :cond_82

    :cond_44
    :try_start_44
    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v3, v4, v5}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_50} :catch_51

    goto :goto_79

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "The Path cannot loop back on itself."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, p0, v2, p1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    goto :goto_79

    :cond_74
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    :goto_79
    move-object v3, p0

    :try_start_7a
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/oplus/anim/parser/KeyframeParser;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_82
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7a .. :try_end_82} :catch_82

    :catch_82
    :cond_82
    return-object v3
.end method

.method public static parse(Lcom/oplus/anim/parser/moshi/JsonReader;Lcom/oplus/anim/EffectiveAnimationComposition;FLcom/oplus/anim/parser/ValueParser;ZZ)Lcom/oplus/anim/value/Keyframe;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;ZZ)",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_9

    if-eqz p5, :cond_9

    invoke-static {p1, p0, p2, p3}, Lcom/oplus/anim/parser/KeyframeParser;->parseMultiDimensionalKeyframe(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;

    move-result-object p0

    return-object p0

    :cond_9
    if-eqz p4, :cond_10

    invoke-static {p1, p0, p2, p3}, Lcom/oplus/anim/parser/KeyframeParser;->parseKeyframe(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-static {p0, p2, p3}, Lcom/oplus/anim/parser/KeyframeParser;->parseStaticValue(Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method private static parseKeyframe(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v0

    move-object v3, v1

    move-object v4, v3

    move-object v9, v4

    move-object v10, v9

    move v7, v2

    move-object v2, v10

    :goto_d
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    sget-object v6, Lcom/oplus/anim/parser/KeyframeParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {p1, v6}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v6

    const/high16 v8, 0x3f800000  # 1.0f

    packed-switch v6, :pswitch_data_76

    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_d

    :pswitch_22  #0x7
    invoke-static {p1, p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v10

    goto :goto_d

    :pswitch_27  #0x6
    invoke-static {p1, p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_d

    :pswitch_2c  #0x5
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    move v5, v6

    goto :goto_d

    :cond_35
    move v5, v0

    goto :goto_d

    :pswitch_37  #0x4
    invoke-static {p1, v8}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v2

    goto :goto_d

    :pswitch_3c  #0x3
    invoke-static {p1, v8}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_d

    :pswitch_41  #0x2
    invoke-interface {p3, p1, p2}, Lcom/oplus/anim/parser/ValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v3

    goto :goto_d

    :pswitch_46  #0x1
    invoke-interface {p3, p1, p2}, Lcom/oplus/anim/parser/ValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v4

    goto :goto_d

    :pswitch_4b  #0x0
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v7, v6

    goto :goto_d

    :cond_51
    invoke-virtual {p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    if-eqz v5, :cond_5b

    sget-object p1, Lcom/oplus/anim/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v6, p1

    move-object v5, v4

    goto :goto_68

    :cond_5b
    if-eqz v1, :cond_64

    if-eqz v2, :cond_64

    invoke-static {v1, v2}, Lcom/oplus/anim/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object p1

    goto :goto_66

    :cond_64
    sget-object p1, Lcom/oplus/anim/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_66
    move-object v6, p1

    move-object v5, v3

    :goto_68
    new-instance p1, Lcom/oplus/anim/value/Keyframe;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object v9, p1, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    iput-object v10, p1, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object p1

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_46  #00000001
        :pswitch_41  #00000002
        :pswitch_3c  #00000003
        :pswitch_37  #00000004
        :pswitch_2c  #00000005
        :pswitch_27  #00000006
        :pswitch_22  #00000007
    .end packed-switch
.end method

.method private static parseMultiDimensionalKeyframe(Lcom/oplus/anim/EffectiveAnimationComposition;Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_16
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a8

    sget-object v4, Lcom/oplus/anim/parser/KeyframeParser;->NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_202

    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto/16 :goto_1a4

    :pswitch_30  #0x7
    invoke-static/range {p1 .. p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_16

    :pswitch_35  #0x6
    invoke-static/range {p1 .. p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v15

    goto :goto_16

    :pswitch_3a  #0x5
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextInt()I

    move-result v4

    if-ne v4, v5, :cond_42

    move v6, v5

    goto :goto_16

    :cond_42
    const/4 v6, 0x0

    goto :goto_16

    :pswitch_44  #0x4
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v5, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v4, v5, :cond_e8

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_53
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_d2

    move-object/from16 v18, v15

    sget-object v15, Lcom/oplus/anim/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v15}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v15

    if-eqz v15, :cond_a5

    move-object/from16 v19, v3

    const/4 v3, 0x1

    if-eq v15, v3, :cond_70

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    :goto_6b
    move-object/from16 v15, v18

    move-object/from16 v3, v19

    goto :goto_53

    :cond_70
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v3

    sget-object v5, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v3, v5, :cond_81

    move v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v13, v13

    move v14, v3

    move v5, v13

    goto :goto_6b

    :cond_81
    move v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v13

    double-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v14

    if-ne v14, v5, :cond_96

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v5, v14

    goto :goto_97

    :cond_96
    move v5, v13

    :goto_97
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    move v14, v3

    move-object/from16 v15, v18

    move-object/from16 v3, v19

    move/from16 v20, v13

    move v13, v5

    move/from16 v5, v20

    goto :goto_53

    :cond_a5
    move-object/from16 v19, v3

    move v3, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v12, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v4, v12, :cond_b8

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v12, v14

    move v14, v3

    move v4, v12

    goto :goto_6b

    :cond_b8
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v4, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v14

    if-ne v14, v12, :cond_cc

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v12, v14

    goto :goto_cd

    :cond_cc
    move v12, v4

    :goto_cd
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    move v14, v3

    goto :goto_6b

    :cond_d2
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    move-object v13, v4

    move-object v12, v14

    goto/16 :goto_17d

    :cond_e8
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-static/range {p1 .. p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v8

    goto/16 :goto_1a4

    :pswitch_f3  #0x3
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v5, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v4, v5, :cond_17f

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginObject()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_107
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16c

    sget-object v14, Lcom/oplus/anim/parser/KeyframeParser;->INTERPOLATOR_NAMES:Lcom/oplus/anim/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v14}, Lcom/oplus/anim/parser/moshi/JsonReader;->selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result v14

    if-eqz v14, :cond_144

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11c

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->skipValue()V

    goto :goto_107

    :cond_11c
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v11, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v5, v11, :cond_12b

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v11, v14

    move v5, v11

    goto :goto_107

    :cond_12b
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v5, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v14

    if-ne v14, v11, :cond_13f

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v11, v14

    goto :goto_140

    :cond_13f
    move v11, v5

    :goto_140
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_107

    :cond_144
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v4

    sget-object v9, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    if-ne v4, v9, :cond_153

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v9, v14

    move v4, v9

    goto :goto_107

    :cond_153
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->beginArray()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v4, v14

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v14

    if-ne v14, v9, :cond_167

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v14

    double-to-float v9, v14

    goto :goto_168

    :cond_167
    move v9, v4

    :goto_168
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endArray()V

    goto :goto_107

    :cond_16c
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v9, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    move-object v11, v4

    move-object v9, v14

    move-object/from16 v15, v18

    :goto_17d
    move v14, v3

    goto :goto_1a4

    :cond_17f
    invoke-static/range {p1 .. p2}, Lcom/oplus/anim/parser/JsonUtils;->jsonToPoint(Lcom/oplus/anim/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v7

    move v14, v3

    move-object/from16 v15, v18

    goto :goto_1a4

    :pswitch_187  #0x2
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-interface {v2, v0, v1}, Lcom/oplus/anim/parser/ValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v16

    goto :goto_1a4

    :pswitch_191  #0x1
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-interface {v2, v0, v1}, Lcom/oplus/anim/parser/ValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object v10

    goto :goto_1a4

    :pswitch_19b  #0x0
    move-object/from16 v19, v3

    move-object/from16 v18, v15

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v3

    double-to-float v14, v3

    :goto_1a4
    move-object/from16 v3, v19

    goto/16 :goto_16

    :cond_1a8
    move-object/from16 v19, v3

    move v3, v14

    move-object/from16 v18, v15

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->endObject()V

    if-eqz v6, :cond_1b8

    sget-object v0, Lcom/oplus/anim/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    move-object v11, v10

    :goto_1b5
    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_1dc

    :cond_1b8
    if-eqz v7, :cond_1c1

    if-eqz v8, :cond_1c1

    invoke-static {v7, v8}, Lcom/oplus/anim/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_1d9

    :cond_1c1
    if-eqz v9, :cond_1d7

    if-eqz v11, :cond_1d7

    if-eqz v12, :cond_1d7

    if-eqz v13, :cond_1d7

    invoke-static {v9, v12}, Lcom/oplus/anim/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {v11, v13}, Lcom/oplus/anim/parser/KeyframeParser;->interpolatorFor(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/view/animation/Interpolator;

    move-result-object v1

    move-object v12, v0

    move-object v13, v1

    move-object/from16 v11, v16

    const/4 v0, 0x0

    goto :goto_1dc

    :cond_1d7
    sget-object v0, Lcom/oplus/anim/parser/KeyframeParser;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1d9
    move-object/from16 v11, v16

    goto :goto_1b5

    :goto_1dc
    if-eqz v12, :cond_1ed

    if-eqz v13, :cond_1ed

    new-instance v0, Lcom/oplus/anim/value/Keyframe;

    const/4 v15, 0x0

    move-object v8, v0

    move-object/from16 v9, p0

    move v14, v3

    move-object/from16 v5, v18

    invoke-direct/range {v8 .. v15}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    goto :goto_1fb

    :cond_1ed
    move-object/from16 v5, v18

    new-instance v1, Lcom/oplus/anim/value/Keyframe;

    const/4 v14, 0x0

    move-object v8, v1

    move-object/from16 v9, p0

    move-object v12, v0

    move v13, v3

    invoke-direct/range {v8 .. v14}, Lcom/oplus/anim/value/Keyframe;-><init>(Lcom/oplus/anim/EffectiveAnimationComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    move-object v0, v1

    :goto_1fb
    iput-object v5, v0, Lcom/oplus/anim/value/Keyframe;->pathCp1:Landroid/graphics/PointF;

    move-object/from16 v3, v19

    iput-object v3, v0, Lcom/oplus/anim/value/Keyframe;->pathCp2:Landroid/graphics/PointF;

    return-object v0

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_19b  #00000000
        :pswitch_191  #00000001
        :pswitch_187  #00000002
        :pswitch_f3  #00000003
        :pswitch_44  #00000004
        :pswitch_3a  #00000005
        :pswitch_35  #00000006
        :pswitch_30  #00000007
    .end packed-switch
.end method

.method private static parseStaticValue(Lcom/oplus/anim/parser/moshi/JsonReader;FLcom/oplus/anim/parser/ValueParser;)Lcom/oplus/anim/value/Keyframe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/parser/moshi/JsonReader;",
            "F",
            "Lcom/oplus/anim/parser/ValueParser<",
            "TT;>;)",
            "Lcom/oplus/anim/value/Keyframe<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/oplus/anim/parser/ValueParser;->parse(Lcom/oplus/anim/parser/moshi/JsonReader;F)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lcom/oplus/anim/value/Keyframe;

    invoke-direct {p1, p0}, Lcom/oplus/anim/value/Keyframe;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static pathInterpolatorCache()Landroidx/collection/SparseArrayCompat;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/anim/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/oplus/anim/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    :cond_b
    sget-object v0, Lcom/oplus/anim/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    return-object v0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/oplus/anim/parser/KeyframeParser;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/anim/parser/KeyframeParser;->pathInterpolatorCache:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
