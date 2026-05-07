.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->createDepthAnimator(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$openingApp:Z

.field public final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;ZLandroid/animation/ValueAnimator;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-boolean p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$openingApp:Z

    iput-object p3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepthWithoutAnim(F)V

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    iget-object v2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/states/OPlusBaseState;->getBlur(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_64
    iget-boolean v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$openingApp:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setDepth(F)V

    :cond_80
    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$8;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method
