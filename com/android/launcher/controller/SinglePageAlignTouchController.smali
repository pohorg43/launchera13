.class public final Lcom/android/launcher/controller/SinglePageAlignTouchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/TouchController;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/controller/SinglePageAlignTouchController$Companion;
    }
.end annotation


# static fields
.field private static final CURVED_DISPLAY_LIMIT:F = 50.0f

.field public static final Companion:Lcom/android/launcher/controller/SinglePageAlignTouchController$Companion;

.field private static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final SCREEN_HEIGHT_SCALE_RADIO:F = 12.5f

.field private static final TAG:Ljava/lang/String; = "SinglePageAlignTouchController"


# instance fields
.field private final launcher:Lcom/android/launcher/Launcher;

.field private mCanInterceptTouch:Z

.field private mDownX:F

.field private mDownY:F

.field private mScaledTouchSlop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/controller/SinglePageAlignTouchController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/controller/SinglePageAlignTouchController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->Companion:Lcom/android/launcher/controller/SinglePageAlignTouchController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mScaledTouchSlop:I

    return-void
.end method

.method private final canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    const-string v1, "SinglePageAlignTouchController"

    const/4 v2, 0x0

    if-nez v0, :cond_13

    const-string p0, "canInterceptTouch: not in TOGGLE_BAR"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1e

    :cond_1c
    :goto_1c
    move v0, v2

    goto :goto_2c

    :cond_1e
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_1c

    :cond_25
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->isInMainState()Z

    move-result v0

    if-ne v0, v3, :cond_1c

    move v0, v3

    :goto_2c
    if-nez v0, :cond_34

    const-string p0, "canInterceptTouch: ToggleBar is not in main state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object p0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_4b

    const-string p0, "canInterceptTouch: touch StatusBar"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_56

    const-string p0, "canInterceptTouch: true"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return v3
.end method

.method private final checkTouchEvent(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/controller/SinglePageAlignTouchController;->isInToggleBarArea()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p0

    if-gtz p0, :cond_2d

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    const/4 p2, 0x2

    if-lt p0, p2, :cond_17

    goto :goto_2d

    :cond_17
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result p0

    if-eqz p0, :cond_22

    return v0

    :cond_22
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    int-to-float p1, p3

    int-to-float p2, p4

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusWorkspace;->isTouchScrollAppWidget(FF)Z

    move-result p0

    return p0

    :cond_2d
    :goto_2d
    return v0
.end method

.method private final isInToggleBarArea()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getToggleBarRootViewRect()Landroid/graphics/Rect;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_12

    const/4 p0, 0x0

    goto :goto_1c

    :cond_12
    iget v1, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownX:F

    float-to-int v1, v1

    iget p0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownY:F

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    :goto_1c
    return p0
.end method

.method private final normalAreaDetect(Landroid/view/MotionEvent;II)Z
    .registers 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c5

    iput-boolean v2, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mCanInterceptTouch:Z

    iget-object v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/launcher/controller/SinglePageAlignTouchController;->checkTouchEvent(Lcom/android/launcher/Launcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    const-string v3, "SinglePageAlignTouchController"

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_20

    const-string/jumbo p0, "normalAreaDetect, checkTouchEvent false"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return v2

    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    int-to-float v4, p3

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v5, 0x0

    invoke-static {p2, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_3e

    const/high16 p2, 0x3f800000  # 1.0f

    :cond_3e
    div-float v5, v0, p2

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3f860a92

    cmpl-float v6, v5, v6

    if-lez v6, :cond_c5

    iget v6, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mScaledTouchSlop:I

    mul-int/lit8 v6, v6, 0x6

    iget-object v7, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    if-lez v7, :cond_6a

    iget v6, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mScaledTouchSlop:I

    mul-int/lit8 v8, v6, 0x5

    mul-int/2addr v8, p3

    div-int/2addr v8, v7

    const/high16 p3, 0x41480000  # 12.5f

    int-to-float v6, v6

    mul-float/2addr v6, p3

    int-to-float p3, v8

    sub-float/2addr v6, p3

    float-to-int v6, v6

    :cond_6a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p3

    if-eqz p3, :cond_9d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "normalAreaDetect, touchSlop = "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", theta = "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", deltaX = "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", deltaY = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p2, v4

    int-to-float p3, v6

    cmpl-float p2, p2, p3

    if-lez p2, :cond_b1

    iget-object p0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusWorkspace;->singlePageAlign(Z)V

    goto :goto_c5

    :cond_b1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v4

    neg-int p2, v6

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_c5

    iget-object p0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusWorkspace;->singlePageAlign(Z)V

    :cond_c5
    :goto_c5
    return v2
.end method


# virtual methods
.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    invoke-direct {p0, p1}, Lcom/android/launcher/controller/SinglePageAlignTouchController;->canInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mCanInterceptTouch:Z

    if-nez v0, :cond_15

    return v1

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownY:F

    :cond_21
    iget-boolean v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mCanInterceptTouch:Z

    if-nez v0, :cond_26

    return v1

    :cond_26
    iget v0, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/launcher/controller/SinglePageAlignTouchController;->mDownY:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher/controller/SinglePageAlignTouchController;->normalAreaDetect(Landroid/view/MotionEvent;II)Z

    move-result p0

    return p0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
