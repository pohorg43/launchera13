.class public Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/animation/AnimationSpec;


# static fields
.field private static final ANIMATION_DURATION:I = 0x150


# instance fields
.field private final mAnimation:Landroid/view/animation/Animation;

.field private final mFloats:[F

.field private final mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mFloats:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 p0, 0x150

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mFloats:[F

    invoke-virtual {p1, p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDuration(J)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/TranslateAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
