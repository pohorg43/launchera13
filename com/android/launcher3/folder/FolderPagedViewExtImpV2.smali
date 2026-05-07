.class public Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/folder/IFolderPagedViewExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/folder/IFolderPagedViewExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/launcher3/folder/IFolderPagedViewExt;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FolderPagedViewExtImpV2"


# instance fields
.field private mHostView:Lcom/android/launcher3/folder/FolderPagedView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustBubbleTextView(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    instance-of v1, p1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-interface {v1, v2}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->setDragSource(Lcom/android/launcher3/DragSource;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-interface {v1, v2}, Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherState;

    instance-of v2, v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    check-cast v1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/states/OplusBaseLauncherState;->supportIconSelected(Lcom/android/launcher3/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v3, v0, v0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    goto :goto_4b

    :cond_46
    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0, v0, v0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    :goto_4b
    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result p0

    if-eqz p0, :cond_56

    iget-object p0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v3, v0, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyPromiseState(ZZZ)V

    :cond_56
    return-void
.end method

.method public arrangeChildren(Ljava/util/List;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4f

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    iget v9, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    if-ne v8, v9, :cond_37

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v8

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    if-eq v8, v7, :cond_46

    :cond_37
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    :cond_46
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_4f
    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v5, v3, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    move v7, v5

    move v8, v7

    const/4 v6, 0x0

    :goto_69
    const/4 v9, 0x1

    if-ge v5, v1, :cond_120

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v5, :cond_7b

    move-object/from16 v10, p1

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    goto :goto_7e

    :cond_7b
    move-object/from16 v10, p1

    const/4 v11, 0x0

    :goto_7e
    if-eqz v6, :cond_8a

    iget-object v12, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v12}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v12

    if-lt v7, v12, :cond_9e

    :cond_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_97

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    goto :goto_9d

    :cond_97
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v6

    :goto_9d
    move v7, v4

    :cond_9e
    if-eqz v11, :cond_119

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v13, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v13, v13, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v13, v8}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object v13

    invoke-virtual {v15, v13}, Lcom/android/launcher3/CellLayout$LayoutParams;->setCellXY(Landroid/graphics/Point;)V

    if-eqz p2, :cond_f7

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v13, v14, :cond_ca

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ne v13, v3, :cond_ca

    iget v3, v12, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq v3, v8, :cond_f7

    :cond_ca
    iput v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v3, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v8, v12, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v16

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/16 v19, 0x0

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v17, v12

    move/from16 v18, v3

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :cond_f7
    const/4 v14, -0x1

    invoke-virtual {v12}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v3

    const/16 v17, 0x1

    move-object v12, v6

    move-object v13, v11

    move-object/from16 v16, v15

    move v15, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v3, v3, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v3, v8}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v3

    if-eqz v3, :cond_119

    instance-of v3, v11, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_119

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    :cond_119
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_69

    :cond_120
    move v1, v4

    :goto_121
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_155

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v6, v6, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v3, v5, v6}, Lcom/android/launcher3/aer/ProvisionManager;->isWorkFolder(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_148

    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v9, :cond_148

    goto :goto_155

    :cond_148
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move v1, v9

    goto :goto_121

    :cond_155
    :goto_155
    if-eqz v1, :cond_15c

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/PagedView;->setCurrentPage(I)V

    :cond_15c
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v2

    if-le v2, v9, :cond_166

    move v2, v9

    goto :goto_167

    :cond_166
    move v2, v4

    :goto_167
    invoke-virtual {v1, v2}, Lcom/android/launcher3/PagedView;->setEnableOverscroll(Z)V

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v2, v1, Lcom/android/launcher3/PagedView;->mPageIndicator:Landroid/view/View;

    check-cast v2, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1}, Lcom/android/launcher3/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v9, :cond_177

    goto :goto_179

    :cond_177
    const/16 v4, 0x8

    :goto_179
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/folder/IFolderPagedViewExt;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    check-cast p1, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->createExtWith(Ljava/lang/Object;)Lcom/android/launcher3/folder/IFolderPagedViewExt;

    move-result-object p0

    return-object p0
.end method

.method public updatePageViewItemTextSize()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    if-nez v1, :cond_7

    return-void

    :cond_7
    sget-object v1, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedViewExtImpV2;->mHostView:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    const v1, 0x7f0d00e4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/ViewCache;->getCache(I)[Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_21

    return-void

    :cond_21
    const/4 v1, 0x0

    move v2, v1

    :goto_23
    array-length v3, p0

    if-ge v2, v3, :cond_38

    aget-object v3, p0, v2

    instance-of v4, v3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_35

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    iget-object v3, v3, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget v4, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {v3, v4, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_38
    return-void
.end method
