.class public Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;
.super Lcom/android/quickstep/util/MotionPauseDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;
    }
.end annotation


# static fields
.field private static final DECEL_SLOW_THRESHOLD:F = 0.6f

.field private static final DECEL_SOMEWHAT_SLOW_THRESHOLD:F = 0.65f

.field private static final FAST_SPEED:F = 3.5f

.field private static final FAST_SPEED_LOCATION_THRESHOLD:F = 0.7f

.field private static final PAUSE_SPEED_THRESHOLD:F = 0.1f

.field private static final SLOW_SPEED:F = 2.5f

.field private static final SLOW_SPEED_LOCATION_PAD_THRESHOLD:F = 0.95f

.field private static final SLOW_SPEED_LOCATION_THRESHOLD:F = 0.96f

.field private static final TAG:Ljava/lang/String; = "SwipeToRecentMotionPauseDetector "


# instance fields
.field private mAllowCancel:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPauseSpeedFast:F

.field private mPauseSpeedMedium:F

.field private mPauseSpeedSlow:F

.field private mPauseSpeedSomeWhatFast:F

.field private mPreviousVelocityX:Ljava/lang/Float;

.field private mScreenHeight:I

.field private mVelocityProviderX:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;-><init>(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    new-instance p1, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;-><init>(I)V

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    const p1, 0x7f070c08

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSlow:F

    const p1, 0x7f070c07

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedMedium:F

    const p1, 0x7f070c05

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    const p1, 0x7f070c06

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedFast:F

    return-void
.end method


# virtual methods
.method public addPosition(Landroid/view/MotionEvent;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v6

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    if-eqz v0, :cond_2c

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v0, p0

    move v3, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->checkMotionPaused(FFFFLandroid/view/MotionEvent;)V

    :cond_2c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_52

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPosition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwipeToRecentMotionPauseDetector "

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    return-void
.end method

.method public checkMotionPaused(FFFFLandroid/view/MotionEvent;)V
    .registers 13

    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p3, v1

    float-to-double v1, p4

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v5, p2

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p4, v1

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3f75c28f  # 0.96f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    const v3, 0x3f19999a  # 0.6f

    const/4 v4, 0x1

    if-gtz v1, :cond_63

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result p5

    const v1, 0x3f333333  # 0.7f

    cmpg-float p5, p5, v1

    if-gtz p5, :cond_46

    iget p5, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedMedium:F

    goto :goto_48

    :cond_46
    iget p5, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSlow:F

    :goto_48
    mul-float/2addr p2, v3

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5c

    iget p2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    cmpg-float p2, p1, p2

    if-gez p2, :cond_5c

    const p2, 0x3f266666  # 0.65f

    mul-float/2addr p4, p2

    cmpg-float p2, p3, p4

    if-gez p2, :cond_5c

    move v2, v4

    :cond_5c
    if-nez v2, :cond_79

    cmpg-float p1, p1, p5

    if-gez p1, :cond_7a

    goto :goto_79

    :cond_63
    iget-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    if-eqz p1, :cond_7a

    iget-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eqz p1, :cond_7a

    iget p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    cmpl-float p1, p3, p1

    if-gtz p1, :cond_79

    mul-float/2addr p4, v3

    cmpg-float p1, p3, p4

    if-gez p1, :cond_77

    goto :goto_79

    :cond_77
    move v0, v2

    goto :goto_7a

    :cond_79
    :goto_79
    move v0, v4

    :cond_7a
    :goto_7a
    iget-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eq p1, v0, :cond_a1

    const-string p1, "checkMotionPaused: "

    const-string p2, " mAllowCancel: "

    invoke-static {p1, v0, p2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  mIsPaused: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SwipeToRecentMotionPauseDetector "

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    :cond_a1
    return-void
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    return-void
.end method

.method public getVelocityX()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    instance-of v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;->getXVelocity()F

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getVelocityY()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    instance-of v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;->getYVelocity()F

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    return-void
.end method
