.class public Lcom/android/launcher3/uioverrides/states/OplusAllAppsState;
.super Lcom/android/launcher3/uioverrides/states/AllAppsState;
.source ""


# static fields
.field private static final ALL_APP_WORKSPACE_ROOM_OUT_SCALE:F = 0.92f

.field private static final DURATION:I = 0x15e


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBlur(Landroid/content/Context;Z)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusAllAppsState;->getBlurUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getBlurUnchecked(Landroid/content/Context;)F
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusAllAppsState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getDepth(Landroid/content/Context;Z)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusAllAppsState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public getDepthUnchecked(Landroid/content/Context;)F
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/states/OplusAllAppsState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 3

    new-instance p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    const p1, 0x3f6b851f  # 0.92f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getTransitionDuration(Landroid/content/Context;Z)I
    .registers 3

    const/16 p0, 0x15e

    return p0
.end method

.method public getVisibleElements(Lcom/android/launcher3/Launcher;)I
    .registers 2

    const/4 p0, 0x2

    return p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/uioverrides/states/AllAppsState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p0

    const p1, 0x3f6b851f  # 0.92f

    iput p1, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->translationY:F

    return-object p0
.end method

.method public onBackPressed(Lcom/android/launcher3/Launcher;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isAllAppsViewInSelectState()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->clearSelectedViews()V

    invoke-static {p1}, Lcom/android/launcher/views/AllAppsBatchTipView;->checkAndRemoveAllAppsBatchTipView(Lcom/android/launcher3/views/ActivityContext;)V

    return-void

    :cond_1e
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->resetSearch()V

    return-void

    :cond_4c
    invoke-super {p0, p1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void
.end method
