.class public Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;
.super Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
.source ""

# interfaces
.implements Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;
.implements Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;
.implements Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ToggleBarWidgetUIController"


# instance fields
.field private mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

.field private mStartByToggleBar:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->lambda$onDropWidgetToPagePreview$1(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method private findFirstScreenIndexForWidget(Landroid/content/ComponentName;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusLauncherModel;->findScreenIndexForWidget(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method private gotoPagePreviewState()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->closePanel(ZZ)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/launcher/togglebar/ToggleBarUtils;->onDragStart(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method private gotoToggleBarState()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->closePanel(ZZ)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->setupDefaultButtonState()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupDataProvider;->setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->onBackPressed(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private gotoWidgetListState()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearBackAction()V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoToggleBarState()V

    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .registers 2

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->clickable()Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->onBackPressed(Z)Z

    return-void
.end method

.method private synthetic lambda$onDropWidgetToPagePreview$1(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->onDropWidgetToDesktop(Z)V

    return-void
.end method

.method private searchAndUpdateWidgetCell(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 9

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto :goto_1f

    :cond_a
    instance-of v0, p2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_1f

    :cond_14
    instance-of v0, p2, Lcom/android/launcher3/util/PendingRequestArgs;

    if-eqz v0, :cond_7a

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/util/PendingRequestArgs;

    invoke-virtual {v0}, Lcom/android/launcher3/util/PendingRequestArgs;->getPendingWidgetProvider()Landroid/content/ComponentName;

    move-result-object v0

    :goto_1f
    if-nez v0, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cn is null! itemInfo = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToggleBarWidgetUIController"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    const/4 v1, 0x0

    if-nez p1, :cond_3d

    move v2, v1

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_41
    if-ge v1, v2, :cond_7a

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_77

    :cond_4e
    instance-of v4, v3, Lcom/android/launcher3/widget/OplusWidgetCell;

    if-eqz v4, :cond_6e

    check-cast v3, Lcom/android/launcher3/widget/OplusWidgetCell;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v5, :cond_77

    check-cast v4, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v4, v4, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_77

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->updateWidgetCellText(Landroid/content/ComponentName;Lcom/android/launcher3/widget/OplusWidgetCell;II)V

    goto :goto_77

    :cond_6e
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_77

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->searchAndUpdateWidgetCell(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_77
    :goto_77
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_7a
    return-void
.end method

.method private updateWidgetCellText(Landroid/content/ComponentName;Lcom/android/launcher3/widget/OplusWidgetCell;II)V
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->findFirstScreenIndexForWidget(Landroid/content/ComponentName;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_a

    move p1, v0

    goto :goto_b

    :cond_a
    move p1, v1

    :goto_b
    if-eqz p1, :cond_2b

    invoke-virtual {p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->getWidgetDims()Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const p4, 0x7f1200d2

    invoke-virtual {p3, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->getWidgetDims()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_68

    :cond_2b
    invoke-virtual {p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->getWidgetDims()Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const v3, 0x7f1205ba

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->getWidgetDims()Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    const p2, 0x7f1205b5

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v0

    invoke-virtual {p0, p2, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_68
    return-void
.end method


# virtual methods
.method public canScrollVerticallyDown(II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v2}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getWidgetsRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p0, "ToggleBarWidgetUIController"

    const-string/jumbo p1, "not in scroll area"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_23
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getWidgetsRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public createView(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->createView(I)V

    const p1, 0x7f0a05d8

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    iput-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getBehavior()V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->setOnDragDropWidgetListener(Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnDragDropWidgetListener;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->setOnClickWidgetListener(Lcom/android/launcher3/views/OplusWidgetsFullSheet$OnClickWidgetListener;)V

    const p1, 0x7f0a0558

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    new-instance v0, Lcom/android/launcher/v;

    invoke-direct {v0, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public destroy(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mStartByToggleBar:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->closePanel(ZZ)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mStartByToggleBar:Z

    if-nez v0, :cond_3b

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->mainUiResumeContentAlphaAnimation(ZJ)V

    :cond_3b
    return-void
.end method

.method public getContentLayoutId()I
    .registers 1

    const p0, 0x7f0d0239

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    return-object p0
.end method

.method public getContentViewHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getContentViewHeight()I

    move-result p0

    return p0
.end method

.method public getRootContainerViewId()I
    .registers 1

    const p0, 0x7f0a01ef

    return p0
.end method

.method public isStartByToggleBar()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mStartByToggleBar:Z

    return p0
.end method

.method public onClickOutside()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoToggleBarState()V

    return-void
.end method

.method public onClickWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-ne v0, v1, :cond_24

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v4, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/card/LauncherCardHost;->checkCardAddAble(Lcom/android/launcher3/Launcher;I)Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    iput-boolean v2, v0, Lcom/android/launcher3/card/PendingAddCardInfo;->mFromDrop:Z

    :cond_24
    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/launcher/Launcher;->addWidgetFromToggleItemOps(Lcom/android/launcher3/widget/PendingAddWidgetInfo;ZZ)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearBackAction()V

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher/togglebar/ToggleBarManager;->animCardStoreExpandCollapse(ZZ)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoToggleBarState()V

    goto :goto_49

    :cond_42
    const-string v0, "ToggleBarWidgetUIController"

    const-string v1, "add widget failed, filter addWidgetFromToggleItemClick log"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsClickToAddWidget(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    return-void
.end method

.method public onDragWidgetCancel()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoWidgetListState()V

    return-void
.end method

.method public onDragWidgetStart()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->setCardStoreExpandState(Z)V

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoPagePreviewState()V

    return-void
.end method

.method public onDropWidgetToDesktop(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoToggleBarState()V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->gotoWidgetListState()V

    :goto_9
    return-void
.end method

.method public onDropWidgetToPagePreview(ILcom/android/launcher3/widget/PendingAddWidgetInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)Z

    :cond_15
    iget-object p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLongClickWidget(Lcom/android/launcher3/PendingAddItemInfo;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_22

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/card/PendingAddCardInfo;

    invoke-static {}, Lcom/android/launcher3/card/LauncherCardHost;->getInstance()Lcom/android/launcher3/card/LauncherCardHost;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    iget v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->mCardType:I

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/card/LauncherCardHost;->checkCardAddAble(Lcom/android/launcher3/Launcher;I)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    :cond_22
    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsLongClickToAddWidget(Lcom/android/launcher3/PendingAddItemInfo;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onToggleBarItemParamsChanged(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {v0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->getWidgetsRecyclerView()Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->searchAndUpdateWidgetCell(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public onWidgetsBound()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->onWidgetsBound()V

    return-void
.end method

.method public playPullDownAnimation(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mOplusWidgetsFullSheet:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setStartByToggleBar(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/controller/ToggleBarWidgetUIController;->mStartByToggleBar:Z

    return-void
.end method
