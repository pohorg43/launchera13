.class public Lcom/android/launcher/pagepreview/PagePreviewManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mLauncher:Lcom/android/launcher/Launcher;

    const v0, 0x7f0a03bc

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pagepreview/PagePreviewRoot;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    return-void
.end method

.method private getPagePreviewLpHeight()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method private getPagePreviewLpWidth()I
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_16

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method private isPagePreviewState()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getPagePreviewLayout()Lcom/android/launcher/pagepreview/PagePreviewRoot;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    return-object p0
.end method

.method public getPagePreviewLpSize(Z)I
    .registers 2

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLpWidth()I

    move-result p0

    return p0

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLpHeight()I

    move-result p0

    return p0
.end method

.method public onDropAnimationComplete(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->isPagePreviewState()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onDropAnimationComplete(I)V

    :cond_e
    return-void
.end method

.method public onPageEndTransition()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->isPagePreviewState()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onPageEndTransition()V

    :cond_e
    return-void
.end method

.method public onStateDisableTransitionEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onStateDisableTransitionEnd()V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method public onStateDisabled()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onStateDisabled()V

    :cond_7
    return-void
.end method

.method public onStateEnabled()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onStateEnabled()V

    :cond_7
    return-void
.end method

.method public onStateTransitionEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onStateTransitionEnd()V

    :cond_7
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->onWallpaperBrightnessChanged()V

    :cond_7
    return-void
.end method

.method public refreshIconSelectState(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->refreshIconSelectState(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setFolderFormBtnEnable(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setFolderFormBtnEnable(Z)V

    :cond_7
    return-void
.end method

.method public setRemoveBtnState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setRemoveBtnState(Z)V

    :cond_7
    return-void
.end method

.method public setupCancelButtonState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setupCancelButtonState()V

    :cond_7
    return-void
.end method

.method public setupDefaultButtonState()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setupDefaultButtonState()V

    :cond_7
    return-void
.end method

.method public setupViews()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->setupViews()V

    return-void
.end method

.method public updatePagePreviewItems()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->updatePagePreviewItems()V

    :cond_7
    return-void
.end method

.method public updatePreviewListItems()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewManager;->mPagePreviewLayout:Lcom/android/launcher/pagepreview/PagePreviewRoot;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/PagePreviewRoot;->updatePreviewListContainerItems()V

    :cond_7
    return-void
.end method
