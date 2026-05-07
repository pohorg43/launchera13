.class public Lcom/android/launcher3/card/LongClickEffectHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CARD_RESTORE_DURATION:I = 0xfa

.field public static final CARD_ZOOM_IN_DURATION:I = 0xfa

.field public static final CARD_ZOOM_OUT_DURATION:I = 0xfa

.field private static final DEFAULT_SCALE_VALUE:F = 1.0f

.field private static final SCROLL_THRESHOLD:F = 15.0f

.field private static final TAG:Ljava/lang/String; = "LongClickEffectHandler"

.field private static final WAIT_SCROLL_DELAY:J = 0x46L

.field public static final ZOOM_IN_SCALE_VALUE:F = 1.0f

.field private static final ZOOM_OUT_SCALE_VALUE:F = 0.95f


# instance fields
.field private mAlarm:Lcom/android/launcher3/Alarm;

.field private mDownX:F

.field private mDownY:F

.field private mIsBigFolder:Z

.field private mIsWidget:Z

.field private mPressedAnim:Landroid/animation/ValueAnimator;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-boolean v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsBigFolder:Z

    instance-of p1, p1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iput-boolean p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsWidget:Z

    if-eqz v0, :cond_16

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    :cond_16
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/LongClickEffectHandler;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->lambda$onTouchEvent$0(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/LongClickEffectHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->lambda$createRestoreAnim$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/card/LongClickEffectHandler;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->lambda$createZoomAnim$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private cancelAnim()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    :cond_10
    return-void
.end method

.method private createRestoreAnim()V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/card/LongClickEffectHandler;->cancelAnim()V

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    instance-of v2, v0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v2, :cond_2a

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v1}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v0}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_32

    :cond_2a
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_46

    check-cast v2, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v2}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v2

    mul-float/2addr v1, v2

    :cond_46
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/launcher3/card/d;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/card/d;-><init>(Lcom/android/launcher3/card/LongClickEffectHandler;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private createZoomAnim(Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/card/LongClickEffectHandler;->cancelAnim()V

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    if-eqz p1, :cond_f

    const p1, 0x3f733333  # 0.95f

    goto :goto_11

    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_11
    iget-object v1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v2, :cond_1e

    check-cast v1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v1}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result v1

    mul-float/2addr p1, v1

    :cond_1e
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/card/d;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/card/d;-><init>(Lcom/android/launcher3/card/LongClickEffectHandler;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private synthetic lambda$createRestoreAnim$2(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$createZoomAnim$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$0(Lcom/android/launcher3/Alarm;)V
    .registers 2

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LongClickEffectHandler;->createZoomAnim(Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    const v1, 0x7f0a0566

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "LongClickEffectHandler"

    const-string/jumbo p1, "onTouchEvent is skipped for area widget is transforming"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9f

    const-wide/high16 v2, 0x402e000000000000L  # 15.0

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_65

    goto/16 :goto_c9

    :cond_37
    iget-boolean v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsBigFolder:Z

    if-eqz v0, :cond_c9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v4, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownY:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_c9

    iget-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_61

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    goto :goto_c9

    :cond_61
    invoke-direct {p0}, Lcom/android/launcher3/card/LongClickEffectHandler;->createRestoreAnim()V

    goto :goto_c9

    :cond_65
    iget-boolean v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsBigFolder:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_6e
    iget-boolean v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsWidget:Z

    if-eqz v0, :cond_9b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v4, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownY:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_9b

    iget-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {p1, v0}, Lcom/android/statistics/LauncherStatistics;->statWidgetClickEvent(Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;)V

    :cond_9b
    invoke-direct {p0}, Lcom/android/launcher3/card/LongClickEffectHandler;->createRestoreAnim()V

    goto :goto_c9

    :cond_9f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mDownY:F

    iget-boolean p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mIsBigFolder:Z

    if-eqz p1, :cond_c1

    iget-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x46

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object p1, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher/folder/download/a;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/download/a;-><init>(Lcom/android/launcher3/card/LongClickEffectHandler;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    goto :goto_c9

    :cond_c1
    invoke-direct {p0, v1}, Lcom/android/launcher3/card/LongClickEffectHandler;->createZoomAnim(Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_c9
    :goto_c9
    return-void
.end method

.method public playRestoreAnim()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/LongClickEffectHandler;->createZoomAnim(Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public removeCompletedAction()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/card/LongClickEffectHandler;->mPressedAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_d
    return-void
.end method
