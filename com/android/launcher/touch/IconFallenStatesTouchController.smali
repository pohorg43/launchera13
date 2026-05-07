.class public Lcom/android/launcher/touch/IconFallenStatesTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# static fields
.field private static final AUTO_ICON_FALLEN_THRESHOLD:I = 0xa

.field private static final DEBUG:Z = true

.field public static final ICON_FALLEN_DIRECTION_LEFT:I = 0x0

.field public static final ICON_FALLEN_DIRECTION_RIGHT:I = 0x1

.field private static final MAX_ICON_FALLEN_TOUCH_CALCULATE_VELOCITY:I = 0x7d0

.field private static final MAX_ICON_FALLEN_TOUCH_VELOCITY:I = 0x3e8

.field private static final MAX_ICON_FALLEN_TOUCH_VELOCITY_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "IconFallenStatesTouchController"

.field private static final TOUCH_ICON_FALLEN_DURATION:I = 0x15e

.field private static sLastIconFallenTime:J


# instance fields
.field private mFallenIconMaxDistance:I

.field private mIconFallenDirection:I

.field private mIsAutoFallen:Z

.field private mIsTricFallenIcons:Z

.field private mLastDistance:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mNoIconToastShow:Z

.field private mNoIntercept:Z

.field private mOpenFolder:Lcom/android/launcher3/folder/Folder;

.field private mReorderAnimating:Z

.field private mResetFallenIcons:Z

.field private mSharePf:Landroid/content/SharedPreferences;

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchSlop:I

.field private mTricFallenIconsThreshold:I

.field private mTriggerTouchDownY:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrate:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsAutoFallen:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mResetFallenIcons:Z

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIconToastShow:Z

    iput-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mSharePf:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07070a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mFallenIconMaxDistance:I

    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_d

    :cond_c
    move p1, v1

    :goto_d
    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->isOverlayScrolling()Z

    move-result p0

    if-eqz p0, :cond_1f

    if-eqz p1, :cond_1f

    const-string p0, "IconFallenStatesTouchController"

    const-string p1, "canInterceptTouch false"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1f
    return v0
.end method

.method private canResponseTouchDetected(Lcom/android/launcher/Launcher;)Z
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IconFallenStatesTouchController"

    if-nez v0, :cond_11

    const-string p0, "isInState NORMAL false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_21

    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_21

    const-string p0, "getTopOpenView false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_21
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string p0, "isPageInTransition false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_31
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_41

    const-string p0, "hasWindowFocus false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_41
    sget-boolean v0, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    if-eqz v0, :cond_4c

    const-string/jumbo p0, "sIconPressAnimating false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4c
    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez p0, :cond_65

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_65

    const-string/jumbo p0, "workspace scale not default value false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_65
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isDismissKeyguardAnimating()Z

    move-result p0

    if-eqz p0, :cond_75

    const-string p0, "isDismissKeyguardAnimating true"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_75
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isAssistScreenShown()Z

    move-result p0

    if-eqz p0, :cond_81

    const-string p0, "isAssistScreenShown false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_81
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result p0

    if-nez p0, :cond_8d

    const-string p0, "isDraggingEnabled false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8d
    const/4 p0, 0x1

    return p0
.end method

.method private checkTouchEvent(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z
    .registers 9

    invoke-direct {p0, p2}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isXMovedOverSlop(Landroid/view/MotionEvent;)Z

    move-result p0

    const/4 v0, 0x1

    const-string v1, "IconFallenStatesTouchController"

    if-nez p0, :cond_f

    const-string p0, "isXMovedOverSlop: true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_f
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-gtz v2, :cond_31

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1e

    goto :goto_31

    :cond_1e
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    int-to-float p2, p3

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p0, "isTouchScrollAppWidget: true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_30
    return p0

    :cond_31
    :goto_31
    const-string p0, "getPointerId getPointerCount: true, getPointerCount = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getIsAuto()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsAutoFallen:Z

    return p0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isScrollFinished()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IconFallenStatesTouchController"

    if-nez v0, :cond_15

    const-string p0, "handleActionMove workspace is scrolling"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_29

    const-string p1, "handleActionMove current status is OVERVIEW"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    return v3

    :cond_29
    invoke-direct {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->getIsAuto()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isInstateIconFallen()Z

    move-result v0

    if-nez v0, :cond_48

    const-string p1, "handleActionMove mIsAutoFallen is true, return. mIsAutoFallen = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsAutoFallen:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_48
    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    if-eqz v0, :cond_10d

    invoke-virtual {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isInstateIconFallen()Z

    move-result v0

    if-nez v0, :cond_10d

    iput-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mResetFallenIcons:Z

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTriggerTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    const-string v0, "handleActionMove enter distance =  "

    const-string v4, " mLastDistance = "

    invoke-static {v0, p1, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    invoke-static {v0, v4, v2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    if-gtz p1, :cond_71

    const-string p0, "handleActionMove distance is negative, return."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_71
    int-to-float v0, p1

    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    sub-float v4, v0, v4

    const/high16 v5, 0x41200000  # 10.0f

    cmpl-float v4, v4, v5

    const/4 v5, 0x0

    if-lez v4, :cond_b1

    iget-boolean v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    if-nez v4, :cond_b1

    invoke-direct {p0, v3}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setIsAuto(Z)V

    iget p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    cmpl-float p1, p1, v5

    if-nez p1, :cond_97

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    invoke-virtual {p1, v0, v1, v5}, Lcom/android/launcher3/OplusWorkspace;->iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    :cond_97
    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    const/high16 v1, 0x3f800000  # 1.0f

    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    iget p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mFallenIconMaxDistance:I

    int-to-float p0, p0

    div-float/2addr v4, p0

    sub-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->iconFallenAuto(IF)V

    const-string p0, "handleActionMove got to auto fallen state."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b1
    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mFallenIconMaxDistance:I

    if-gt p1, v4, :cond_cb

    iget-boolean p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    if-nez p1, :cond_cb

    iput-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    iget v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher3/OplusWorkspace;->iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    goto :goto_10c

    :cond_cb
    const-string p1, "handleActionMove iconFallenComplete "

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mFallenIconMaxDistance:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/launcher3/OplusWorkspace;->iconFallenWithDistance(Lcom/android/launcher3/folder/Folder;IF)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mVibrate = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    invoke-static {p1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    if-nez p1, :cond_ff

    iput-boolean v3, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    const/16 v0, 0x45

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/util/VibrationUtils;->vibrate(Landroid/content/Context;IJ)V

    :cond_ff
    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusWorkspace;->iconFallenComplete(I)V

    iput v5, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    :goto_10c
    return v3

    :cond_10d
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isInstateIconFallen()Z

    move-result v0

    if-eqz v0, :cond_13c

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastTouchX:F

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastTouchY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isScaledEnable(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-nez v0, :cond_124

    return v3

    :cond_124
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isMovedOverMaxVelocity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12b

    return v3

    :cond_12b
    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/OplusWorkspace;->iconFallenScale(FF)V

    :cond_13c
    return v3
.end method

.method private isIconFallenSwitchOn(Lcom/android/launcher/Launcher;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mSharePf:Landroid/content/SharedPreferences;

    sget-object p1, Lcom/android/launcher/settings/LauncherIconFallenFragment;->ICON_FALLEN_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v0, "sp_key_icon_fallen_switch"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private isMovedOverMaxVelocity(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_57

    invoke-direct {p0, p1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0xc8

    const/high16 v2, 0x447a0000  # 1000.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    const-string v2, "isMovedOverMaxVelocity  vl = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " minvY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " minvX = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ts = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchSlop:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconFallenStatesTouchController"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x44fa0000  # 2000.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_57

    const/4 v1, 0x1

    :cond_57
    return v1
.end method

.method private isScaledEnable(Landroid/view/MotionEvent;FF)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchSlop:I

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gt p2, p0, :cond_22

    if-le p1, p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method

.method private isXMovedOverSlop(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownY:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchSlop:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownY:F

    sub-float/2addr p0, p1

    int-to-float p1, v2

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2f

    if-le v1, v0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private setIsAuto(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsAutoFallen:Z

    return-void
.end method

.method private shouldIconFallen()Z
    .registers 5

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_1a

    iget-object v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v3, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2e

    :cond_1a
    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mReorderAnimating:Z

    if-nez v0, :cond_2e

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-gez v0, :cond_2b

    iput v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    goto :goto_2d

    :cond_2b
    iput v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    :goto_2d
    return v1

    :cond_2e
    const-string/jumbo v0, "shouldIconFallen false mTouchDownX:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",TRIC_FALLEN_ICONS_THRESHOLD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mReorderAnimating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mReorderAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mLauncher.getDeviceProfile().widthPx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIconFallenDirection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIconFallenDirection:I

    const-string v1, "IconFallenStatesTouchController"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v2
.end method

.method private touchUp()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isInstateIconFallen()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->performFallenIconClick()V

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->resetFallenIcons()V

    return-void
.end method


# virtual methods
.method public isInFalling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    return p0
.end method

.method public isInstateIconFallen()Z
    .registers 7

    const-string v0, " isInstateIconFallen state = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget v1, v1, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v1}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isInstateIconFallen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->ICON_FALLEN_DOWN:Lcom/android/launcher3/LauncherState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_32

    move v1, v3

    goto :goto_33

    :cond_32
    move v1, v4

    :goto_33
    const-string v5, "IconFallenStatesTouchController"

    invoke-static {v0, v1, v5}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    if-ne p0, v2, :cond_45

    goto :goto_46

    :cond_45
    move v3, v4

    :goto_46
    return v3
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    if-eq v0, v1, :cond_b

    goto :goto_5f

    :cond_b
    sput-boolean v2, Lcom/android/launcher/iconfallen/IconFallenUtils;->sIconPressAnimating:Z

    goto :goto_5f

    :cond_e
    iput-boolean v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mVibrate:Z

    iput-boolean v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownY:F

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-static {}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->getInstance()Lcom/android/launcher3/pullup/PullUpOperatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpOperatorManager;->isSupportPullUp()Z

    move-result v0

    if-nez v0, :cond_47

    sget-boolean v0, Lo1/e;->a:Z

    if-eqz v0, :cond_37

    goto :goto_47

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070710

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    goto :goto_56

    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070711

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    :goto_56
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIntercept:Z

    iput-boolean v2, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIconToastShow:Z

    :goto_5f
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isScrollFinished()Z

    move-result v0

    const-string v3, "IconFallenStatesTouchController"

    if-nez v0, :cond_79

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_78

    const-string p0, "handleActionMove workspace is scrolling"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    return v2

    :cond_79
    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIntercept:Z

    if-eqz v0, :cond_7e

    return v2

    :cond_7e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/android/launcher/touch/IconFallenStatesTouchController;->sLastIconFallenTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x15e

    cmp-long v0, v4, v6

    if-gez v0, :cond_90

    return v2

    :cond_90
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->isIconFallenSwitchOn(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_99

    return v2

    :cond_99
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_b2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_b1

    const-string/jumbo p0, "onControllerInterceptTouchEvent, In ChildrenMode return false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    return v2

    :cond_b2
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    if-nez v0, :cond_c3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_c2

    const-string/jumbo p0, "onControllerInterceptTouchEvent, isConfidentialVersion false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    return v2

    :cond_c3
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_d9

    const-string/jumbo p0, "onControllerInterceptTouchEvent, isInSimpleMode return false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    return v2

    :cond_da
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v4, :cond_f1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_f0

    const-string/jumbo p0, "onControllerInterceptTouchEvent, is Landscape return false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f0
    return v2

    :cond_f1
    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_fc

    const-string/jumbo p0, "onControllerInterceptTouchEvent, in multi mode, return false!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_fc
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    iput-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_117

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    invoke-interface {v0}, Lcom/android/launcher3/folder/IFolderExt;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_117

    const-string/jumbo p0, "onControllerInterceptTouchEvent, folder open animation not end, return false!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_117
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownY:F

    float-to-int v5, v5

    invoke-direct {p0, v0, p1, v4, v5}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->checkTouchEvent(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_131

    const-string/jumbo p0, "onControllerInterceptTouchEvent, checkTouchEvent false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_131
    return v2

    :cond_132
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->canResponseTouchDetected(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_147

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_146

    const-string/jumbo p0, "onControllerInterceptTouchEvent, canResponseTouchDetected false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_146
    return v2

    :cond_147
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_172

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v4}, Lcom/android/launcher/folder/recommend/FooterController;->enableFooterRecommend(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result v0

    if-eqz v0, :cond_172

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->getFooterController()Lcom/android/launcher/folder/recommend/FooterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/folder/recommend/FooterController;->recommendIsShowing()Z

    move-result v0

    if-nez v0, :cond_172

    return v2

    :cond_172
    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    if-nez v0, :cond_1f8

    invoke-direct {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->shouldIconFallen()Z

    move-result v0

    if-eqz v0, :cond_1f8

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_188

    const-string/jumbo v0, "onControllerInterceptTouchEvent shouldIconFallen, shouldIconFallen true"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_188
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->hasNoIcon()Z

    move-result v0

    if-eqz v0, :cond_1b9

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    if-nez v0, :cond_1b9

    iget-boolean p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIconToastShow:Z

    if-nez p1, :cond_1b3

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12029a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mNoIconToastShow:Z

    goto :goto_1b8

    :cond_1b3
    const-string p0, "No app icons to pull down"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b8
    return v2

    :cond_1b9
    iput-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTriggerTouchDownY:F

    iget v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTouchDownX:F

    iget v3, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mTricFallenIconsThreshold:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1cb

    goto :goto_1cc

    :cond_1cb
    move v2, v1

    :goto_1cc
    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mOpenFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v3, v2, p1}, Lcom/android/launcher3/OplusWorkspace;->initIconFallenPara(Lcom/android/launcher3/folder/Folder;IF)V

    iget-object p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->startHandingIconFallenState()V

    iget-object p0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    return v1

    :cond_1f8
    return v2
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_23

    goto :goto_26

    :cond_e
    invoke-direct {p0, p1}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->handleActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastTouchY:F

    goto :goto_26

    :cond_23
    invoke-direct {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->touchUp()V

    :goto_26
    return v1
.end method

.method public resetFallenIcons()V
    .registers 4

    const-string/jumbo v0, "resetFallenIcons : mResetFallenIcons = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mResetFallenIcons:Z

    const-string v2, "IconFallenStatesTouchController"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mResetFallenIcons:Z

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->cancelAutoFallen()V

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->resetFallenIconsPosition()V

    iget-object v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->endHandingIconFallenState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mIsTricFallenIcons:Z

    invoke-direct {p0, v0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->setIsAuto(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mLastDistance:F

    invoke-direct {p0}, Lcom/android/launcher/touch/IconFallenStatesTouchController;->releaseVelocityTracker()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->sLastIconFallenTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mResetFallenIcons:Z

    :cond_42
    return-void
.end method

.method public setReorderAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/touch/IconFallenStatesTouchController;->mReorderAnimating:Z

    return-void
.end method
