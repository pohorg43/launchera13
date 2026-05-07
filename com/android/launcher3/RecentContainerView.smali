.class public final Lcom/android/launcher3/RecentContainerView;
.super Lcom/android/launcher3/InsettableFrameLayout;
.source ""

# interfaces
.implements Lcom/oplus/screenshot/OplusLongshotUnsupported;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/RecentContainerView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/RecentContainerView$Companion;


# instance fields
.field private activePointerId:I

.field private downPos:Landroid/graphics/PointF;

.field private mActiveController:Lcom/android/launcher3/util/TouchController;

.field private mControllers:[Lcom/android/launcher3/util/TouchController;

.field private mHandled:Z

.field private mIsDarkMode:Z

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mOverviewScrim:Lcom/android/launcher3/graphics/Scrim;

.field private mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

.field private final touchSlop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/RecentContainerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/RecentContainerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/RecentContainerView;->Companion:Lcom/android/launcher3/RecentContainerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p2

    const-string v0, "getLauncher(context)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance p2, Lcom/android/launcher3/graphics/Scrim;

    invoke-direct {p2, p0}, Lcom/android/launcher3/graphics/Scrim;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/Scrim;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/RecentContainerView;->touchSlop:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    return-void
.end method

.method private final findActiveTouchController(Landroid/view/MotionEvent;)Z
    .registers 9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    iget-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-boolean v1, v1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->getTopView()Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_32

    instance-of v4, v1, Lcom/android/launcher3/views/ListenerView;

    if-eqz v4, :cond_29

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/views/ListenerView;

    invoke-virtual {v4}, Lcom/android/launcher3/views/ListenerView;->canInterceptEventsInSystemGestureRegion()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_29
    invoke-interface {v1, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_32

    iput-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    return v3

    :cond_32
    iget-object v1, p0, Lcom/android/launcher3/RecentContainerView;->mControllers:[Lcom/android/launcher3/util/TouchController;

    if-nez v1, :cond_3c

    const-string v1, "mControllers"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    array-length v1, v0

    move v4, v2

    :cond_3f
    if-ge v4, v1, :cond_4e

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v5, p1}, Lcom/android/launcher3/util/TouchController;->onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3f

    iput-object v5, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    return v3

    :cond_4e
    return v2
.end method

.method public static final findTopView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/RecentContainerView;->Companion:Lcom/android/launcher3/RecentContainerView$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/RecentContainerView$Companion;->findTopView(Lcom/android/launcher3/BaseDraggingActivity;)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final clearALLPopView(Z)V
    .registers 3

    const v0, 0x77ffff

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/RecentContainerView;->clearPopView(IZ)V

    return-void
.end method

.method public final clearPopView(IZ)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_27

    :goto_8
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "getChildAt(i)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v2, v0, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_22

    check-cast v0, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_22
    if-gez v1, :cond_25

    goto :goto_27

    :cond_25
    move v0, v1

    goto :goto_8

    :cond_27
    :goto_27
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/Scrim;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/graphics/Scrim;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    :cond_4
    move v2, v1

    goto :goto_d

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v0

    :goto_d
    if-eqz v2, :cond_22

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    :cond_22
    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    iget-boolean v2, v2, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-nez v2, :cond_41

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    if-nez v2, :cond_38

    :cond_36
    move v0, v1

    goto :goto_3e

    :cond_38
    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v2

    if-ne v2, v0, :cond_36

    :goto_3e
    if-nez v0, :cond_41

    return v1

    :cond_41
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final getMHandled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/RecentContainerView;->mHandled:Z

    return p0
.end method

.method public final getMIsDarkMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    return p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getMOverviewScrim()Lcom/android/launcher3/graphics/Scrim;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mOverviewScrim:Lcom/android/launcher3/graphics/Scrim;

    return-object p0
.end method

.method public final getMRecentView()Lcom/android/quickstep/views/LauncherRecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-object p0
.end method

.method public final getPopView(IZ)Lcom/android/launcher3/AbstractFloatingView;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">(IZ)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_28

    :goto_8
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/AbstractFloatingView;

    if-eqz v2, :cond_23

    check-cast v0, Lcom/android/launcher3/AbstractFloatingView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p2, :cond_22

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_22
    return-object v0

    :cond_23
    if-gez v1, :cond_26

    goto :goto_28

    :cond_26
    move v0, v1

    goto :goto_8

    :cond_28
    :goto_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTopView()Lcom/android/launcher3/AbstractFloatingView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/launcher3/AbstractFloatingView;",
            ">()TT;"
        }
    .end annotation

    const v0, 0x77ffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/RecentContainerView;->getPopView(IZ)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public isLongshotUnsupported()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->recreateTouchController()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0a03b0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    sget-object v0, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v2, "mContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_88

    :cond_4
    iget v0, p0, Lcom/android/launcher3/RecentContainerView;->activePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/RecentContainerView;->getMRecentView()Lcom/android/quickstep/views/LauncherRecentsView;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_12

    goto :goto_1f

    :cond_12
    iget-object v1, v1, Lcom/android/launcher3/PagedView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    if-nez v1, :cond_17

    goto :goto_1f

    :cond_17
    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1f
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7f

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v5, p0, Lcom/android/launcher3/RecentContainerView;->downPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    const/4 v5, 0x3

    if-nez v2, :cond_3a

    goto :goto_40

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_51

    :goto_40
    if-nez v2, :cond_43

    goto :goto_4a

    :cond_43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_4a

    goto :goto_51

    :cond_4a
    :goto_4a
    div-float v6, v0, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_57

    :cond_51
    :goto_51
    div-float v6, v1, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    :goto_57
    if-nez v2, :cond_5a

    goto :goto_60

    :cond_5a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v4, :cond_69

    :goto_60
    if-nez v2, :cond_63

    goto :goto_6a

    :cond_63
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_6a

    :cond_69
    move v1, v0

    :cond_6a
    :goto_6a
    iget v0, p0, Lcom/android/launcher3/RecentContainerView;->touchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7f

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7f

    const v0, 0x3fdd70a4  # 1.73f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_7f

    move v3, v4

    :cond_7f
    if-nez v3, :cond_88

    invoke-direct {p0, p1}, Lcom/android/launcher3/RecentContainerView;->findActiveTouchController(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_88

    return v4

    :cond_88
    :goto_88
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mActiveController:Lcom/android/launcher3/util/TouchController;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    :cond_6
    invoke-interface {v0, p1}, Lcom/android/launcher3/util/TouchController;->onControllerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_15

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_19

    :cond_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_19
    return p0
.end method

.method public final recreateTouchController()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;

    iget-object v2, p0, Lcom/android/launcher3/RecentContainerView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/android/launcher3/uioverrides/QuickstepLauncher$LauncherTaskViewController;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/launcher3/util/TouchController;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Lcom/android/launcher3/util/TouchController;

    iput-object v0, p0, Lcom/android/launcher3/RecentContainerView;->mControllers:[Lcom/android/launcher3/util/TouchController;

    return-void
.end method

.method public final setMHandled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/RecentContainerView;->mHandled:Z

    return-void
.end method

.method public final setMIsDarkMode(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/RecentContainerView;->mIsDarkMode:Z

    return-void
.end method

.method public final setMRecentView(Lcom/android/quickstep/views/LauncherRecentsView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/RecentContainerView;->mRecentView:Lcom/android/quickstep/views/LauncherRecentsView;

    return-void
.end method
