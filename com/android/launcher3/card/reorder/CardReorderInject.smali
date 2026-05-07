.class public final Lcom/android/launcher3/card/reorder/CardReorderInject;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_REORDER_MAX_TIMEOUT:J = 0x1c2L

.field private static final CARD_REORDER_MIN_TIMEOUT:J = 0x64L

.field private static final FILLIN_ANIMATION_DURATION:I = 0x1f4

.field private static final HANDLE_ACCEPT_DROP:I = 0x4

.field private static final HANDLE_BY_REMOVE:I = 0x2

.field private static final HANDLE_ON_ADD:I = 0x1

.field private static final HANDLE_RESIZE:I = 0x3

.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

.field private static final TAG:Ljava/lang/String; = "LCR_CardReorderInject"

.field public static cardScreenId:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static delayInvokeDragWidgetRemoved:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final extrusionPathInterpolator:Landroid/view/animation/PathInterpolator;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static isDragCardByScroll:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardReorderInject;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const/4 v2, 0x0

    const v3, 0x3e051eb8  # 0.13f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->extrusionPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v0, -0x1

    sput v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animateItemsToSolution(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .registers 23
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v0, "cellLayout"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/OplusHotseat;->needHotseatShowCenterMode(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_1c

    :cond_1a
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_1c
    move-object v11, v0

    invoke-virtual {v11}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    sget-object v0, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->INSTANCE:Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->getReorderDelay(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    const/4 v14, 0x1

    if-lez v13, :cond_eb

    const/4 v15, 0x0

    move v0, v15

    :goto_33
    add-int/lit8 v7, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v10, :cond_42

    :goto_3f
    move v0, v7

    goto/16 :goto_e5

    :cond_42
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_81

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateItemsToSolution(), child="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "child"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewMsg(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LCR_CardReorderInject"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ltz v2, :cond_8d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    if-ge v2, v3, :cond_8d

    move v2, v14

    goto :goto_8e

    :cond_8d
    move v2, v15

    :goto_8e
    if-eqz v2, :cond_aa

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-ltz v0, :cond_9c

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    if-ge v0, v2, :cond_9c

    move v0, v14

    goto :goto_9d

    :cond_9c
    move v0, v15

    :goto_9d
    if-eqz v0, :cond_aa

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->isInExtrusionList(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_aa

    goto :goto_3f

    :cond_aa
    iget-object v0, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v6, :cond_b6

    goto :goto_3f

    :cond_b6
    if-nez v12, :cond_bd

    :goto_b8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c6

    :cond_bd
    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c6

    goto :goto_b8

    :cond_c6
    :goto_c6
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v2, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x190

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v15, v6

    move/from16 v6, v16

    move/from16 v18, v7

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    invoke-virtual {v11, v15, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    move/from16 v0, v18

    :goto_e5
    if-lt v0, v13, :cond_e8

    goto :goto_eb

    :cond_e8
    const/4 v15, 0x0

    goto/16 :goto_33

    :cond_eb
    :goto_eb
    if-eqz p3, :cond_f0

    invoke-virtual {v11, v9, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_f0
    return-void
.end method

.method public static final canRevertTempState(Lcom/android/launcher3/views/ActivityContext;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    const/4 v0, 0x0

    if-nez p0, :cond_11

    goto :goto_2b

    :cond_11
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    if-nez p0, :cond_18

    goto :goto_2b

    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_2b

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p0, :cond_24

    goto :goto_2b

    :cond_24
    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-nez p0, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    :goto_2b
    return v0
.end method

.method public static final getViewMsg(Landroid/view/View;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_12

    :cond_11
    move-object v0, v2

    :goto_12
    instance-of v1, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_26

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v1}, Lcom/oplus/card/manager/domain/ICardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-nez v1, :cond_21

    :goto_1f
    move-object v1, v2

    goto :goto_37

    :cond_21
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_37

    :cond_26
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_31

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_32

    :cond_31
    move-object v1, v2

    :goto_32
    if-nez v1, :cond_35

    goto :goto_1f

    :cond_35
    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lp["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_58

    move-object p0, v2

    goto :goto_5e

    :cond_58
    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_5e
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6a

    move-object v1, v2

    goto :goto_70

    :cond_6a
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_70
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v0, :cond_7a

    move-object v1, v2

    goto :goto_80

    :cond_7a
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8a

    move-object p0, v2

    goto :goto_90

    :cond_8a
    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_90
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], tmp["

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9c

    move-object p0, v2

    goto :goto_a2

    :cond_9c
    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_a2
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_ad

    goto :goto_b3

    :cond_ad
    iget p0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getViewsIntersectingRegion(Lcom/android/launcher3/ShortcutAndWidgetContainer;IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            "IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    if-nez p7, :cond_3

    goto :goto_a

    :cond_3
    add-int p0, p2, p4

    add-int v0, p3, p5

    invoke-virtual {p7, p2, p3, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_a
    invoke-virtual {p8}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Landroid/graphics/Rect;

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-lez p3, :cond_6a

    :goto_22
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_65

    :cond_2b
    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_65

    :cond_32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v3, :cond_3d

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    if-nez v2, :cond_41

    goto :goto_65

    :cond_41
    if-eqz p9, :cond_46

    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_48

    :cond_46
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_48
    if-eqz p9, :cond_4d

    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_4f

    :cond_4d
    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_4f
    add-int v4, v3, p4

    add-int v5, v2, p5

    invoke-virtual {p2, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {p0, p2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p7, :cond_62

    goto :goto_65

    :cond_62
    invoke-virtual {p7, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_65
    :goto_65
    if-lt v1, p3, :cond_68

    goto :goto_6a

    :cond_68
    move v0, v1

    goto :goto_22

    :cond_6a
    :goto_6a
    return-void
.end method

.method public static final isCard(Landroid/view/View;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v0, :cond_f

    instance-of v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez v0, :cond_f

    instance-of p0, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static final isCard(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_e

    :cond_c
    instance-of v0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :goto_e
    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_14

    :cond_12
    instance-of v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    :goto_14
    if-eqz v0, :cond_17

    goto :goto_23

    :cond_17
    instance-of v0, p0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_22

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->isBigFolder()Z

    move-result v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method

.method public static final isDragInLauncher(Lcom/android/launcher3/Workspace;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/launcher3/OplusWorkspace;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/launcher3/OplusWorkspace;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    const/4 v0, 0x0

    if-nez p0, :cond_12

    goto :goto_29

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->getOverlayTranslation()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const v2, 0x3dcccccd  # 0.1f

    mul-float/2addr p0, v2

    cmpg-float p0, v1, p0

    if-gez p0, :cond_29

    const/4 p0, 0x1

    move v0, p0

    :cond_29
    :goto_29
    return v0
.end method

.method public static final isNearestDropLocationOccupied(Lcom/android/launcher3/CellLayout;IIIILandroid/view/View;[IZ)Z
    .registers 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v6, p0

    const-string v0, "dragTargetLayout"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    sget-object v7, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    const-string v1, "dragTargetLayout.shortcutsAndWidgets"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v9, v0, v1

    const/4 v2, 0x1

    aget v10, v0, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v15

    const-string v0, "dragTargetLayout.intersectingViews"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_60

    instance-of v3, v6, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v3, :cond_41

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_42

    :cond_41
    const/4 v3, 0x0

    :goto_42
    if-nez v3, :cond_46

    :cond_44
    :goto_44
    move v3, v1

    goto :goto_5b

    :cond_46
    invoke-virtual {v3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v3

    if-nez v3, :cond_4d

    goto :goto_44

    :cond_4d
    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v3

    if-nez v3, :cond_54

    goto :goto_44

    :cond_54
    invoke-virtual {v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v3

    if-ne v3, v2, :cond_44

    move v3, v2

    :goto_5b
    if-eqz v3, :cond_60

    move/from16 v16, v2

    goto :goto_62

    :cond_60
    move/from16 v16, v1

    :goto_62
    const/4 v14, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v16}, Lcom/android/launcher3/card/reorder/CardReorderInject;->getViewsIntersectingRegion(Lcom/android/launcher3/ShortcutAndWidgetContainer;IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getIntersectingViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public static final isShortSinceLastReorder(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p0, Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    return v0

    :cond_b
    instance-of p0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p0, :cond_12

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    const-wide/16 v1, 0x0

    if-nez p1, :cond_18

    goto :goto_2a

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_2a

    :cond_1f
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object p0

    if-nez p0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v1

    :goto_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    const-wide/16 v1, 0x14

    cmp-long p0, p0, v1

    if-gez p0, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0
.end method

.method private final isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :cond_4
    move v1, v0

    goto :goto_d

    :cond_6
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v2, 0x63

    if-ne v1, v2, :cond_4

    move v1, p0

    :goto_d
    if-nez v1, :cond_1d

    if-nez p1, :cond_13

    :cond_11
    move p1, v0

    goto :goto_19

    :cond_13
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_11

    move p1, p0

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move p0, v0

    :cond_1d
    :goto_1d
    return p0
.end method

.method public static final markCellsAsUnoccupiedForView(Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_95

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_95

    :cond_f
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v2, :cond_57

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.dragndrop.OplusDragView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    return-void

    :cond_3a
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v0, :cond_45

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_45
    if-nez v1, :cond_48

    goto :goto_56

    :cond_48
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :goto_56
    return-void

    :cond_57
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    if-eq v0, v2, :cond_62

    return-void

    :cond_62
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_6d

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_6d
    if-nez v1, :cond_70

    goto :goto_95

    :cond_70
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    instance-of p1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-nez p1, :cond_87

    return-void

    :cond_87
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_95
    :goto_95
    return-void
.end method

.method public static final onDragCardToAssistant(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->isDragCardByScroll:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "onDragCardToAssistant(), isDragCardByScroll="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_CardReorderInject"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    if-nez p0, :cond_2a

    goto :goto_47

    :cond_2a
    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_39

    :cond_38
    move-object p0, v0

    :goto_39
    if-nez p0, :cond_3c

    goto :goto_47

    :cond_3c
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p0

    if-nez p0, :cond_43

    goto :goto_47

    :cond_43
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->reorderInCompact(Landroid/view/View;Z)V

    :goto_47
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result p0

    if-eqz p0, :cond_50

    const/4 p0, -0x1

    sput p0, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    :cond_50
    return-void
.end method

.method public static final onDragViewRemoved(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2d

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusDragLayer;->getDragAnim()Landroid/animation/Animator;

    move-result-object v3

    if-nez v3, :cond_19

    :cond_17
    move v3, v2

    goto :goto_20

    :cond_19
    invoke-virtual {v3}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-ne v3, v1, :cond_17

    move v3, v1

    :goto_20
    if-eqz v3, :cond_2a

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    sput-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    :cond_2d
    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    if-eqz v0, :cond_34

    sput-boolean v2, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    return-void

    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz v3, :cond_4d

    check-cast v0, Lcom/android/launcher3/dragndrop/OplusDragView;

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    if-nez v0, :cond_52

    :cond_50
    move v1, v2

    goto :goto_58

    :cond_52
    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragView;->isPendingCardType()Z

    move-result v0

    if-ne v0, v1, :cond_50

    :goto_58
    if-eqz v1, :cond_5b

    return-void

    :cond_5b
    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const-string v1, "launcher.workspace"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_6a

    const/4 p1, -0x1

    goto :goto_6c

    :cond_6a
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :goto_6c
    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method

.method public static final onDragWidgetAdd(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/PendingAddItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pendingInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isWidget(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/card/reorder/CardReorderInject;->delayInvokeDragWidgetRemoved:Z

    :cond_21
    return-void
.end method

.method public static final onFolderResize(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "workspace"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method

.method private final orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez p0, :cond_3a

    move v4, v2

    :goto_13
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v6, :cond_20

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_21

    :cond_20
    move-object v4, v3

    :goto_21
    if-nez v4, :cond_24

    goto :goto_35

    :cond_24
    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v4

    if-nez v4, :cond_2b

    goto :goto_35

    :cond_2b
    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_35

    :cond_32
    invoke-virtual {v4}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->onPerformDone()V

    :goto_35
    if-lt v5, p0, :cond_38

    goto :goto_3a

    :cond_38
    move v4, v5

    goto :goto_13

    :cond_3a
    :goto_3a
    if-lez p0, :cond_79

    move v4, v2

    :goto_3d
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v6, :cond_4a

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_4b

    :cond_4a
    move-object v4, v3

    :goto_4b
    if-nez v4, :cond_4e

    goto :goto_74

    :cond_4e
    invoke-virtual {v4}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v6

    if-nez v6, :cond_56

    move-object v6, v3

    goto :goto_5a

    :cond_56
    invoke-virtual {v6, p2, p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->handleExtrusionList(II)Ljava/lang/Integer;

    move-result-object v6

    :goto_5a
    if-nez v6, :cond_5d

    goto :goto_67

    :cond_5d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_67

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    :cond_67
    :goto_67
    if-nez v6, :cond_6a

    goto :goto_74

    :cond_6a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_74

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    if-lt v5, p0, :cond_77

    goto :goto_79

    :cond_77
    move v4, v5

    goto :goto_3d

    :cond_79
    :goto_79
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_94

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p3

    if-nez p3, :cond_90

    goto :goto_7d

    :cond_90
    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->onRevert()V

    goto :goto_7d

    :cond_94
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_98
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_af

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {p3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p3

    if-nez p3, :cond_ab

    goto :goto_98

    :cond_ab
    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->onDrop()V

    goto :goto_98

    :cond_af
    const/4 p2, -0x1

    sput p2, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    if-lez p0, :cond_dc

    :goto_b4
    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    instance-of v0, p3, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_c1

    check-cast p3, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_c2

    :cond_c1
    move-object p3, v3

    :goto_c2
    if-nez p3, :cond_c6

    :goto_c4
    move-object p3, v3

    goto :goto_d1

    :cond_c6
    invoke-virtual {p3}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object p3

    if-nez p3, :cond_cd

    goto :goto_c4

    :cond_cd
    invoke-virtual {p3}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object p3

    :goto_d1
    if-nez p3, :cond_d4

    goto :goto_d7

    :cond_d4
    invoke-virtual {p3, v3}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->setDragView(Landroid/view/View;)V

    :goto_d7
    if-lt p2, p0, :cond_da

    goto :goto_dc

    :cond_da
    move v2, p2

    goto :goto_b4

    :cond_dc
    :goto_dc
    return-void
.end method

.method public static final reorderAlarmTime(Landroid/view/View;Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/CellLayout;[F)J
    .registers 24
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string/jumbo v2, "workspace"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "cellLayout"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dragCenter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    instance-of v2, v2, Lcom/android/launcher3/BubbleTextView;

    const-wide/16 v6, 0x1c2

    if-eqz v2, :cond_21

    move-wide v4, v6

    goto/16 :goto_142

    :cond_21
    instance-of v2, v0, Lcom/android/launcher3/OplusCellLayout;

    const/4 v8, 0x0

    if-eqz v2, :cond_29

    check-cast v0, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_2a

    :cond_29
    move-object v0, v8

    :goto_2a
    if-nez v0, :cond_2e

    goto/16 :goto_139

    :cond_2e
    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    if-nez v0, :cond_36

    goto/16 :goto_139

    :cond_36
    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object v0

    if-nez v0, :cond_3e

    goto/16 :goto_139

    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v2, 0x0

    aget v10, v1, v2

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v11

    aget v11, v11, v2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/4 v11, 0x1

    aget v12, v1, v11

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v13

    aget v13, v13, v11

    int-to-float v13, v13

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v12

    sub-long v12, v8, v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    const/16 v17, 0x0

    if-nez v16, :cond_75

    move/from16 v2, v17

    goto :goto_78

    :cond_75
    long-to-float v2, v12

    div-float v2, v10, v2

    :goto_78
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/OplusWorkspace;->getSpringLoadedDragController()Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/OplusSpringLoadedDragController;->isAlarmPending()Z

    move-result v3

    if-eqz v3, :cond_83

    goto :goto_bf

    :cond_83
    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v18

    cmp-long v14, v18, v14

    if-nez v14, :cond_8e

    :cond_8b
    const-wide/16 v6, 0x64

    goto :goto_bf

    :cond_8e
    const-wide/16 v14, 0x32

    cmp-long v14, v12, v14

    if-ltz v14, :cond_bf

    cmpg-float v14, v17, v2

    const/high16 v15, 0x3f800000  # 1.0f

    if-gtz v14, :cond_a0

    cmpg-float v14, v2, v15

    if-gtz v14, :cond_a0

    move v14, v11

    goto :goto_a1

    :cond_a0
    const/4 v14, 0x0

    :goto_a1
    if-eqz v14, :cond_a4

    goto :goto_bf

    :cond_a4
    cmpg-float v14, v15, v2

    if-gtz v14, :cond_b0

    const/high16 v14, 0x40200000  # 2.5f

    cmpg-float v14, v2, v14

    if-gtz v14, :cond_b0

    move v14, v11

    goto :goto_b1

    :cond_b0
    const/4 v14, 0x0

    :goto_b1
    if-eqz v14, :cond_8b

    const-wide v14, 0x406d2aaaaaaaaaabL  # 233.33333333333334

    int-to-float v11, v11

    sub-float v11, v2, v11

    float-to-double v4, v11

    mul-double/2addr v4, v14

    double-to-long v4, v4

    sub-long/2addr v6, v4

    :cond_bf
    :goto_bf
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v4

    if-eqz v4, :cond_135

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reorderAlarmTime(), isWorkspaceScrolling="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", curTime="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", preTime="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderTime()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", duration="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", prePixel="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPreReorderPixel()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "toString(this)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", curPixel="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", distance="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", velocity="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", alarmTime="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_CardReorderInject"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_135
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_139
    if-nez v8, :cond_13e

    const-wide/16 v4, 0x64

    goto :goto_142

    :cond_13e
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_142
    return-wide v4
.end method

.method public static final showDragViewAfterCancel(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "dragView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_35

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    move-object v0, v1

    goto :goto_23

    :cond_1f
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_23
    instance-of v2, v0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_2a

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    :cond_2a
    if-nez v1, :cond_2d

    goto :goto_35

    :cond_2d
    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout;->getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->reorderInCompact(Landroid/view/View;Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method public static final stepMoveItemsToEmptyCell(Lcom/android/launcher3/OplusCellLayout;[IIILjava/util/List;ZZ)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "[III",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v1, "cellLayout"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emptyCell"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "views"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    new-instance v15, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v15, v1, v3}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v4, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v4, v15}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-eqz p5, :cond_30

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_31

    :cond_30
    const/4 v4, 0x0

    :goto_31
    move-object v7, v4

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v5, p2

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string/jumbo v9, "， from=, ["

    const-string/jumbo v10, "stepMoveItemsToEmptyCell(), child="

    const-string v11, "LCR_CardReorderInject"

    const-string v12, ", "

    const/4 v13, 0x0

    if-eqz v6, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move/from16 v14, p6

    :goto_51
    iget-object v2, v15, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget v13, v0, v13

    aget-object v2, v2, v13

    const/4 v13, 0x1

    aget v13, v0, v13

    aget-boolean v2, v2, v13

    if-nez v2, :cond_128

    move/from16 v2, p3

    if-ne v5, v2, :cond_6a

    move/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v17, v4

    goto/16 :goto_130

    :cond_6a
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v14, :cond_75

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_76

    :cond_75
    const/4 v13, 0x0

    :goto_76
    if-nez v13, :cond_79

    goto :goto_87

    :cond_79
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    instance-of v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v2, :cond_84

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_85

    :cond_84
    const/4 v14, 0x0

    :goto_85
    if-nez v14, :cond_91

    :goto_87
    move/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 p2, v5

    goto/16 :goto_11c

    :cond_91
    if-nez v7, :cond_9c

    move/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 p2, v5

    goto :goto_b8

    :cond_9c
    new-instance v2, Lcom/android/launcher3/util/CellAndSpan;

    const/16 v16, 0x0

    move-object/from16 v17, v4

    aget v4, v0, v16

    const/16 v16, 0x1

    move/from16 p2, v5

    aget v5, v0, v16

    move/from16 v16, v1

    iget v1, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    move/from16 v18, v3

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {v2, v4, v5, v1, v3}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b8
    const/4 v1, 0x0

    invoke-virtual {v15, v13, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    if-nez p5, :cond_10f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-static {v10}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    const/4 v1, 0x1

    iput-boolean v1, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v2, 0x0

    aget v3, v0, v2

    iput v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v3, v0, v1

    iput v3, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput-boolean v2, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    invoke-virtual {v6}, Landroid/view/View;->requestLayout()V

    goto :goto_111

    :cond_10f
    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_111
    aget v10, v0, v2

    aget v11, v0, v1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v9, v15

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :goto_11c
    move/from16 v5, p2

    move-object/from16 v2, p4

    move/from16 v1, v16

    move-object/from16 v4, v17

    move/from16 v3, v18

    goto/16 :goto_38

    :cond_128
    move/from16 v16, v1

    move/from16 v18, v3

    move-object/from16 v17, v4

    move/from16 v14, p6

    :goto_130
    invoke-virtual {v8, v0, v14}, Lcom/android/launcher3/OplusCellLayout;->updateCellToNextPos([IZ)V

    if-eqz v14, :cond_13d

    const/4 v1, 0x1

    aget v2, v0, v1

    move/from16 v3, v18

    if-lt v2, v3, :cond_145

    return-void

    :cond_13d
    move/from16 v3, v18

    const/4 v1, 0x1

    aget v2, v0, v1

    if-gez v2, :cond_145

    return-void

    :cond_145
    const/4 v2, 0x0

    aget v2, v0, v2

    aget v1, v0, v1

    mul-int v1, v1, v16

    add-int v5, v1, v2

    const/4 v13, 0x0

    move/from16 v1, v16

    move-object/from16 v4, v17

    goto/16 :goto_51

    :cond_155
    if-eqz p5, :cond_253

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/launcher3/card/reorder/ReorderAnimationDelayLogic;->generateReorderDelayMap(Landroid/util/ArrayMap;Landroid/view/View;)Landroid/util/ArrayMap;

    move-result-object v13

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_168
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_258

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v6, :cond_17e

    goto :goto_168

    :cond_17e
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_18a

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v5, v2

    goto :goto_18b

    :cond_18a
    move-object v5, v0

    :goto_18b
    if-nez v5, :cond_18e

    goto :goto_168

    :cond_18e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v3, :cond_199

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_19a

    :cond_199
    move-object v2, v0

    :goto_19a
    if-nez v2, :cond_19d

    goto :goto_168

    :cond_19d
    const/4 v0, 0x0

    if-nez v13, :cond_1a1

    goto :goto_1a9

    :cond_1a1
    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1ad

    :goto_1a9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1ad
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f1

    invoke-static {v10}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], to=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] , delay="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f1
    const/4 v0, 0x0

    invoke-virtual {v15, v5, v0}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iput-boolean v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    iget v3, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v0, v6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    move/from16 v16, v3

    iget v3, v6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v17, 0x1f4

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v22, v2

    move/from16 v2, v21

    move/from16 v23, v16

    move/from16 v16, v4

    move/from16 v4, v17

    move-object/from16 v24, v5

    move/from16 v5, v16

    move-object/from16 v25, v6

    move/from16 v6, v18

    move-object/from16 v16, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move/from16 v1, v23

    move-object/from16 v0, v24

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    move/from16 v1, v22

    iput v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v2, v25

    iget v0, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 p1, v15

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    move-object/from16 v7, v16

    move-object/from16 v0, v20

    goto/16 :goto_168

    :cond_253
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v15, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    :cond_258
    return-void
.end method

.method public static final updateClip(Lcom/android/launcher3/CellLayout;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public final isCellLayoutChild(Landroid/view/View;Lcom/android/launcher3/CellLayout;)Z
    .registers 7

    const-string p0, "cellLayout"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p1, :cond_a

    move-object v0, p0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_e
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/LauncherDragView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.dragndrop.LauncherDragView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/dragndrop/LauncherDragView;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_27

    goto :goto_2b

    :cond_27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_2b
    if-ne p0, p2, :cond_40

    goto :goto_41

    :cond_2e
    instance-of v0, v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_39

    goto :goto_3d

    :cond_39
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :goto_3d
    if-ne p0, p2, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    :goto_41
    return v2
.end method

.method public final isFolderToBig(Landroid/view/View;)Z
    .registers 2

    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->supportBigFolder()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final onAcceptDrop(Lcom/android/launcher3/OplusWorkspace;)V
    .registers 4

    const-string/jumbo v0, "workspace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->getDropToLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->orderHandleExtrusionList(Lcom/android/launcher3/OplusWorkspace;II)V

    return-void
.end method
