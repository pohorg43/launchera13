.class public Lcom/android/launcher3/icons/anim/IconAnimationParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mDuration:J

.field public mInterpolator:Landroid/view/animation/Interpolator;

.field public mNeedTransAnimation:Z

.field public mScale:F

.field public mTransX:I

.field public mTransY:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransX:I

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransY:I

    const-wide/16 v1, 0xc8

    iput-wide v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mDuration:J

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v0, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mNeedTransAnimation:Z

    return-void
.end method


# virtual methods
.method public setDuration(J)Lcom/android/launcher3/icons/anim/IconAnimationParams;
    .registers 3

    iput-wide p1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/launcher3/icons/anim/IconAnimationParams;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setScale(F)Lcom/android/launcher3/icons/anim/IconAnimationParams;
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mScale:F

    return-object p0
.end method

.method public setTranslation(II)Lcom/android/launcher3/icons/anim/IconAnimationParams;
    .registers 3

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransX:I

    iput p2, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransY:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mNeedTransAnimation:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "IconAnimationParams mScale: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mTransX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTransY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mTransY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " needTransAnimation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/icons/anim/IconAnimationParams;->mNeedTransAnimation:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
