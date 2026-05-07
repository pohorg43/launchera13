.class public Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;
.super Lcom/android/launcher/widget/HotseatCenterLayoutHelper;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HotseatPortraitCenterLayoutHelper"


# instance fields
.field public mCommonBottom:I

.field public mCommonTop:I

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

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;[Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateViewCellXIncrease([Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;[Landroid/view/View;I)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

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

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

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

    invoke-virtual {p0, p4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setTargetCellX(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setDragObject(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setSreenWidth(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p7}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setNewDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setOldDistance(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p10}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setUpdateDB(Z)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0, p9}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->setShortWidgetTagetWidth(I)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject$BuildAttributes;->build()Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p0

    return-object p0
.end method

.method private checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

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

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$1;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

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

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v1, :cond_9d

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

    goto :goto_9d

    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_9d

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
    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-le v2, v1, :cond_72

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    goto :goto_7b

    :cond_72
    if-ne v2, v1, :cond_7b

    if-eq p1, p2, :cond_7b

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_7b
    :goto_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v0, p1, :cond_9d

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9a

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p2, :cond_97

    goto :goto_9a

    :cond_97
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_9d
    :goto_9d
    return-void
.end method

.method private getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;
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

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v1, p1, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildeViewByCellxFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;
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

    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

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

.method private getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/OplusWorkspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mDragViewVisualCenter:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result p0

    add-float/2addr p0, p1

    return p0
.end method

.method private getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
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

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ge v0, v1, :cond_19

    move v0, v1

    :cond_19
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_1c
    return v0
.end method

.method private getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;
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

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result p3

    new-array v1, p2, [F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    const/4 v5, 0x1

    if-ge v4, p2, :cond_3c

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v5

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

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

.method private getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array v0, p2, [Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-gt v1, p3, :cond_19

    invoke-direct {p0, v1, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_16

    if-ge v2, p2, :cond_16

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    return-object v0
.end method

.method private getViewsOrderByCellXWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;
    .registers 8

    invoke-direct {p0, p3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p3

    new-array p2, p2, [Landroid/view/View;

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-gt v0, p3, :cond_17

    invoke-direct {p0, v0, p1, p4}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellxFilterDragobject(I[Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Landroid/view/View;

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

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mPreNumHotseatIcons:I

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ne v1, v2, :cond_f

    return-void

    :cond_f
    iput v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mPreNumHotseatIcons:I

    new-array v1, v2, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-array v1, v2, [Lcom/android/launcher3/util/GridOccupancy;

    iput-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    :goto_1a
    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v3, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1a

    :cond_35
    return-void
.end method

.method private initTypeToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$5;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$5;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToInToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$4;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$2;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private initTypeToOutToInAnimListener()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;

    invoke-direct {v0, p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper$3;-><init>(Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;)V

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    :cond_b
    return-void
.end method

.method private resetShortCutsLayoutWidthTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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
    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_2a

    return v5

    :cond_2a
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    new-array v6, v2, [Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getMaxCellX(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result v2

    const/4 v7, -0x1

    move v8, v5

    move v9, v7

    :goto_41
    if-gt v8, v2, :cond_53

    invoke-direct {p0, v8, v4}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getChildeViewByCellx(I[Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_4c

    aput-object v10, v6, v8

    goto :goto_50

    :cond_4c
    const/4 v9, 0x0

    aput-object v9, v6, v8

    move v9, v8

    :goto_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_53
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_58

    move v9, v3

    :cond_58
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v2

    if-le v9, v2, :cond_67

    return v5

    :cond_67
    if-ne v9, v7, :cond_6a

    return v5

    :cond_6a
    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToInToOutAnimListener()V

    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToInToOut -- mDragModeType"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " targetWidth: "

    const-string v8, " ShortcutAndWidgetContainerWidth: "

    invoke-static {v2, v5, v7, v11, v8}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "getCellWidth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "childCount: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v8, v2, v5

    sub-int v2, v8, v11

    const/4 v5, 0x2

    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/2addr v0, v5

    iput v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v12, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v5, v6

    move v6, v9

    move-object v7, p1

    move v9, v10

    move v10, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    invoke-interface {v12, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v1
.end method

.method private resetShortCutsLayoutWidthTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 15

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

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

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidthTypeToOut(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_2f

    return v5

    :cond_2f
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v6, v5

    :goto_3c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_66

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_63

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v8, v9, :cond_63

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v9, v7, v8}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    :cond_66
    move v6, v5

    move v7, v6

    :goto_68
    if-ge v6, v3, :cond_78

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_75

    move v7, v6

    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_68

    :cond_78
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v6

    new-array v8, v6, [Landroid/view/View;

    move v9, v5

    :goto_7f
    if-gt v9, v7, :cond_9c

    if-le v6, v9, :cond_99

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_99

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    aput-object v10, v8, v9

    :cond_99
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    :cond_9c
    const/4 v6, -0x1

    move v9, v5

    move v7, v6

    :goto_9f
    if-ge v9, v3, :cond_b1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_ae

    move v7, v9

    :cond_ae
    add-int/lit8 v9, v9, 0x1

    goto :goto_9f

    :cond_b1
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v2

    if-eqz v2, :cond_c0

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v2

    if-le v7, v2, :cond_c0

    return v5

    :cond_c0
    if-ne v7, v6, :cond_c3

    return v5

    :cond_c3
    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToOut -- mDragModeType:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v6, ",targetCellX:"

    const-string v9, ",targetWidth:"

    invoke-static {v2, v5, v6, v7, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",ShortcutAndWidgetContainerWidth:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",getCellWidth:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",childCount:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v2, v7, v5}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToOutAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v5, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v9, v2, v5

    sub-int v2, v9, v11

    div-int/lit8 v10, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v12, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v5, v8

    move v6, v7

    move-object v7, p1

    move v8, v9

    move v9, v10

    move v10, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p1

    invoke-interface {v12, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    return v1
.end method

.method private resetShortCutsLayoutWidthTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_26

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const/4 v5, 0x0

    if-ge v2, v4, :cond_41

    return v5

    :cond_41
    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToOutToIn -- mDragModeType"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    add-int/lit8 v2, v3, -0x1

    invoke-direct {p0, v0, v2, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v2

    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_72

    iget-boolean v7, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v7, :cond_72

    return v5

    :cond_72
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v2

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v2

    if-lt v7, v2, :cond_89

    return v5

    :cond_89
    const/4 v2, -0x1

    if-ne v7, v2, :cond_8d

    return v5

    :cond_8d
    invoke-direct {p0, v6, v3, v0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellXWithoutDragObject([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/DropTarget$DragObject;)[Landroid/view/View;

    move-result-object v5

    const-string/jumbo v2, "resetShortCutsLayoutWidthTypeToOutToIn -- mDragModeType:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v9, ",targetWidth: "

    const-string v10, ",ShortcutAndWidgetContainerWidth: "

    invoke-static {v2, v8, v9, v11, v10}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",getCellWidth: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",childCount: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToOutToInAnimListener()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    sub-int v8, v2, v4

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v4, v6

    move v6, v7

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_104

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_fe

    goto :goto_104

    :cond_fe
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_109

    :cond_104
    :goto_104
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_109
    return v1
.end method

.method private resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 14

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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

    const-string/jumbo v4, "resetShortCutsLayoutWidthTypeToIn -- mDragModeType"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " numShownHotseatIcons: "

    const-string v8, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v5, v6, v7, v2, v8}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2a

    return v5

    :cond_2a
    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v6, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidthTypeToIn(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const-string v7, " targetWidth: "

    const-string v9, " ShortcutAndWidgetContainerWidth: "

    invoke-static {v4, v6, v7, v11, v9}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "getCellWidth: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "childCount: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x1e

    if-nez v3, :cond_78

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    sub-int/2addr p1, v11

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v4, :cond_73

    invoke-direct {p0, v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V

    :cond_73
    const/4 p1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    return v1

    :cond_78
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_84

    return v5

    :cond_84
    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-direct {p0, v0, v3, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getTargetCellxAndCanMergeFold(Lcom/android/launcher3/ShortcutAndWidgetContainer;ILcom/android/launcher3/DropTarget$DragObject;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v7}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->hotseatNormalAreaOutOfSpace(Lcom/android/launcher3/OplusHotseat;)Z

    move-result v7

    if-eqz v7, :cond_9f

    const-string p0, "Hotseat"

    const-string p1, "hotseat left area out of space"

    invoke-static {p0, v8, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_9f
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b9

    iget-boolean v7, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-nez v7, :cond_b9

    invoke-direct {p0, v4, v3}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_b8

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b8
    return v5

    :cond_b9
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v7

    if-eqz v7, :cond_d0

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v7

    if-le v6, v7, :cond_d0

    return v5

    :cond_d0
    const/4 v7, -0x1

    if-ne v6, v7, :cond_d4

    return v5

    :cond_d4
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initTypeToInAnimListener()V

    invoke-virtual {p0, v5}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v7, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v8, v2, v7

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int v0, v8, v0

    div-int/lit8 v10, v0, 0x2

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIII)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez p1, :cond_114

    iget-boolean p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    if-eqz p1, :cond_10e

    goto :goto_114

    :cond_10e
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_119

    :cond_114
    :goto_114
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_119
    return v1
.end method

.method private updateGridSize([Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;IZ)Z

    move-result p0

    return p0
.end method

.method private updateShortcutsAndWidgetsWidthAndHotSeatPadding(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v4, v0

    add-int/2addr v4, p1

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result p0

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method private updateViewCellXIncrease([Landroid/view/View;)V
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

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_f

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_f
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_1a

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1a
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-ne p1, v1, :cond_25

    iget p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_25

    iput-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_25
    return-object v0
.end method

.method public canCheckErrorState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isMoving()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

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

.method public checkCellXAndPos()Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v3, v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v4

    new-array v5, v4, [Z

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "checkCellXAndPos"

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    move-object v8, v6

    move v6, v1

    :goto_26
    const-string v9, "HotseatPortraitCenterLayoutHelper"

    if-ge v1, v2, :cond_86

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_83

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object v13, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v13, v10, v12}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectCellLayoutParamsWillCellX(Lcom/android/launcher3/OplusHotseat;Landroid/view/View;Lcom/android/launcher3/CellLayout$LayoutParams;)I

    move-result v13

    if-ltz v13, :cond_80

    if-lt v13, v4, :cond_47

    goto :goto_80

    :cond_47
    iget v14, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v13, v14, :cond_4f

    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-eq v13, v14, :cond_77

    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "checkCellXAndPos-willCellx: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " , cellLayoutLayoutParams : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " , info: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10, v13}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    const/4 v6, 0x1

    :cond_77
    aget-boolean v9, v5, v13

    if-eqz v9, :cond_7c

    move-object v8, v10

    :cond_7c
    const/4 v9, 0x1

    aput-boolean v9, v5, v13

    goto :goto_83

    :cond_80
    :goto_80
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_86
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c5

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_8e
    if-ge v1, v4, :cond_c3

    aget-boolean v11, v5, v1

    if-nez v11, :cond_c0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_c0

    const/4 v11, 0x1

    aput-boolean v11, v5, v1

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {p0, v11, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateCellXYState(Landroid/view/View;I)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkCellXAndPos lpError: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_8e

    :cond_c3
    const/4 v1, 0x1

    goto :goto_c6

    :cond_c5
    const/4 v1, 0x0

    :goto_c6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    :goto_cc
    if-ge v10, v4, :cond_db

    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v11, v5, v10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_cc

    :cond_db
    const-string v4, "checkCellXAndPos -- isHappenNoEquals : "

    const-string v10, " sameView is null: "

    invoke-static {v4, v6, v10}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v8, :cond_e7

    const/4 v10, 0x1

    goto :goto_e8

    :cond_e7
    const/4 v10, 0x0

    :goto_e8
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " getChildCount: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "posState: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_18b

    invoke-static {v0, v8}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->rectifySameView(Lcom/android/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_13b

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v7, 0xca

    if-ne v4, v7, :cond_13b

    sget-object v4, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v4}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getExpandUpdatingFlag()Z

    move-result v4

    if-eqz v4, :cond_13b

    const-string p0, "expand sameView no need deal:"

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    invoke-static {v0, v9, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13b
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_18b

    const-string v7, "checkCellXAndPos -- isHappenNoEquals :title: "

    invoke-static {v7}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " container: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " id:  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "screenId: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " XY: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " happenLpError: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18b
    if-nez v6, :cond_193

    if-nez v8, :cond_193

    if-nez v1, :cond_193

    const/4 p0, 0x0

    return p0

    :cond_193
    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellXAndPos - dealHappenSameView - start."

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-direct {p0, v8, v5}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealHappenSameView(Landroid/view/View;[Z)V

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const-string v4, "checkCellXAndPos - dealHappenSameView - end."

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->updateGridSize([Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    iget v2, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p0, 0x1

    return p0
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

    invoke-static {v2, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v11

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x1e

    const-string v5, " childCount: "

    const-string v6, " targetWidth: "

    const-string v7, "HotseatPortraitCenterLayoutHelper"

    if-ge v2, v4, :cond_63

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkSameSizeButNoIncrease(Lcom/android/launcher3/ShortcutAndWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, " NoIncrease ShortcutAndWidgetContainer Width: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3, v7}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    move p1, v1

    goto :goto_63

    :cond_49
    const-string p0, " Increase ShortcutAndWidgetContainer Width: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v3, v7}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_63
    :goto_63
    const-string v2, " checkSize : ShortcutAndWidgetContainer Width: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " needAnim: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getOriginalViews(Lcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->getNumHotseatIcons()I

    move-result v2

    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getViewsOrderByCellX([Landroid/view/View;ILcom/android/launcher3/ShortcutAndWidgetContainer;)[Landroid/view/View;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->commonAnimPositionCallBacks()V

    iget-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int v8, v2, v6

    sub-int v2, v8, v11

    div-int/lit8 v9, v2, 0x2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

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

    invoke-direct/range {v2 .. v12}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->buildAnimObject(I[Landroid/view/View;[Landroid/view/View;ILcom/android/launcher3/DropTarget$DragObject;IIIIZ)Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->setAnimObjectData(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks$AnimObject;)V

    if-eqz p1, :cond_dc

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->noNeedAnimForDragFromHotseatToExpandArea()Z

    move-result p1

    if-nez p1, :cond_dc

    sget-object p1, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getAddedDividerForDragInFlag()Z

    move-result p1

    if-nez p1, :cond_dc

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;

    goto :goto_e1

    :cond_dc
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mCheckSizeAnimCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :goto_e1
    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->setAddedDividerForDragInFlag(Z)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->resetDragFromHotseatToExpandAreaItem()V

    const/4 p0, 0x1

    return p0
.end method

.method public dealErrorState(ZZ)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkCellXAndPos()Z

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->checkSize(ZZ)Z

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

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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
    iget-object p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->checkHotseatHeightAndWidth()V

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState(Lcom/android/launcher3/ShortcutAndWidgetContainer;)V

    return-void
.end method

.method public isDragging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    return p0
.end method

.method public isMoving()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    const/4 v1, 0x1

    const-string v2, "HotseatPortraitCenterLayoutHelper"

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo p0, "mTypeToInAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToInToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string/jumbo p0, "mTypeToInToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string/jumbo p0, "mTypeToOutAnimPositionCallBacks isMoving"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    iget-object v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTypeToOutToInAnimPositionCallBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

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
    const-string p0, "isMoving -- false"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onDragEnd(Z)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->isMoving()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const-string p0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo p1, "onDragEnd -- return"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mWillEndDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-boolean v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    if-nez v3, :cond_23

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    return-void

    :cond_23
    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->addDividerAndUpdateExpandItemWhenDragEnd()V

    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printDBHotseatData()V

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->dealErrorState(ZZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    iput-object v2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDropTarget:Lcom/android/launcher3/DropTarget$DragObject;

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    const-string v0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v1, "onDragEnter"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    const-string v0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v1, "onDragExit"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isPointInSelfOverHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_1b

    if-nez v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToInToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    goto :goto_22

    :cond_1b
    if-eqz v1, :cond_22

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToOut(Lcom/android/launcher3/DropTarget$DragObject;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 7

    const-string v0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v1, "onDragOver"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mHasDragOverHotseat:Z

    iput-boolean v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mIsDragging:Z

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->isDragViewOfHotseat(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->getDragViewVisualCenterX(Lcom/android/launcher3/DropTarget$DragObject;)F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-static {v4, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->isDragOverDockerExpandArea(Lcom/android/launcher3/OplusHotseat;F)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string p0, "can not drag to expand area"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_29
    if-nez v2, :cond_30

    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortcutsLayoutWidthTypeToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0

    :cond_30
    invoke-direct {p0, p1}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->resetShortCutsLayoutWidthTypeToOutToIn(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public resetLayout()V
    .registers 3

    const-string v0, "HotseatPortraitCenterLayoutHelper"

    const-string/jumbo v1, "resetLayout"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->initGridOccupancyArray()V

    return-void
.end method

.method public updateCommonPadding(Landroid/graphics/Rect;)V
    .registers 4

    const-string/jumbo v0, "updateCommonPadding -- mDragModeType: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mDragModeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCommonBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rect.bottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getPaddingTop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getPaddingBottom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonTop:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mCommonBottom:I

    return-void
.end method

.method public updateGridSize([Landroid/view/View;IZ)Z
    .registers 16

    const/4 v0, 0x0

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p3}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p3

    if-eq p3, p2, :cond_d

    if-nez p2, :cond_e

    :cond_d
    return v0

    :cond_e
    const-string/jumbo p3, "updateGridSize - mHotseat.getCountX(): "

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " countX: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "HotseatPortraitCenterLayoutHelper"

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    array-length v1, p3

    const/4 v2, 0x1

    if-lt p2, v1, :cond_40

    new-instance p3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {p3, p2, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    new-instance v1, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v1, p2, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    goto :goto_4e

    :cond_40
    add-int/lit8 v1, p2, -0x1

    aget-object p3, p3, v1

    iget-object v3, p0, Lcom/android/launcher/widget/HotseatPortraitCenterLayoutHelper;->mTmpOccupieds:[Lcom/android/launcher3/util/GridOccupancy;

    aget-object v1, v3, v1

    invoke-virtual {p3}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    invoke-virtual {v1}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    :goto_4e
    if-eqz p1, :cond_85

    :goto_50
    array-length v3, p1

    if-ge v0, v3, :cond_85

    aget-object v3, p1, v0

    if-eqz v3, :cond_82

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v4, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v11, 0x1

    move-object v3, p3

    move v5, v10

    move v8, v11

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v4, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_85
    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printHotseatDataState([Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->printGridOccupancy(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->updateScreenState(I)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mHotseat:Lcom/android/launcher3/OplusHotseat;

    invoke-virtual {p0, p2, v2, p3, v1}, Lcom/android/launcher3/OplusHotseat;->updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V

    return v2
.end method
