.class public Lcom/android/launcher3/OplusHotseat;
.super Lcom/android/launcher3/Hotseat;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Lcom/android/launcher3/IUpdatableCellLayout;


# static fields
.field public static final CHECK_REPLACE_FOLDER_FINAL_ITEM_HAPPEN_DELAY_TIME:I = 0x32

.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "ColorHotseat"


# instance fields
.field private mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

.field private mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

.field private mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

.field private mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReplaceIconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/OplusHotseat;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    new-instance p2, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p2}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/OplusHotseat;)Lcom/android/launcher3/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/OplusHotseat;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private addDragListener(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_11
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/launcher3/OplusHotseat;->lambda$animateChildToPosition$0(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    sget-boolean v0, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz v0, :cond_a

    const v0, 0x7f08052f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_a
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    :cond_14
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_25
    new-instance v0, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;-><init>(Landroid/content/Context;Lcom/android/launcher3/OplusHotseat;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    return-void
.end method

.method private initUpdateSizeRunable(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/Runnable;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->getItemInfoKeyForCheckSize(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/OplusHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusHotseat$2;-><init>(Lcom/android/launcher3/OplusHotseat;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mReplaceIconsMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private initViewAddAndRemoveListener()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    new-instance v1, Lcom/android/launcher3/OplusHotseat$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/OplusHotseat$1;-><init>(Lcom/android/launcher3/OplusHotseat;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private static synthetic lambda$animateChildToPosition$0(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 12

    invoke-virtual {p10}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/Float;

    invoke-virtual {p10}, Ljava/lang/Float;->floatValue()F

    move-result p10

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p10

    int-to-float p1, p1

    mul-float/2addr p1, v0

    int-to-float p2, p2

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float p1, p3

    mul-float/2addr p1, v0

    int-to-float p2, p4

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float p1, p5

    mul-float/2addr p1, v0

    int-to-float p2, p6

    mul-float/2addr p2, p10

    add-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float p1, p7

    mul-float/2addr v0, p1

    int-to-float p1, p8

    mul-float/2addr p10, p1

    add-float/2addr p10, v0

    float-to-int p1, p10

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p9}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z
    .registers 1

    instance-of p0, p0, Lcom/android/launcher3/OplusHotseat;

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->canShowHotseatCenterMode()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private removeDragListener(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_11
    return-void
.end method

.method private updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V
    .registers 6

    if-eqz p1, :cond_b

    iput p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_f

    :cond_b
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    :goto_f
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    return-void
.end method


# virtual methods
.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .registers 30

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_114

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v14, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v13, 0x1

    if-eqz v0, :cond_59

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    move/from16 v4, p2

    if-ne v0, v4, :cond_46

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    move/from16 v5, p3

    if-ne v0, v5, :cond_48

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v3, v14

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    return v13

    :cond_46
    move/from16 v5, p3

    :cond_48
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_59
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_5d
    iget v9, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v11, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz p7, :cond_98

    if-eqz p6, :cond_6c

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_6e

    :cond_6c
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_6e
    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v8, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v13, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v3

    move/from16 v19, v8

    move/from16 v20, v13

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const/4 v0, 0x1

    goto :goto_99

    :cond_98
    move v0, v13

    :goto_99
    iput-boolean v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v3, v14

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusHotseat;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    invoke-virtual {v7, v15}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v0, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v2, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iput v11, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v12, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v9, v0, :cond_c9

    if-ne v11, v1, :cond_c9

    if-ne v12, v2, :cond_c9

    if-ne v10, v3, :cond_c9

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v4

    :cond_c9
    const/4 v4, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_116

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move/from16 v7, p4

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v7, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v6, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/launcher3/v0;

    move-object v7, v13

    move-object v8, v14

    move/from16 v16, v10

    move v10, v0

    move v0, v12

    move v12, v1

    move-object v1, v13

    move v13, v0

    move-object v0, v14

    move v14, v2

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v3

    move-object/from16 v17, p1

    invoke-direct/range {v7 .. v17}, Lcom/android/launcher3/v0;-><init>(Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v3, Lcom/android/launcher3/OplusHotseat$3;

    invoke-direct {v3, v6, v0, v2, v1}, Lcom/android/launcher3/OplusHotseat$3;-><init>(Lcom/android/launcher3/OplusHotseat;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return v4

    :cond_114
    const/4 v0, 0x0

    return v0

    :array_116
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public canReceivePointerEvents()Z
    .registers 2

    invoke-super {p0}, Landroid/view/View;->canReceivePointerEvents()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public cancelAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mDockBarTranslationAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method public cancelHotseatExpandAnimate()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->cancelHotseatExpandAnimate()V

    :cond_7
    return-void
.end method

.method public finishAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->finishAnimation()V

    :cond_7
    return-void
.end method

.method public getCellXFromOrder(I)I
    .registers 3

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_33

    :cond_11
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getBgDataHotseatNormalItemsCount(Lcom/android/launcher3/Launcher;)I

    move-result p0

    if-ge p1, p0, :cond_29

    :goto_25
    add-int/lit8 p1, p1, 0x1

    sub-int/2addr p0, p1

    return p0

    :cond_29
    return p1

    :cond_2a
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    goto :goto_25

    :cond_33
    :goto_33
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result p0

    return p0
.end method

.method public getCellYFromOrder(I)I
    .registers 3

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->currentStandardModeNumHotseatIcons:I

    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz p0, :cond_1b

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v0, p1

    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public getFirstExpandItem(I)Landroid/view/View;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatFirstExpandItem(Lcom/android/launcher3/ShortcutAndWidgetContainer;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getFixedCellHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    return p0
.end method

.method public getFixedCellWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    return p0
.end method

.method public getNormalIconCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatNormalItemCount(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I

    move-result p0

    return p0
.end method

.method public getUnusedHorizontalSpace()I
    .registers 4

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->hasDividerView()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v1, v2

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->getDividerViewWidth()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, p0

    sub-int/2addr v0, v1

    return v0

    :cond_2c
    invoke-super {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result p0

    return p0
.end method

.method public hasVerticalHotseat()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    return p0
.end method

.method public injectOnMeasureLog1(II)V
    .registers 6

    const-string v0, "Hotseat - onMeasure, cw = "

    const-string v1, " , ch = "

    const-string v2, " , mFixedCellWidth = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mFixedCellHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mCellWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , mCellHeight = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    const-string p2, "Hotseat"

    const-string v0, "ColorHotseat"

    invoke-static {p1, p0, p2, v0}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public injectOnMeasureLog2(II)V
    .registers 7

    const-string v0, "Hotseat - onMeasure, mFixedCellWidth = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mFixedCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mCellHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    const-string v2, " , childWidthSize = "

    const-string v3, " , childHeightSize = "

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mCountX = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , mCountY = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , padding = ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " )  , curLauncherMode , "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Hotseat"

    const-string p2, "ColorHotseat"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatExpandAnimating()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isHotseatExpandAnimating()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isHotseatUpdatingExpandWithOutAnim()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isHotseatUpdatingExpandWithOutAnim()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isMoving()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->isMoving()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/launcher3/OplusHotseat;->initViewAddAndRemoveListener()V

    return-void
.end method

.method public onDragEnd()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragEnd()V

    :cond_e
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->removeDragListener(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->resetDragFromHotseatToExpandAreaItem()V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/launcher3/OplusHotseat;->addDragListener(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->initDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_1d
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_11
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusHotseat;->handlerDragOverEvent(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->resetTouchState()V

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mWorkspace:Lcom/android/launcher3/Workspace;

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    :cond_2e
    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/Hotseat;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr p1, v0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, p5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p3, v2, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-boolean p3, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez p3, :cond_85

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    add-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int p3, p2, p1

    add-int v0, p2, p1

    move p1, p3

    :cond_85
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, v1, v0, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 23

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-super/range {p0 .. p2}, Lcom/android/launcher3/Hotseat;->onMeasure(II)V

    return-void

    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705a9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_3d

    :cond_30
    iget-object v4, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_3d
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_48

    :cond_44
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    :goto_48
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    add-int/2addr v6, v5

    sub-int v5, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    add-int/2addr v7, v6

    sub-int v6, v4, v7

    iget-object v7, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v7, v7, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    iget-object v8, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-object v9, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    const/4 v10, 0x1

    if-ltz v9, :cond_7d

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v9, :cond_c6

    :cond_7d
    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v11

    sub-int v9, v3, v9

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int v11, v4, v11

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget-boolean v13, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez v13, :cond_95

    move v13, v7

    goto :goto_96

    :cond_95
    move v13, v10

    :goto_96
    invoke-static {v9, v12, v13}, Lcom/android/launcher3/OplusDeviceProfile;->calculateHotseatCellWidth(III)I

    move-result v15

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget-boolean v12, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-nez v12, :cond_a3

    move v7, v10

    :cond_a3
    invoke-static {v11, v9, v7}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v7

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v15, v9, :cond_af

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v7, v9, :cond_c6

    :cond_af
    iput v15, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput v7, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move/from16 v16, v7

    move/from16 v17, v9

    move/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    :cond_c6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isMoving()Z

    move-result v7

    const/4 v9, 0x0

    if-nez v7, :cond_d6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isDragging()Z

    move-result v7

    if-eqz v7, :cond_d4

    goto :goto_d6

    :cond_d4
    move v7, v9

    goto :goto_d7

    :cond_d6
    :goto_d6
    move v7, v10

    :goto_d7
    const-string v11, "CellLayout cannot have UNSPECIFIED dimensions"

    const/high16 v12, 0x40000000  # 2.0f

    if-eqz v7, :cond_166

    iget-object v7, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v7

    if-nez v7, :cond_166

    iget-boolean v7, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v7, :cond_f9

    iget v7, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v10

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v0, v7, v10, v8, v13}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_108

    :cond_f9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    iget v10, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v10, v13, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_108
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v7, :cond_113

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v8, :cond_113

    move v5, v7

    move v6, v8

    goto :goto_11c

    :cond_113
    if-eqz v1, :cond_117

    if-nez v2, :cond_11c

    :cond_117
    const-string v1, "ColorHotseat"

    invoke-static {v1, v11}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11c
    :goto_11c
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v5, :cond_141

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_141

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_144

    :cond_141
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_144
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v1

    if-eqz v1, :cond_1e0

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_15f

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v2, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1e0

    :cond_15f
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_1e0

    :cond_166
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v9

    if-nez v9, :cond_175

    if-nez v7, :cond_175

    goto :goto_176

    :cond_175
    move v10, v7

    :goto_176
    iget-boolean v7, v0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v7, :cond_18f

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int v6, v10, v5

    sub-int v5, v4, v6

    div-int/lit8 v5, v5, 0x2

    iget v7, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v9, v7, v8

    sub-int v9, v3, v9

    invoke-virtual {v0, v7, v5, v8, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v5, v9

    goto :goto_1a9

    :cond_18f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->isHotseatExpandAnimating()Z

    move-result v7

    if-nez v7, :cond_1a9

    invoke-static {v0, v10}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandLayoutParamsInject;->injectHotseatTargetWidth(Lcom/android/launcher3/OplusHotseat;I)I

    move-result v5

    sub-int v6, v3, v5

    div-int/lit8 v6, v6, 0x2

    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v9, v7, v8

    sub-int v9, v4, v9

    invoke-virtual {v0, v6, v7, v6, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v6, v9

    :cond_1a9
    :goto_1a9
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v7, :cond_1b4

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v8, :cond_1b4

    move v5, v7

    move v6, v8

    goto :goto_1b8

    :cond_1b4
    if-eqz v1, :cond_207

    if-eqz v2, :cond_207

    :goto_1b8
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-static {v5, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v5, :cond_1dd

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v5, :cond_1dd

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_1e0

    :cond_1dd
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :cond_1e0
    :goto_1e0
    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v2

    if-eq v1, v2, :cond_206

    iget-object v1, v0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_206

    iget-object v1, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->getNormalIconCount()I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRealTimeShownHotseatIcons:I

    :cond_206
    return-void

    :cond_207
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onVisibilityAggregated(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/Hotseat;->onVisibilityAggregated(Z)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandGuidHelper;->handleHotseatVisibilityChanged(Z)V

    :cond_c
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public resetLayout(Z)V
    .registers 6

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->resetLayout()V

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->revertFixedWidthAndHeight()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    iput-boolean p1, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    const-string v1, " mHasVerticalHotseat = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , numShownHotseatIcons = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    const-string/jumbo v3, "resetLayout"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_43

    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_48

    :cond_43
    iget p1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    :goto_48
    return-void
.end method

.method public revertFixedWidthAndHeight()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p0, :cond_18

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_18
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    const-string p0, "ColorHotseat"

    const-string/jumbo p1, "simple mode changing keep hot seat invisible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_28
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    const-string v3, "ColorHotseat"

    const/4 v4, -0x1

    if-eqz v2, :cond_36

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->isSeascape()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_2c

    :cond_25
    const/4 v2, 0x5

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_2c
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_e5

    :cond_36
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget-boolean v2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    iget v4, v1, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v5

    const v6, 0x7f070743

    const/4 v7, 0x1

    if-eqz v5, :cond_75

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070742

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v4

    if-eqz v2, :cond_71

    goto :goto_73

    :cond_71
    add-int v6, v5, v8

    :goto_73
    add-int/2addr v9, v6

    goto :goto_85

    :cond_75
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_83
    add-int v9, v5, v4

    :goto_85
    sget-boolean v2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v2, :cond_95

    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v2, :cond_95

    if-nez v9, :cond_95

    iget-object v2, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v7}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v9

    :cond_95
    sget-boolean v2, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-nez v2, :cond_b1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070c83

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v9, v2

    :cond_b1
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v2, :cond_e3

    sget-object v2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v4

    if-eqz v4, :cond_e3

    invoke-virtual {v2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_e3

    iget-object v4, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v4}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomMargin = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BottomSearchManager"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e3
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_e5
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_100

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/common/util/DisplayUtils;->updateScreenInfoIfNeeded(Lcom/android/launcher/Launcher;)V

    :cond_100
    invoke-virtual {v1}, Lcom/android/launcher3/OplusDeviceProfile;->getHotseatLayoutPaddingWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_13e

    const-string v2, "Hotseat - setWindowInsets, lp.bottomMargin  = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , windowInsets = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , padding = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " , curLauncherMode , "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Hotseat"

    invoke-static {v2, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13e
    iget p1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startAnimationForDeletePanel(ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_32

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    invoke-virtual {v0}, Lcom/android/launcher/uninstall/HotseatAnimation;->cancel()V

    :cond_24
    new-instance v0, Lcom/android/launcher/uninstall/HotseatAnimation;

    iget-object v1, p0, Lcom/android/launcher3/OplusHotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher/uninstall/HotseatAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mAnimForDeletePanel:Lcom/android/launcher/uninstall/HotseatAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/uninstall/HotseatAnimation;->start(ZZ)V

    :cond_32
    :goto_32
    return-void
.end method

.method public startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->startUpdateExpandItemAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;)V

    :cond_7
    return-void
.end method

.method public updateCellLayoutItemColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;->updateCellLayoutItemColor(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public updateCountXForItemAdded()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const-string/jumbo v0, "updateCountXForItemAdded,mCountX:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    const-string v1, "Hotseat_expand"

    const-string v2, "ColorHotseat"

    invoke-static {v0, p0, v1, v2}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGridSizeWithoutRequestLayout(IILcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/util/GridOccupancy;)V
    .registers 11

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    sget-boolean v0, Lcom/android/launcher3/OplusHotseat;->DEBUG:Z

    const-string v1, "ColorHotseat"

    if-eqz v0, :cond_26

    const-string v2, "mCountX: "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCountY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const-string v4, " x: "

    const-string v5, " y: "

    invoke-static {v2, v3, v4, p1, v5}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v2, p2, v1}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_26
    if-eqz v0, :cond_42

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    if-eqz p1, :cond_42

    const-string p1, "mOccupied: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    if-eqz v0, :cond_5f

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    if-eqz p1, :cond_5f

    const-string/jumbo p1, "mTmpOccupied: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p2}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    iput-object p3, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iput-object p4, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public updateHotseatBgOnFoldStateChange()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->getHotseatBgDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    :cond_19
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_1f
    return-void
.end method

.method public updateHotseatDataState()V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->resetLayout()V

    iget-object v0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {v0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->dealErrorState()V

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->updateGridSize()V

    :cond_18
    return-void
.end method

.method public updateSizeAfterDeleteView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusHotseat;->mHotseatCenterLayoutStrategy:Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutStrategy;->checkSize()V

    :cond_7
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatDividerHelper;->removeDividerAfterDeleteView()V

    :cond_10
    return-void
.end method
