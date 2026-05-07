.class public abstract Lcom/oplus/fancyicon/elements/AnimatedScreenElement;
.super Lcom/oplus/fancyicon/elements/ScreenElement;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"


# instance fields
.field private mActualXVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field private mActualYVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field public mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPivotZ:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mRotationX:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mRotationY:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mRotationZ:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mScaleExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mScaleXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

.field private mScaleYExpression:Lcom/oplus/fancyicon/data/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-direct {v0, p1, p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    iget-boolean p2, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz p2, :cond_37

    new-instance p2, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    const-string v2, "actual_x"

    invoke-direct {p2, v0, v2, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mActualXVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    new-instance p2, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    const-string v2, "actual_y"

    invoke-direct {p2, v0, v2, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mActualYVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_37
    const-string p2, "scale"

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "scaleX"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "scaleY"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "angleX"

    const-string v0, "rotationX"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationX:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "angleY"

    const-string v0, "rotationY"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationY:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "angleZ"

    const-string v0, "rotationZ"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationZ:Lcom/oplus/fancyicon/data/expression/Expression;

    const-string p2, "centerZ"

    const-string v0, "pivotZ"

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mPivotZ:Lcom/oplus/fancyicon/data/expression/Expression;

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationX:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationY:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationZ:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz p1, :cond_8b

    :cond_84
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    :cond_8b
    return-void
.end method

.method private createExp(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/fancyicon/data/expression/Expression;
    .registers 5

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p2, v0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    if-nez p2, :cond_1c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {p1, p0}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p2

    :cond_1c
    return-object p2
.end method


# virtual methods
.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getAlpha()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mParent:Lcom/oplus/fancyicon/elements/ElementGroup;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getAlpha()I

    move-result p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/Utils;->mixAlpha(II)I

    move-result p0

    return p0

    :cond_13
    return v0
.end method

.method public getHeight()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getLeft()F
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->getLeft(FF)F

    move-result p0

    return p0
.end method

.method public getMaxHeight()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getMaxHeight()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getMaxWidth()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getMaxWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getOffsetX()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getOffsetX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getOffsetY()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getOffsetY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getPivotX()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getPivotY()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getPivotY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getRotation()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getRotationAngle()F

    move-result p0

    return p0
.end method

.method public getTop()F
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->getTop(FF)F

    move-result p0

    return p0
.end method

.method public getWidth()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getX()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public getY()F
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getY()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/fancyicon/elements/ScreenElement;->scale(D)F

    move-result p0

    return p0
.end method

.method public hasAnimationRunning()Z
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mFramerateToken:Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/oplus/fancyicon/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->hasAnimationRunning()Z

    move-result p0

    return p0
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->init()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->init()V

    return-void
.end method

.method public isVisibleInner()Z
    .registers 2

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getAlpha()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->pause()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->pause()V

    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getPivotX()F

    move-result v1

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getPivotY()F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v3, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    const/4 v5, 0x0

    if-eqz v4, :cond_8f

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationX:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v4, :cond_3c

    invoke-virtual {v4, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v6

    double-to-float v4, v6

    goto :goto_3d

    :cond_3c
    move v4, v5

    :goto_3d
    iget-object v6, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationY:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v6, :cond_47

    invoke-virtual {v6, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_48

    :cond_47
    move v6, v5

    :goto_48
    iget-object v7, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mRotationZ:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v7, :cond_52

    invoke-virtual {v7, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v7

    double-to-float v7, v7

    goto :goto_53

    :cond_52
    move v7, v5

    :goto_53
    cmpl-float v8, v4, v5

    if-nez v8, :cond_5f

    cmpl-float v8, v6, v5

    if-nez v8, :cond_5f

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_8f

    :cond_5f
    iget-object v8, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v8, v4, v6, v7}, Landroid/graphics/Camera;->rotate(FFF)V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mPivotZ:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v4, :cond_72

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v7

    double-to-float v4, v7

    invoke-virtual {v6, v5, v5, v4}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_72
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_8f
    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->getRotation()F

    move-result v4

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_a1

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_a1
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v4, :cond_b5

    invoke-virtual {v4, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_e4

    :cond_b5
    iget-object v4, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleXExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez v4, :cond_bd

    iget-object v6, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v6, :cond_e4

    :cond_bd
    const/high16 v6, 0x3f800000  # 1.0f

    if-nez v4, :cond_c3

    move v4, v6

    goto :goto_c8

    :cond_c3
    invoke-virtual {v4, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v7

    double-to-float v4, v7

    :goto_c8
    iget-object v7, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mScaleYExpression:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez v7, :cond_cd

    goto :goto_d2

    :cond_cd
    invoke-virtual {v7, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v6

    double-to-float v6, v6

    :goto_d2
    cmpl-float v3, v4, v5

    if-nez v3, :cond_da

    cmpl-float v3, v6, v5

    if-eqz v3, :cond_e4

    :cond_da
    iget-object v3, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v6, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_e4
    :goto_e4
    invoke-virtual {p0, p1}, Lcom/oplus/fancyicon/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_ea
    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->reset(J)V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->reset(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->resume()V

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->resume()V

    return-void
.end method

.method public tick(J)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->tick(J)V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/elements/ScreenElement;->updateVisibility()V

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->tick(J)V

    iget-boolean p1, p0, Lcom/oplus/fancyicon/elements/ScreenElement;->mHasName:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mActualXVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p2, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getX()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mActualYVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/AnimatedScreenElement;->mAni:Lcom/oplus/fancyicon/animation/AnimatedElement;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/animation/AnimatedElement;->getY()F

    move-result p0

    float-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_27
    return-void
.end method
