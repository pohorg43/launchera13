.class public Lcom/oplus/fancyicon/elements/PathScreenElement;
.super Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.source ""


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PathScreenElement"

.field private static final NUM_24:I = 0x18

.field private static final NUM_6:I = 0x6

.field private static final NUM_8:I = 0x8

.field public static final TAG_NAME:Ljava/lang/String; = "Path"

.field public static final TYPES:[Ljava/lang/String;

.field private static final TYPE_QUAD:I = 0x1

.field private static final TYPE_RECT:I = 0x0

.field private static final WHITE_COLOR:I = 0xffffff


# instance fields
.field private mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

.field private mHeight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintShadow:Landroid/graphics/Paint;

.field private mPaintShadowSecond:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathShadow:Landroid/graphics/Path;

.field private mPathShadow2:Landroid/graphics/Path;

.field private mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

.field private mPointsValue:[F

.field private mShadow:Z

.field private mType:I

.field private mWidth:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "rect"

    const-string v1, "quad"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/fancyicon/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    const/4 p2, -0x1

    iput p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mType:I

    const-string p2, "type"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/oplus/fancyicon/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_d2

    sget-object v4, Lcom/oplus/fancyicon/elements/PathScreenElement;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ce

    iput v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mType:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v3, :cond_92

    if-eq v3, v0, :cond_37

    goto/16 :goto_ce

    :cond_37
    const/4 v7, 0x6

    new-array v7, v7, [Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v8, "fromX"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v8, v9}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "fromY"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v8, v9}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "moveX"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v8, v9}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v5, "moveY"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v5, v8}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    aput-object v5, v7, v4

    const-string v4, "toX"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v4, v5}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v4

    aput-object v4, v7, v6

    const/4 v4, 0x5

    const-string v5, "toY"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v5, v6}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    aput-object v5, v7, v4

    iput-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    goto :goto_ce

    :cond_92
    new-array v6, v6, [Lcom/oplus/fancyicon/data/expression/Expression;

    const-string v7, "left"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v7, v8}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "top"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v7, v8}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v7

    aput-object v7, v6, v0

    const-string v7, "right"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v7, v8}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v7

    aput-object v7, v6, v5

    const-string v5, "bottom"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v5, v7}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v5

    aput-object v5, v6, v4

    iput-object v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    :cond_ce
    :goto_ce
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_20

    :cond_d2
    iget v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mType:I

    if-ltz v1, :cond_180

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    array-length p2, p2

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    invoke-static {p1}, Lcom/oplus/fancyicon/util/ColorParser;->fromElement(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/util/ColorParser;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/PathScreenElement;->getColor()I

    move-result p2

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const-string p2, "width"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2, v1}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p2

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_107

    const/high16 p2, 0x3f800000  # 1.0f

    :cond_107
    iput p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mWidth:F

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const-string p2, "style"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_139

    const-string v1, "stroke"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12a

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_139

    :cond_12a
    const-string v1, "fill"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_139

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_139
    :goto_139
    const-string p2, "shadow"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz p1, :cond_17f

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    iget p2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    iget p0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mWidth:F

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_17f
    return-void

    :cond_180
    new-instance p0, Lcom/oplus/fancyicon/ScreenElementLoadException;

    const-string p1, "unsupported type "

    invoke-static {p1, p2}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/ScreenElementLoadException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPoint(Lcom/oplus/fancyicon/data/expression/Expression;)F
    .registers 4

    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->evaluate(Lcom/oplus/fancyicon/data/expression/Expression;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/PathScreenElement;->updatePath()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_28
    return-void
.end method

.method public getColor()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mColorParser:Lcom/oplus/fancyicon/util/ColorParser;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/util/ColorParser;->getColor(Lcom/oplus/fancyicon/data/Variables;)I

    move-result p0

    return p0
.end method

.method public updatePath()V
    .registers 14

    iget v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mType:I

    if-gez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootAlpha()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getRootColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    mul-int v4, v0, v1

    div-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-boolean v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_3b
    iget v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mType:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_126

    if-eq v1, v5, :cond_47

    goto/16 :goto_16d

    :cond_47
    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Lcom/oplus/fancyicon/elements/PathScreenElement;->getPoint(Lcom/oplus/fancyicon/data/expression/Expression;)F

    move-result v1

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    aget-object v6, v6, v3

    invoke-direct {p0, v6}, Lcom/oplus/fancyicon/elements/PathScreenElement;->getPoint(Lcom/oplus/fancyicon/data/expression/Expression;)F

    move-result v6

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    aget v8, v7, v4

    cmpl-float v8, v1, v8

    if-nez v8, :cond_65

    aget v8, v7, v3

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_103

    :cond_65
    aput v1, v7, v4

    aput v6, v7, v3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getOffsetX()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getOffsetY()F

    move-result v1

    add-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    iget v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mHeight:F

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_94

    iput v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mHeight:F

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    array-length v4, v4

    sub-int/2addr v4, v5

    :goto_83
    if-ltz v4, :cond_94

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    aget-object v7, v7, v4

    invoke-direct {p0, v7}, Lcom/oplus/fancyicon/elements/PathScreenElement;->getPoint(Lcom/oplus/fancyicon/data/expression/Expression;)F

    move-result v7

    aput v7, v6, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_83

    :cond_94
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-boolean v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz v4, :cond_a7

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    :cond_a7
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    aget v2, v4, v2

    aget v5, v4, v5

    const/4 v6, 0x4

    aget v6, v4, v6

    const/4 v7, 0x5

    aget v4, v4, v7

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v3, v1, v6, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-boolean v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz v7, :cond_103

    iget v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mWidth:F

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    sub-float v9, v5, v7

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    sub-float v9, v1, v7

    sub-float v10, v4, v7

    invoke-virtual {v8, v3, v9, v6, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    add-float v9, v5, v7

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow:Landroid/graphics/Path;

    add-float v9, v1, v7

    add-float v10, v4, v7

    invoke-virtual {v8, v3, v9, v6, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/high16 v8, 0x40000000  # 2.0f

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    sub-float v9, v5, v7

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    sub-float v9, v1, v7

    sub-float v10, v4, v7

    invoke-virtual {v8, v3, v9, v6, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v8, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    add-float/2addr v5, v7

    invoke-virtual {v8, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPathShadow2:Landroid/graphics/Path;

    add-float/2addr v1, v7

    add-float/2addr v4, v7

    invoke-virtual {v2, v3, v1, v6, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    :cond_103
    iget-boolean v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mShadow:Z

    if-eqz v1, :cond_16d

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadow:Landroid/graphics/Paint;

    const v3, 0xffffff

    and-int/2addr v1, v3

    div-int/lit8 v3, v0, 0x6

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPaintShadowSecond:Landroid/graphics/Paint;

    div-int/lit8 v0, v0, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_16d

    :cond_126
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_147

    iput v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mHeight:F

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    array-length v0, v0

    sub-int/2addr v0, v5

    :goto_136
    if-ltz v0, :cond_147

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPoints:[Lcom/oplus/fancyicon/data/expression/Expression;

    aget-object v6, v6, v0

    invoke-direct {p0, v6}, Lcom/oplus/fancyicon/elements/PathScreenElement;->getPoint(Lcom/oplus/fancyicon/data/expression/Expression;)F

    move-result v6

    aput v6, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_136

    :cond_147
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getOffsetY()F

    move-result v1

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    iget-object v7, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/PathScreenElement;->mPointsValue:[F

    aget v2, p0, v2

    add-float v8, v2, v0

    aget v2, p0, v5

    add-float v9, v2, v1

    aget v2, p0, v4

    add-float v10, v2, v0

    aget p0, p0, v3

    add-float v11, p0, v1

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_16d
    :goto_16d
    return-void
.end method
