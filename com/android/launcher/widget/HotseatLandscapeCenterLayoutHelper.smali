.class public Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;
.super Lcom/android/launcher/widget/HotseatCenterLayoutHelper;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HotseatLandscapeCenterLayoutHelper"


# instance fields
.field private mCommonLeft:I

.field private mCommonRight:I

.field private mDragViewVisualCenter:[F

.field private mHasDragOverHotseat:Z

.field private mIsDragging:Z

.field private mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

.field private mPreNumHotseatIcons:I

.field private mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

.field private mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

.field private mWillEndDrag:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mHasDragOverHotseat:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonLeft:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonRight:I

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonLeft:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonRight:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;[Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateViewCellYIncrease([Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;[Landroid/view/View;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateShortcutsAndWidgetsHeightAndHotSeatPadding(I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateShortcutsAndWidgetsHeightAndHotSeatPadding(IZ)V

    return-void
.end method

.method private buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;
    .registers 21

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v0

    return-object v0
.end method

.method private buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;
    .registers 11

    new-instance p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setChildCount(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setOriginalView([Landroid/view/View;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setViews([Landroid/view/View;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setTargetCellY(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setDragObject(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setHotseatHeight(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setNewDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setOldDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p10}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setUpdateDB(Z)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p9}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setShortWidgetTagetHeight(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->build()Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p0

    return-object p0
.end method

.method private checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getMaxCellY(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lt p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private commonAnimPositionCallBacks()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$1;-><init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private dealHappenSameView(Landroid/view/View;[Z)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_6
    array-length v3, p2

    if-ge v1, v3, :cond_12

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ne v2, v1, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz v1, :cond_7e

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v1, :cond_a0

    const/4 v3, -0x1

    move v4, v0

    :goto_36
    array-length v5, p2

    if-ge v4, v5, :cond_42

    aget-boolean v5, p2, v4

    if-nez v5, :cond_3f

    move v3, v4

    goto :goto_42

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_42
    :goto_42
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-eq v3, p2, :cond_4f

    invoke-virtual {p0, p1, v3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    goto :goto_a0

    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_a0

    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v2, :cond_68

    goto :goto_7b

    :cond_68
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-le v2, v1, :cond_72

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    goto :goto_7b

    :cond_72
    if-ne v2, v1, :cond_7b

    if-eq p2, p1, :cond_7b

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_7e
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_84
    if-ge v0, p1, :cond_a0

    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9d

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_97

    goto :goto_9d

    :cond_97
    sub-int v1, p1, v0

    sub-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_9d
    :goto_9d
    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_a0
    :goto_a0
    return-void
.end method

.method private getChildeViewByCellY(I[Landroid/view/View;)Landroid/view/View;
    .registers 5

    const/4 p0, 0x0

    :goto_1
    array-length v0, p2

    if-ge p0, v0, :cond_16

    aget-object v0, p2, p0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v1, p1, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildeViewByCellYFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;
    .registers 7

    const/4 p0, 0x0

    :goto_1
    array-length v0, p2

    if-ge p0, v0, :cond_1a

    aget-object v0, p2, p0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ne v2, p1, :cond_17

    iget-object v2, p3, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v2, v1, :cond_17

    return-object v0

    :cond_17
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDragViewVisualCenterY(Lcom/android/launcher3/DropTarget$DragObject;)F
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mDragViewVisualCenter:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method private getMaxCellY(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .registers 4

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p0, v1, :cond_1c

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ge v0, v1, :cond_19

    move v0, v1

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_1c
    return v0
.end method

.method private getTargetCellYAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            "I",
            "Lcom/android/launcher3/DropTarget$DragObject;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->getMaxDistanceForFolderCreation(Lcom/android/launcher3/CellLayout;)F

    move-result v0

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getDragViewVisualCenterY(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result p3

    new-array v1, p2, [F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    const/4 v5, 0x1

    if-ge v4, p2, :cond_3c

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v5

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    mul-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v6, v5

    aput v6, v1, v4

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_3c
    move p0, v3

    :goto_3d
    if-ge v3, p2, :cond_51

    aget p1, v1, v3

    add-float/2addr p1, v0

    cmpl-float p1, p1, p3

    if-ltz p1, :cond_4e

    aget p1, v1, v3

    sub-float/2addr p1, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_4e

    move p0, v5

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_51
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    new-instance p2, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private getViewsOrderByCellY([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;
    .registers 7

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getMaxCellY(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-gt v0, p3, :cond_17

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getChildeViewByCellY(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-object p2
.end method

.method private getViewsOrderByCellYWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getMaxCellY(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-gt v0, p3, :cond_17

    invoke-direct {p0, v0, p1, p4}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getChildeViewByCellYFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-object p2
.end method

.method private initGridOccupancyArray()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mPreNumHotseatIcons:I

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ne v1, v2, :cond_f

    return-void

    :cond_f
    iput v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mPreNumHotseatIcons:I

    new-array v1, v2, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-array v1, v2, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    :goto_1a
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v3, v5, v4}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1a

    :cond_35
    return-void
.end method

.method private initTypeToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$5;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$5;-><init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToInToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$4;-><init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$2;-><init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$3;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper$3;-><init>(Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private resetShortCutsLayoutHeightTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    const-string/jumbo v4, "resetShortCutsLayoutHeightTypeToIn -- mDragModeType"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " numShownHotseatIcons: "

    const-string v8, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v5, v6, v7, v2, v8}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2a

    return v5

    :cond_2a
    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    mul-int v11, v7, v6

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " targetHeight: "

    const-string v9, " ShortcutAndWidgetContainerHeight: "

    invoke-static {v4, v6, v7, v11, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "getCellHeight: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "childCount: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1e

    if-nez v3, :cond_7c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    sub-int/2addr p1, v11

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v4, :cond_77

    invoke-direct {p0, v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateShortcutsAndWidgetsHeightAndHotSeatPadding(I)V

    :cond_77
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    return v1

    :cond_7c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_88

    return v5

    :cond_88
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0, v3, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getTargetCellYAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_ad

    iget-boolean v7, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v7, :cond_ad

    invoke-direct {p0, v4, v3}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_ac

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_ac
    return v5

    :cond_ad
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b9

    return v5

    :cond_b9
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getViewsOrderByCellY([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initTypeToInAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v8, v2, v7

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_f9

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_f3

    goto :goto_f9

    :cond_f3
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_fe

    :cond_f9
    :goto_f9
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_fe
    return v1
.end method

.method private resetShortCutsLayoutHeightTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_15

    return v1

    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v4

    mul-int v11, v4, v3

    const-string/jumbo v4, "resetShortCutsLayoutHeightTypeToInToOut -- mDragModeType"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " numShownHotseatIcons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v7, 0x1e

    const/4 v8, 0x0

    if-ge v5, v7, :cond_4d

    return v8

    :cond_4d
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    new-array v7, v2, [Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getMaxCellY(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v2

    const/4 v9, -0x1

    move v10, v8

    move v12, v9

    :goto_5d
    if-gt v10, v2, :cond_6f

    invoke-direct {p0, v10, v5}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getChildeViewByCellY(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_68

    aput-object v13, v7, v10

    goto :goto_6c

    :cond_68
    const/4 v12, 0x0

    aput-object v12, v7, v10

    move v12, v10

    :goto_6c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5d

    :cond_6f
    invoke-virtual {p0, v7}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    add-int/lit8 v10, v3, -0x1

    if-ne v2, v10, :cond_77

    move v12, v3

    :cond_77
    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v10, " targetHeight: "

    const-string v13, " ShortcutAndWidgetContainerHeight: "

    invoke-static {v2, v4, v10, v11, v13}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "getCellHeight: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "childCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v12, v9, :cond_ab

    return v8

    :cond_ab
    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initTypeToInToOutAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int v8, v2, v4

    sub-int v2, v8, v11

    const/4 v4, 0x2

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iput v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v4, v5

    move-object v5, v7

    move v6, v12

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v1
.end method

.method private resetShortCutsLayoutHeightTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v1, :cond_1a

    return v1

    :cond_1a
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    add-int/lit8 v4, v3, -0x1

    mul-int v11, v4, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_33

    return v5

    :cond_33
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v6, v5

    :goto_40
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_76

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_73

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v8, v9, :cond_73

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v8, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v8

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v8

    div-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_73
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_76
    move v6, v5

    move v7, v6

    :goto_78
    if-ge v6, v3, :cond_88

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_85

    move v7, v6

    :cond_85
    add-int/lit8 v6, v6, 0x1

    goto :goto_78

    :cond_88
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v6

    new-array v6, v6, [Landroid/view/View;

    move v8, v5

    :goto_8f
    if-gt v8, v7, :cond_aa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_a7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    aput-object v9, v6, v8

    :cond_a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_8f

    :cond_aa
    const/4 v7, -0x1

    move v9, v5

    move v8, v7

    :goto_ad
    if-ge v9, v3, :cond_bf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_bc

    move v8, v9

    :cond_bc
    add-int/lit8 v9, v9, 0x1

    goto :goto_ad

    :cond_bf
    if-ne v8, v7, :cond_c2

    return v5

    :cond_c2
    const-string/jumbo v2, "resetShortCutsLayoutHeightTypeToOut -- mDragModeType"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " targetHeight: "

    const-string v9, " ShortcutAndWidgetContainerHeight: "

    invoke-static {v2, v5, v7, v11, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "getCellHeight: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "childCount: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initTypeToOutAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v9, v2, v5

    sub-int v2, v9, v11

    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v12, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v5, v6

    move v6, v8

    move-object v7, p1

    move v8, v9

    move v9, v10

    move v10, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    invoke-interface {v12, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v1
.end method

.method private resetShortCutsLayoutHeightTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    mul-int v11, v2, v3

    const-string/jumbo v2, "resetShortCutsLayoutHeightTypeToOutToIn -- mDragModeType"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x1e

    const/4 v7, 0x0

    if-ge v4, v6, :cond_3e

    return v7

    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    add-int/lit8 v6, v3, -0x1

    invoke-direct {p0, v0, v6, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getTargetCellYAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v6

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5a

    iget-boolean v8, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v8, :cond_5a

    return v7

    :cond_5a
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_66

    return v7

    :cond_66
    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v8, " targetHeight: "

    const-string v9, " ShortcutAndWidgetContainerHeight: "

    invoke-static {v2, v7, v8, v11, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "getCellHeight: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "childCount: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v3, v0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getViewsOrderByCellYWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initTypeToOutToInAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v8, v2, v7

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_d8

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_d2

    goto :goto_d8

    :cond_d2
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_dd

    :cond_d8
    :goto_d8
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_dd
    return v1
.end method

.method private updateGridSize([Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method

.method private updateShortcutsAndWidgetsHeightAndHotSeatPadding(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateShortcutsAndWidgetsHeightAndHotSeatPadding(IZ)V

    return-void
.end method

.method private updateShortcutsAndWidgetsHeightAndHotSeatPadding(IZ)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x2

    sub-int p1, v0, p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonLeft:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonRight:I

    invoke-virtual {v1, v2, p1, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-eqz p2, :cond_24

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_44

    :cond_24
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getY()F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p0, p1

    add-int/2addr p0, v0

    invoke-virtual {p2, v1, v2, v3, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_44
    return-void
.end method

.method private updateViewCellYIncrease([Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    aget-object v1, p1, v0

    if-eqz v1, :cond_b

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_f

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_f
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_1a

    iget p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1a

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1a
    return-object v0
.end method

.method public canCheckErrorState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->isMoving()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public checkCellYAndPos()Z
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v4, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v4

    if-nez v4, :cond_18

    return v2

    :cond_18
    mul-int v5, v4, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v6

    new-array v7, v6, [Z

    const-string v8, "checkCellYAndPos"

    invoke-virtual {v0, v1, v8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v8

    move v8, v2

    :goto_2d
    const/4 v11, 0x1

    if-ge v2, v3, :cond_66

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_63

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v15, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    div-int/lit8 v16, v4, 0x2

    add-int v16, v16, v15

    div-int v15, v16, v4

    if-lt v15, v6, :cond_50

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_63

    :cond_50
    iget v14, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ne v15, v14, :cond_58

    iget v13, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v15, v13, :cond_5c

    :cond_58
    invoke-virtual {v0, v12, v15}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    move v8, v11

    :cond_5c
    aget-boolean v13, v7, v15

    if-eqz v13, :cond_61

    move-object v10, v12

    :cond_61
    aput-boolean v11, v7, v15

    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_66
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v4, "HotseatLandscapeCenterLayoutHelper"

    if-lez v2, :cond_a6

    const/4 v2, 0x0

    const/4 v12, 0x0

    :goto_70
    if-ge v2, v6, :cond_a4

    aget-boolean v13, v7, v2

    if-nez v13, :cond_a1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_a1

    aput-boolean v11, v7, v2

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v0, v13, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkCellYAndPos lpError: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_a4
    move v2, v11

    goto :goto_a7

    :cond_a6
    const/4 v2, 0x0

    :goto_a7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_ad
    if-ge v12, v6, :cond_bc

    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v13, v7, v12

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_ad

    :cond_bc
    const-string v6, "checkCellYAndPos -- isHappenNoEquals: "

    const-string v12, " sameView is null: "

    invoke-static {v6, v8, v12}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v10, :cond_c8

    move v12, v11

    goto :goto_c9

    :cond_c8
    const/4 v12, 0x0

    :goto_c9
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " getChildCount: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "posState: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_13a

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v6, :cond_13a

    const-string v9, "checkCellYAndPos -- isHappenNoEquals:title: "

    invoke-static {v9}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " container: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " id:  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "screenId: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " XY: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " happenLpError: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13a
    if-nez v8, :cond_142

    if-nez v10, :cond_142

    if-nez v2, :cond_142

    const/4 v0, 0x0

    return v0

    :cond_142
    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellYAndPos - dealHappenSameView - start."

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-direct {v0, v10, v7}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->dealHappenSameView(Landroid/view/View;[Z)V

    iget-object v2, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellYAndPos - dealHappenSameView - end."

    invoke-virtual {v0, v2, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    invoke-direct {v0, v5, v11}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->updateShortcutsAndWidgetsHeightAndHotSeatPadding(IZ)V

    return v11
.end method

.method public checkSize(ZZ)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    mul-int v11, v2, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    if-ge v2, v4, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_2c

    move p1, v1

    goto :goto_2d

    :cond_2c
    return v1

    :cond_2d
    :goto_2d
    const-string v1, "checkSize : ShortcutAndWidgetContainer Height: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " childCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " needAnim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v1

    invoke-direct {p0, v4, v1, v0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->getViewsOrderByCellY([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->commonAnimPositionCallBacks()V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    sub-int v8, v1, v2

    sub-int v1, v8, v11

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getEmptyCellXYInShortcutsAndWidgets(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v6

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v7, 0x0

    move-object v2, p0

    move v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_a3

    :cond_9e
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_a3
    const/4 p0, 0x1

    return p0
.end method

.method public dealErrorState(ZZ)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->checkCellYAndPos()Z

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->checkSize(ZZ)Z

    move-result p1

    if-eqz p2, :cond_e

    if-nez p1, :cond_e

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatItemDataAndUpdateDB()V

    :cond_e
    return-void
.end method

.method public finishAnimation()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1d

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_36

    :cond_31
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_36
    :goto_36
    return-void
.end method

.method public initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    if-eqz p1, :cond_16

    const-string v0, "initDragState: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mHasDragOverHotseat:Z

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatHeightAndWidth()V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    return-void
.end method

.method public isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    return p0
.end method

.method public isMoving()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    const-string v2, "HotseatLandscapeCenterLayoutHelper"

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo p0, "mTypeToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo p0, "mTypeToInToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo p0, "mTypeToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_47

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_47

    const-string/jumbo p0, "mTypeToOutToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_47
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p0, :cond_57

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result p0

    if-eqz p0, :cond_57

    const-string p0, "mCheckSizeAnimCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_57
    const-string p0, "isMoving : false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDragEnd(Z)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->isMoving()Z

    move-result v0

    const-string v1, "HotseatLandscapeCenterLayoutHelper"

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    iput-boolean v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const-string/jumbo p0, "onDragEnd : return!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mWillEndDrag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    iget-boolean v3, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mHasDragOverHotseat:Z

    if-nez v3, :cond_23

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    return-void

    :cond_23
    const-string/jumbo v3, "onDragEnd -- orderIconsFree:  "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/launcher/layout/LayoutUtilsInterface;->orderIconsFree()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mHasDragOverHotseat:Z

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printDBHotseatData()V

    invoke-virtual {p0, v2, v2}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->dealErrorState(ZZ)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    const-string v0, "HotseatLandscapeCenterLayoutHelper"

    const-string/jumbo v1, "onDragEnter"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    const-string v0, "HotseatLandscapeCenterLayoutHelper"

    const-string/jumbo v1, "onDragExit"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPointInSelfOverHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_18

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->resetShortCutsLayoutHeightTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    goto :goto_1f

    :cond_18
    if-eqz v1, :cond_1f

    if-nez v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->resetShortCutsLayoutHeightTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    const-string v0, "HotseatLandscapeCenterLayoutHelper"

    const-string/jumbo v1, "onDragOver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mIsDragging:Z

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mHasDragOverHotseat:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->resetShortCutsLayoutHeightTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->resetShortCutsLayoutHeightTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public resetLayout()V
    .registers 3

    const-string v0, "HotseatLandscapeCenterLayoutHelper"

    const-string/jumbo v1, "resetLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public updateCommonPadding(Landroid/graphics/Rect;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "updateCommonPadding -- mDragModeType: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonRight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    const-string v2, "HotseatLandscapeCenterLayoutHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonLeft:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mCommonRight:I

    return-void
.end method

.method public updateGridSize([Landroid/view/View;IZ)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p3

    if-eq p3, p2, :cond_d

    if-nez p2, :cond_e

    :cond_d
    return v0

    :cond_e
    iget-object p3, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    array-length v1, p3

    const/4 v2, 0x1

    if-lt p2, v1, :cond_1f

    new-instance p3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {p3, v2, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    goto :goto_2d

    :cond_1f
    add-int/lit8 v1, p2, -0x1

    aget-object p3, p3, v1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatLandscapeCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    aget-object v1, v3, v1

    invoke-virtual {p3}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {v1}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    :goto_2d
    if-eqz p1, :cond_63

    :goto_2f
    array-length v3, p1

    if-ge v0, v3, :cond_63

    aget-object v3, p1, v0

    if-eqz v3, :cond_60

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v8, 0x1

    move-object v3, p3

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v5, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_63
    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateScreenState(I)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/launcher3/OplusHotseat;->updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V

    return v2
.end method
