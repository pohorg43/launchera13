.class public interface abstract Lcom/android/launcher3/WorkspaceLayoutManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_EMPTY_SCREEN_ID:I = -0xc9

.field public static final EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

.field public static final EXTRA_EMPTY_SCREEN_SECOND_ID:I = -0xc8

.field public static final FIRST_SCREEN_ID:I = 0x0

.field public static final SECOND_SCREEN_ID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    return-void

    nop

    :array_e
    .array-data 4
        -0xc9
        -0xc8
    .end array-data
.end method


# virtual methods
.method public addInScreen(Landroid/view/View;IIIIII)Z
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const-string v8, "Launcher.Workspace"

    const/4 v9, 0x0

    const/16 v10, -0x64

    if-ne v2, v10, :cond_3c

    invoke-interface {p0, v3}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v10

    if-nez v10, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping child, screenId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v9

    :cond_3c
    sget-object v10, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v10

    if-nez v10, :cond_130

    invoke-static {p2, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->isExpandItemShouldNotAddInFoldedSmallScreen(ILandroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_61

    const-string v0, "hotseat expand item should not add in folded small screen,item:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hotseat_expand"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_61
    const/16 v10, -0x65

    const/4 v11, 0x1

    if-eq v2, v10, :cond_9e

    const/16 v12, -0x67

    if-ne v2, v12, :cond_6b

    goto :goto_9e

    :cond_6b
    instance-of v10, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v10, :cond_99

    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_93

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v10}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v12

    invoke-virtual {v12}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->getDotsCount()I

    move-result v12

    if-gt v12, v11, :cond_83

    goto :goto_93

    :cond_83
    invoke-virtual {v10}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v10}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_99

    :cond_93
    :goto_93
    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v10, v11}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    :cond_99
    :goto_99
    invoke-interface {p0, v3}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v3

    goto :goto_bb

    :cond_9e
    :goto_9e
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    instance-of v12, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v12, :cond_bb

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v12

    if-eqz v12, :cond_b4

    if-ne v2, v10, :cond_b4

    move v10, v11

    goto :goto_b5

    :cond_b4
    move v10, v9

    :goto_b5
    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v12, v10}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    :cond_bb
    :goto_bb
    if-nez v1, :cond_be

    return v9

    :cond_be
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_d4

    instance-of v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v12, :cond_c9

    goto :goto_d4

    :cond_c9
    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput v4, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v5, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v6, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v7, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_d9

    :cond_d4
    :goto_d4
    new-instance v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_d9
    invoke-static {p2, p1, v10}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectInitCellLayoutParams(ILandroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)V

    if-gez v6, :cond_e2

    if-gez v7, :cond_e2

    iput-boolean v9, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    :cond_e2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v2

    instance-of v4, v1, Lcom/android/launcher3/folder/Folder;

    xor-int/2addr v4, v11

    if-nez v3, :cond_f2

    return v11

    :cond_f2
    const/4 v5, -0x1

    move-object p2, v3

    move-object/from16 p3, p1

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v10

    move/from16 p7, v4

    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v2

    if-nez v2, :cond_11c

    const-string v2, "Failed to add to item at ("

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const-string v4, ") to CellLayout"

    invoke-static {v2, v3, v4, v8}, Landroidx/core/widget/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    move v11, v9

    :cond_11c
    invoke-virtual {p1, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    instance-of v2, v1, Lcom/android/launcher3/DropTarget;

    if-eqz v2, :cond_12f

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-interface {p0, v1}, Lcom/android/launcher3/WorkspaceLayoutManager;->onAddDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_12f
    return v11

    :cond_130
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Screen id should not be extra empty screen: "

    invoke-static {v1, v3}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 11

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    move-result p0

    return p0
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 13

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_12

    const/16 v3, -0x67

    if-ne v2, v3, :cond_f

    goto :goto_12

    :cond_f
    move v6, v0

    move v7, v1

    goto :goto_26

    :cond_12
    :goto_12
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v1

    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v0

    move v7, v0

    move v6, v1

    :goto_26
    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    return-void
.end method

.method public abstract getHotseat()Lcom/android/launcher3/Hotseat;
.end method

.method public abstract getScreenWithId(I)Lcom/android/launcher3/CellLayout;
.end method

.method public getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .registers 1

    sget-object p0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .registers 2

    return-void
.end method
