.class public Lcom/android/launcher/togglebar/ToggleBarManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleBarManager"


# instance fields
.field private mBackAction:Ljava/lang/String;

.field private mCachedAnim:Landroid/animation/AnimatorSet;

.field private mCardStorePanelExpand:Z

.field private mFontSizeObserver:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mPendingState:Ljava/lang/String;

.field private mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher/togglebar/ToggleBarStateStack<",
            "Lcom/android/launcher/togglebar/state/ToggleBarBaseState;",
            ">;"
        }
    .end annotation
.end field

.field private mToggleBarContainer:Landroid/widget/FrameLayout;

.field private mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

.field private mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCardStorePanelExpand:Z

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v0, 0x7f0a0555

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    const v0, 0x7f0a054d

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a054c

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/ToggleBarRootView;

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-direct {v0, p1}, Lcom/android/launcher/togglebar/ToggleBarStateStack;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    new-instance p1, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mFontSizeObserver:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->lambda$startWidgetPanelFromCardStore$1(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/ToggleBarManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->lambda$gotoToggleBarOnLauncherNewIntent$0(Ljava/lang/String;)V

    return-void
.end method

.method private isOrderLegal(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)Z
    .registers 3

    instance-of p0, p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-nez p0, :cond_b

    instance-of p0, p2, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private synthetic lambda$gotoToggleBarOnLauncherNewIntent$0(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoToggleBarOnLauncherNewIntent: topState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ToggleBarManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_43

    :cond_2b
    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->isInMainState()Z

    move-result v1

    if-nez v1, :cond_35

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->finish(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Z)V

    :cond_35
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1, v0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->stringValueOfState(Ljava/lang/String;Lcom/android/launcher/Launcher;)Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    goto :goto_51

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :goto_51
    return-void
.end method

.method private synthetic lambda$startWidgetPanelFromCardStore$1(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V
    .registers 4

    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->isInStableState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    :cond_11
    invoke-virtual {p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->isInMainState()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->finish(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Z)V

    :cond_1b
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;-><init>(Lcom/android/launcher/Launcher;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    goto :goto_3d

    :cond_2a
    :goto_2a
    const-string/jumbo p1, "widget"

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :goto_3d
    return-void
.end method


# virtual methods
.method public animCardStoreExpandCollapse(ZZ)V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string p0, "ToggleBarManager"

    const-string p1, "No need to animCardStoreExpandCollapse as had back action"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iput-boolean p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCardStorePanelExpand:Z

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_20

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    :goto_20
    instance-of v1, v0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2d

    instance-of v0, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    move v0, v2

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v0, v3

    :goto_2e
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-nez v1, :cond_8b

    if-nez v0, :cond_3d

    goto :goto_8b

    :cond_3d
    if-eqz p1, :cond_41

    const/4 v0, 0x0

    goto :goto_43

    :cond_41
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_43
    move v5, v0

    if-eqz p1, :cond_49

    const/16 v0, 0xc8

    goto :goto_4a

    :cond_49
    move v0, v2

    :goto_4a
    iget-object v4, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    const/4 v6, 0x0

    const-wide/16 v7, 0x237

    sget-object v12, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_NORMAL:Landroid/view/animation/PathInterpolator;

    const-wide/16 v10, 0x14d

    move-object v9, v12

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;JLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_61

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_61
    if-eqz p2, :cond_64

    return-void

    :cond_64
    iget-object p2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_71

    return-void

    :cond_71
    :goto_71
    if-ge v2, p2, :cond_8b

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    xor-int/lit8 v4, p1, 0x1

    invoke-static {v1, v4, v0, v3}, Lcom/android/common/util/StateSwitchUtils;->applySwitchStateForContainer(Lcom/android/launcher3/ShortcutAndWidgetContainer;ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_8b
    :goto_8b
    return-void
.end method

.method public cancelCachedAnim()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    return-void
.end method

.method public changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;II)V

    return-void
.end method

.method public changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;II)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeToggleBarState: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_19

    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "changeToggleBarState, topState = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", state = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    invoke-direct {p0, v0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isOrderLegal(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)Z

    move-result v1

    if-nez v1, :cond_49

    return-void

    :cond_49
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_71

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v3

    if-nez v3, :cond_5a

    instance-of v3, p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-nez v3, :cond_58

    goto :goto_5a

    :cond_58
    move v3, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v3, v2

    :goto_5b
    instance-of v4, p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-eqz v4, :cond_6e

    move-object v4, p1

    check-cast v4, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    invoke-virtual {v4}, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;

    invoke-virtual {v4}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->isStartByToggleBar()Z

    move-result v4

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    :cond_6e
    invoke-virtual {v0, p2, v3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->pause(IZ)V

    :cond_71
    invoke-virtual {p1, p3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->create(I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->resume(ZZ)V

    return-void
.end method

.method public clearBackAction()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    return-void
.end method

.method public clearStateStack()V
    .registers 3

    const-string v0, "ToggleBarManager"

    const-string v1, "clearStateStack"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->pop(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    goto :goto_7

    :cond_1d
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public destroy()V
    .registers 3

    const-string v0, "ToggleBarManager"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_14
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mFontSizeObserver:Lcom/oplus/quickstep/common/observers/IconStyleFontSizeObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public dumpStateStack()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public finish(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1e

    const-string p0, "finish, null state!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_61

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_3e

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->pause(IZ)V

    invoke-virtual {p1, p2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0, v3}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->pop(Z)Ljava/lang/Object;

    goto/16 :goto_b4

    :cond_3e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finish, state error! state = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", peekState = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :cond_61
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    if-nez v0, :cond_74

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statWidgetsAndCardsExposure()V

    invoke-virtual {p1, p2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    goto :goto_b4

    :cond_74
    if-eq v0, p1, :cond_93

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finish, The editor state to be finished is not at the top of the stack: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", topState: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_93
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0, v3}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->pop(Z)Ljava/lang/Object;

    :cond_a0
    invoke-virtual {p1, p2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b4

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    if-eqz p0, :cond_b4

    invoke-virtual {p0, p2, p2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->resume(ZZ)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public getToggleBarContainer()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getToggleBarRootViewRect()Landroid/graphics/Rect;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-object v0
.end method

.method public getToggleBarView()Lcom/android/launcher/togglebar/ToggleBarRootView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    return-object p0
.end method

.method public getToggleBarViewHeight()I
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070c83

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getToggleBarContentHeight()I

    move-result p0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_25
    add-int/2addr p0, v0

    add-int/2addr p0, v2

    return p0

    :cond_28
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070cbb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_25
.end method

.method public getToggleToolbar()Lcom/android/launcher/togglebar/views/ToggleStateToolbar;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    return-object p0
.end method

.method public getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    return-object p0
.end method

.method public gotoToggleBarOnLauncherNewIntent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "layout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/togglebar/ToggleBarManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    return-void
.end method

.method public hasPendingState()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isCardStorePanelExpand()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCardStorePanelExpand:Z

    return p0
.end method

.method public isStackEmpty()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isWidgetStateTop()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    return p0
.end method

.method public mainUiResumeContentAlphaAnimation(ZJ)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    move-result-object p0

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->animationContentAlpha(ZJ)V

    goto :goto_1e

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->getContentView()Landroid/view/View;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public notifyDragButtonState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->notifyDragButtonState(Z)V

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 6

    const-string/jumbo v0, "onBackPressed -- mBackAction = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToggleBarManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    :cond_23
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher/togglebar/ToggleBarUtils;->handleBackAction(Ljava/lang/String;Lcom/android/launcher/Launcher;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_31

    iput-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    return v3

    :cond_31
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_65

    if-eqz v0, :cond_64

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->onBackPressed(Z)Z

    move-result p1

    if-nez p1, :cond_64

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->pop(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    invoke-virtual {v0, v3}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->destroy(Z)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    return v2

    :cond_56
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    xor-int/2addr p1, v3

    invoke-virtual {p0, v3, p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->resume(ZZ)V

    :cond_64
    return v3

    :cond_65
    return v2
.end method

.method public onConfigurationChanged(ILcom/android/launcher/Launcher;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne v0, v1, :cond_21

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-eqz p0, :cond_21

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p0

    if-eqz p0, :cond_21

    and-int/lit16 p0, p1, 0x480

    if-eqz p0, :cond_21

    invoke-static {p2}, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->refreshToggleBarLayout(Lcom/android/launcher/Launcher;)V

    :cond_21
    return-void
.end method

.method public onSyncEvent(I)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->startWidgetPanelFromCardStore()V

    :goto_6
    return-void
.end method

.method public onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo p0, "not in togglebar state, itemInfo = "

    const-string v0, "ToggleBarManager"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    invoke-virtual {v0, p1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_19

    :cond_29
    return-void
.end method

.method public onToggleBarStateDisableTransitionEnd()V
    .registers 4

    const-string v0, "ToggleBarManager"

    const-string/jumbo v1, "onToggleBarStateDisableTransitionEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isStatusBarWpBright()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->setStatusBarColor(Lcom/android/launcher/Launcher;Z)V

    :cond_1d
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    if-eqz v1, :cond_30

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    :cond_30
    return-void
.end method

.method public onToggleBarStateEnable(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleBarView:Lcom/android/launcher/togglebar/ToggleBarRootView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    const-string v0, "ToggleBarManager"

    const-string/jumbo v2, "onToggleBarStateEnable "

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p1, :cond_17

    const v1, -0x7fffffff

    :cond_17
    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_3e

    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v2}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->create(I)V

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {v2, p1}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p1, v2}, Lcom/android/launcher/togglebar/ToggleBarUtils;->stringValueOfState(Ljava/lang/String;Lcom/android/launcher/Launcher;)Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;II)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    goto :goto_48

    :cond_3e
    new-instance p1, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v2}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->changeToggleBarState(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;II)V

    :goto_48
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->onWallpaperBrightnessChanged()V

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mStateStack:Lcom/android/launcher/togglebar/ToggleBarStateStack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->onWallpaperBrightnessChanged()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public setCachedAnim(Landroid/animation/AnimatorSet;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCachedAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public setCardStoreExpandState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mCardStorePanelExpand:Z

    return-void
.end method

.method public setPendingState(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    return-void
.end method

.method public setToggleStateToolbarAlpha(F)V
    .registers 4

    const v0, 0x3e99999a  # 0.3f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float p1, v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setAlpha(F)V

    return-void
.end method

.method public showOrDismissMainUIControllerToolTips(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz v0, :cond_17

    check-cast p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/state/ToggleBarMainState;->getUiController()Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;

    move-result-object p0

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->showToolTips()V

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarMainUIController;->dismissToolTip()V

    :cond_17
    :goto_17
    return-void
.end method

.method public startWidgetPanelFromCardStore()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWidgetPanelFromCardStore: topState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ToggleBarManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object v1, v1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/guide/c;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/togglebar/ToggleBarManager;Lcom/android/launcher/togglebar/state/ToggleBarBaseState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "com.oplus.cardStore.ACTION_CARD_STORE"

    iput-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mBackAction:Ljava/lang/String;

    return-void
.end method

.method public toolbarAnimation(FF)Landroid/animation/AnimatorSet;
    .registers 11

    const-string/jumbo v0, "toolbarAnimation, mPendingState = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    const-string v2, "ToggleBarManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mPendingState:Ljava/lang/String;

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return-object p0

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_21

    const-wide/16 v0, 0x96

    goto :goto_23

    :cond_21
    const-wide/16 v0, 0x118

    :goto_23
    move-wide v5, v0

    iget-object v2, p0, Lcom/android/launcher/togglebar/ToggleBarManager;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    sget-object v7, Lcom/android/launcher/togglebar/animation/ToggleBarAnimHelper;->INTERPOLATOR_TOGGLE_BAR:Landroid/view/animation/PathInterpolator;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->toolbarAnimation(FFJLandroid/view/animation/Interpolator;)Landroid/animation/AnimatorSet;

    move-result-object p0

    return-object p0
.end method
