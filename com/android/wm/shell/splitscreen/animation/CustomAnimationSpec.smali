.class public abstract Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;
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
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mFloats:[F

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    const/4 p0, 0x0

    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/view/animation/Animation;->initialize(IIII)V

    const-wide/16 v1, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-static {p3, p4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, p3, p4, v1}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {p3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->onApply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V

    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract onApply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)V
.end method

.method public setDuration(J)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/CustomAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method
