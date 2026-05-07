.class Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_e

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    goto :goto_1d

    :cond_e
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_1d

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowUpArrow()V

    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$602(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$800(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    if-ne p1, v0, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getAllAppsDividerItemView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$900(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needShowBranchSearchGuide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5c

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->showBranchSearchGuide()V

    :cond_5c
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->clearSearchEditFocus()V

    :cond_19
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    goto/16 :goto_94

    :cond_20
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_30

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->readyGoToToggleBarState()V

    goto :goto_94

    :cond_30
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_55

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/search/OplusSearchUiManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/allapps/search/OplusSearchUiManager;->clearSearchEditFocus()V

    :cond_4a
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1, v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$602(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    goto :goto_94

    :cond_55
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_69

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1, v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$602(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)Z

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$700(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    goto :goto_94

    :cond_69
    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_94

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, v0, :cond_89

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1, v1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$602(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    :cond_89
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_94

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    :cond_94
    :goto_94
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$5;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
