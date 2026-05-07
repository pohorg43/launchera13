.class public final Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper$Companion;

.field private static final ENTER_HIDDEN_SPACE_SCALE_FACTOR:F = 1.5f

.field private static final MIN_NOTIFY_DURATION:I = 0x3e8

.field private static final SCALE_MIN_ANGLE:F = 70.0f

.field private static final SCALE_MIN_TAN:F

.field private static final SLIDE_MAX_ANGLE:F = 15.0f

.field private static final SLIDE_MAX_TAN:F

.field private static final TAG:Ljava/lang/String; = "HiddenAppsGestureHelper"


# instance fields
.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHideAppSlideOpenWidth:I

.field private mLastNotifyTime:J

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->Companion:Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper$Companion;

    const-wide v0, 0x4051800000000000L  # 70.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->SCALE_MIN_TAN:F

    const-wide/high16 v0, 0x402e000000000000L  # 15.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->SLIDE_MAX_TAN:F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0706d9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mHideAppSlideOpenWidth:I

    return-void
.end method

.method private final handleSlideGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->shouldIgnoreTouch()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mHideAppSlideOpenWidth:I

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-lez p2, :cond_31

    sget p2, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->SLIDE_MAX_TAN:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_31

    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->notifyHiddenApps()Z

    move-result p0

    return p0

    :cond_31
    return v1
.end method

.method private final notifyHiddenApps()Z
    .registers 4

    const-string v0, "HiddenAppsGestureHelper"

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLastNotifyTime:J

    iget-object p0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getHideListIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo p0, "notifyHiddenApps success"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_19

    const/4 p0, 0x1

    return p0

    :catch_19
    move-exception p0

    const-string/jumbo v1, "notifyHiddenApps error, "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private final shouldIgnoreTouch()Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    :cond_24
    iget-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->canShowHideAppsFromGesture(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string p0, "HiddenAppsGestureHelper"

    const-string/jumbo v0, "shouldIgnoreTouch can\'t show hide apps from gesture, ignore"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLastNotifyTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_49

    return v1

    :cond_49
    iget-object p0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    return v1
.end method

.method private final supportGesture()Z
    .registers 2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isOPExpDevice:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0}, Lcom/android/launcher3/pm/UserCache;->isSystemUser()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public final dispatchSlideMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->supportGesture()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    iget-object p0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public final handleScaleGesture(Landroid/view/ScaleGestureDetector;F)Z
    .registers 7

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->supportGesture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_18

    return v1

    :cond_18
    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->shouldIgnoreTouch()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    :cond_1f
    const/high16 v0, 0x3fc00000  # 1.5f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_53

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result p1

    div-float v0, p1, p2

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    const/4 v3, 0x1

    if-nez p2, :cond_37

    move p2, v3

    goto :goto_38

    :cond_37
    move p2, v1

    :goto_38
    if-eqz p2, :cond_44

    cmpg-float p1, p1, v2

    if-nez p1, :cond_40

    move p1, v3

    goto :goto_41

    :cond_40
    move p1, v1

    :goto_41
    if-nez p1, :cond_44

    goto :goto_4c

    :cond_44
    sget p1, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->SCALE_MIN_TAN:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v3, v1

    :goto_4c
    if-eqz v3, :cond_53

    invoke-direct {p0}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->notifyHiddenApps()Z

    move-result p0

    return p0

    :cond_53
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string/jumbo p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const-string p3, "ev1"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "ev2"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/hiddenapps/HiddenAppsGestureHelper;->handleSlideGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    const-string/jumbo p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const-string/jumbo p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "motionEvent1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    const-string/jumbo p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string/jumbo p0, "motionEvent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
