.class public Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;


# static fields
.field private static final ANIMATION_DURATION:I = 0x150


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mEndBounds:Landroid/graphics/Rect;

.field private final mFloats:[F

.field private final mIsSnapshot:Z

.field private final mStartBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTransformation:Landroid/view/animation/Transformation;

.field private final mVecs:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mFloats:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mVecs:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mIsSnapshot:Z

    const-wide/16 p1, 0x150

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->loadAnimation(JLandroid/graphics/Rect;)V

    return-void
.end method

.method private loadAnimation(JLandroid/graphics/Rect;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    const v3, 0x3f333333  # 0.7f

    long-to-float v4, p1

    mul-float/2addr v4, v3

    float-to-long v4, v4

    iget-object v6, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    const v7, 0x3e99999a  # 0.3f

    add-float/2addr v6, v7

    iget-object v8, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v8, v3

    add-float/2addr v8, v7

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mIsSnapshot:Z

    const/high16 v7, 0x3f800000  # 1.0f

    if-eqz v0, :cond_95

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    invoke-direct {p3, v7, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v1, :cond_68

    sub-long v0, p1, v4

    invoke-virtual {p3, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_68
    invoke-virtual {v3, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    div-float p3, v7, v6

    div-float/2addr v7, v8

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, p3, p3, v7, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    goto :goto_f8

    :cond_95
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v6, v7, v8, v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    if-nez v1, :cond_a4

    sub-long v4, p1, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    :cond_a4
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-direct {v0, v4, v6, v1, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mEndBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mStartBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {v3, p1, p2, v0, p3}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    :goto_f8
    iput-object v3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-boolean p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mIsSnapshot:Z

    if-eqz p3, :cond_28

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_8b

    :cond_28
    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mFloats:[F

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mVecs:[F

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, p4, v1

    aput v2, p4, v0

    const/4 v0, 0x3

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p4, v0

    const/4 v2, 0x0

    aput v1, p4, v2

    invoke-virtual {p3, p4}, Landroid/graphics/Matrix;->mapVectors([F)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mVecs:[F

    aget p4, p3, v2

    div-float p4, v1, p4

    aput p4, p3, v2

    aget p4, p3, v0

    div-float/2addr v1, p4

    aput v1, p3, v0

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object p3

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/ChangeAnimationSpec;->mVecs:[F

    aget v3, p0, v2

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p4, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aget v2, p0, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p4, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aget v2, p0, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p4, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    aget p0, p0, v0

    mul-float/2addr p3, p0

    add-float/2addr p3, v3

    float-to-int p0, p3

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :goto_8b
    return-void
.end method

.method public getDuration()J
    .registers 3

    const-wide/16 v0, 0x150

    return-wide v0
.end method
