.class public abstract Lcom/android/launcher3/graphics/IconShape;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/graphics/IconShape$OctagonSquare;,
        Lcom/android/launcher3/graphics/IconShape$LeafSquare;,
        Lcom/android/launcher3/graphics/IconShape$Squircle;,
        Lcom/android/launcher3/graphics/IconShape$TearDrop;,
        Lcom/android/launcher3/graphics/IconShape$RoundedSquare;,
        Lcom/android/launcher3/graphics/IconShape$Circle;,
        Lcom/android/launcher3/graphics/IconShape$PathShape;,
        Lcom/android/launcher3/graphics/IconShape$SimpleRectShape;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEAF_SQUARE_RADIUS_RATIO:F = 0.3f

.field private static final DEFAULT_OCTAGON_SQUARE_RADIUS_RATIO:F = 0.3f

.field private static final DEFAULT_OPLUS_ELLIPSE_RADIUS_RATIO:F = 0.86f

.field private static final DEFAULT_OPLUS_EXP_RECTANGLE_RADIUS_RATIO:F = 1.0f

.field private static final DEFAULT_RECTANGLE_RADIUS_RATIO:F = 0.48f

.field private static final DEFAULT_SQUIRCLE_RADIUS_RATIO:F = 0.2f

.field private static sFolderShape:Lcom/android/launcher3/graphics/IconShape;

.field private static sInstance:Lcom/android/launcher3/graphics/IconShape;

.field private static sNormalizationScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    const v0, 0x3f6b851f  # 0.92f

    sput v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sFolderShape:Lcom/android/launcher3/graphics/IconShape;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decideCurrentShape(F)V
    .registers 7

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getRadiusRatio()F

    move-result v0

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getTheme()I

    move-result v1

    const v2, 0x3ef5c28f  # 0.48f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_23

    new-instance v4, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    sget-object v5, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v5, :cond_1d

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v5, :cond_1d

    const/high16 v5, 0x3f800000  # 1.0f

    goto :goto_1e

    :cond_1d
    move v5, v2

    :goto_1e
    invoke-direct {v4, v5}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    sput-object v4, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    :cond_23
    const/4 v4, 0x3

    if-ne v1, v4, :cond_67

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconShape()I

    move-result v1

    if-eqz v1, :cond_60

    const/4 v0, 0x1

    const v5, 0x3e99999a  # 0.3f

    if-eq v1, v0, :cond_58

    if-eq v1, v3, :cond_50

    if-eq v1, v4, :cond_45

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3a

    goto :goto_67

    :cond_3a
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    const v1, 0x3f5c28f6  # 0.86f

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    goto :goto_67

    :cond_45
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$Squircle;

    const v1, 0x3e4ccccd  # 0.2f

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/IconShape$Squircle;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    goto :goto_67

    :cond_50
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$LeafSquare;

    invoke-direct {v0, v5}, Lcom/android/launcher3/graphics/IconShape$LeafSquare;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    goto :goto_67

    :cond_58
    new-instance v0, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;

    invoke-direct {v0, v5}, Lcom/android/launcher3/graphics/IconShape$OctagonSquare;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    goto :goto_67

    :cond_60
    new-instance v1, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    invoke-direct {v1, v0}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    sput-object v1, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    :cond_67
    :goto_67
    sget-object v0, Lcom/android/launcher3/graphics/IconShape;->sFolderShape:Lcom/android/launcher3/graphics/IconShape;

    if-nez v0, :cond_72

    new-instance v0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    invoke-direct {v0, v2}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    sput-object v0, Lcom/android/launcher3/graphics/IconShape;->sFolderShape:Lcom/android/launcher3/graphics/IconShape;

    :cond_72
    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconSize()I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    sput p0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    const-string p0, "decideCurrentShape: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sNormalizationScale: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", size: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconShape"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getAllShapes(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/graphics/IconShape;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f150016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_10} :catch_72

    :goto_10
    :try_start_10
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_28

    if-eq v2, v4, :cond_28

    const-string/jumbo v2, "shapes"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_10

    :cond_28
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    new-array v5, v4, [I

    const v6, 0x7f040421

    const/4 v7, 0x0

    aput v6, v5, v7

    :cond_34
    :goto_34
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v3, :cond_40

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_62

    :cond_40
    if-eq v6, v4, :cond_62

    const/4 v8, 0x2

    if-ne v6, v8, :cond_34

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    invoke-static {v8, v9}, Lcom/android/launcher3/graphics/IconShape;->getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_10 .. :try_end_61} :catchall_66

    goto :goto_34

    :cond_62
    :try_start_62
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_65} :catch_72

    return-object v0

    :catchall_66
    move-exception p0

    if-eqz v1, :cond_71

    :try_start_69
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    throw p0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_72} :catch_72

    :catch_72
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getFolderShape()Lcom/android/launcher3/graphics/IconShape;
    .registers 1

    sget-object v0, Lcom/android/launcher3/graphics/IconShape;->sFolderShape:Lcom/android/launcher3/graphics/IconShape;

    return-object v0
.end method

.method public static getNormalizationScale()F
    .registers 1

    sget v0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return v0
.end method

.method public static getShape()Lcom/android/launcher3/graphics/IconShape;
    .registers 1

    sget-object v0, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    return-object v0
.end method

.method private static getShapeDefinition(Ljava/lang/String;F)Lcom/android/launcher3/graphics/IconShape;
    .registers 4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_62

    goto :goto_3a

    :sswitch_f
    const-string v1, "Circle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_3a

    :cond_18
    const/4 v0, 0x3

    goto :goto_3a

    :sswitch_1a
    const-string v1, "RoundedSquare"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_3a

    :cond_23
    const/4 v0, 0x2

    goto :goto_3a

    :sswitch_25
    const-string v1, "Squircle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_3a

    :cond_2e
    const/4 v0, 0x1

    goto :goto_3a

    :sswitch_30
    const-string v1, "TearDrop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    packed-switch v0, :pswitch_data_74

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid shape type: "

    invoke-static {v0, p0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_49  #0x3
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$Circle;

    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$Circle;-><init>()V

    return-object p0

    :pswitch_4f  #0x2
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$RoundedSquare;-><init>(F)V

    return-object p0

    :pswitch_55  #0x1
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$Squircle;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$Squircle;-><init>(F)V

    return-object p0

    :pswitch_5b  #0x0
    new-instance p0, Lcom/android/launcher3/graphics/IconShape$TearDrop;

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShape$TearDrop;-><init>(F)V

    return-object p0

    nop

    :sswitch_data_62
    .sparse-switch
        -0x5f5ab76f -> :sswitch_30
        -0x2aba5404 -> :sswitch_25
        -0x1b5a6df6 -> :sswitch_1a
        0x7851a8f0 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5b  #00000000
        :pswitch_55  #00000001
        :pswitch_4f  #00000002
        :pswitch_49  #00000003
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShape;->pickBestShape(Landroid/content/Context;)V

    return-void
.end method

.method public static pickBestShape(Landroid/content/Context;)V
    .registers 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    new-instance v0, Landroid/graphics/Region;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v4, v5, v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, v1, v1, v2, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    invoke-virtual {v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShape;->getAllShapes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    move-object v8, v6

    :cond_3f
    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_65

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/graphics/IconShape;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/high16 v10, 0x42c80000  # 100.0f

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v11, v10}, Lcom/android/launcher3/graphics/IconShape;->addToPath(Landroid/graphics/Path;FFF)V

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    sget-object v10, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v3, v10}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-static {v5}, Lcom/android/launcher3/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v10

    if-ge v10, v7, :cond_3f

    move-object v8, v9

    move v7, v10

    goto :goto_3f

    :cond_65
    if-eqz v8, :cond_69

    sput-object v8, Lcom/android/launcher3/graphics/IconShape;->sInstance:Lcom/android/launcher3/graphics/IconShape;

    :cond_69
    invoke-static {v4, v2, v6}, Lcom/android/launcher3/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    move-result p0

    sput p0, Lcom/android/launcher3/graphics/IconShape;->sNormalizationScale:F

    return-void
.end method


# virtual methods
.method public abstract addToPath(Landroid/graphics/Path;FFF)V
.end method

.method public abstract createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ":",
            "Lcom/android/launcher3/views/ClipPathView;",
            ">(TT;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "FZ)",
            "Landroid/animation/Animator;"
        }
    .end annotation
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
.end method

.method public enableShapeDetection()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
