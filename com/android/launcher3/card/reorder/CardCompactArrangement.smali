.class public final Lcom/android/launcher3/card/reorder/CardCompactArrangement;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

.field private static final TAG:Ljava/lang/String; = "LCR_CardCompactArrangement"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;-><init>()V

    sput-object v0, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyCards(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)V
    .registers 20

    const/4 v0, 0x0

    aget v2, p4, v0

    const/4 v7, 0x1

    aget v3, p4, v7

    aget v4, p5, v0

    aget v5, p5, v7

    const/4 v6, 0x1

    move-object/from16 v1, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    if-lez v1, :cond_81

    move v2, v0

    :goto_17
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    if-lez v4, :cond_76

    move v5, v0

    :goto_20
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8, v5, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6b

    move-object/from16 v8, p3

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_68

    invoke-static {v5}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3b

    goto :goto_68

    :cond_3b
    move-object v9, p2

    iget-object v10, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v10, :cond_48

    :goto_46
    move-object v11, p0

    goto :goto_6f

    :cond_48
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v11, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v5, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v12, v10, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-ne v11, v12, :cond_61

    iget v11, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v12, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    if-ne v11, v12, :cond_61

    goto :goto_46

    :cond_61
    move-object v11, p0

    move-object/from16 v12, p6

    invoke-direct {p0, v12, v5, v10}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->shiftAndMarkCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;)V

    goto :goto_71

    :cond_68
    :goto_68
    move-object v11, p0

    move-object v9, p2

    goto :goto_6f

    :cond_6b
    move-object v11, p0

    move-object v9, p2

    move-object/from16 v8, p3

    :goto_6f
    move-object/from16 v12, p6

    :goto_71
    if-lt v6, v4, :cond_74

    goto :goto_7c

    :cond_74
    move v5, v6

    goto :goto_20

    :cond_76
    move-object v11, p0

    move-object v9, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p6

    :goto_7c
    if-lt v3, v1, :cond_7f

    goto :goto_83

    :cond_7f
    move v2, v3

    goto :goto_17

    :cond_81
    move-object/from16 v12, p6

    :goto_83
    aget v1, p4, v0

    aget v2, p4, v7

    aget v0, p5, v0

    aget v3, p5, v7

    const/4 v4, 0x0

    move-object/from16 p0, p6

    move p1, v1

    move p2, v2

    move/from16 p3, v0

    move/from16 p4, v3

    move/from16 p5, v4

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    return-void
.end method

.method private final applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z
    .registers 25

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6d

    move v2, v1

    move v3, v2

    :goto_9
    add-int/lit8 v4, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    if-lez v5, :cond_63

    move v6, v1

    :goto_12
    add-int/lit8 v7, v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5a

    move-object/from16 v8, p3

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    invoke-static {v6}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2d

    goto :goto_57

    :cond_2d
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v13, v9

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    move-object/from16 v9, p2

    iget-object v10, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v14, :cond_48

    goto :goto_5e

    :cond_48
    sget-object v11, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->INSTANCE:Lcom/android/launcher3/card/reorder/CardCompactArrangement;

    move-object/from16 v12, p1

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v11 .. v17}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->shiftAndMarkCells(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    move-result v3

    goto :goto_5e

    :cond_57
    :goto_57
    move-object/from16 v9, p2

    goto :goto_5e

    :cond_5a
    move-object/from16 v9, p2

    move-object/from16 v8, p3

    :goto_5e
    if-lt v7, v5, :cond_61

    goto :goto_67

    :cond_61
    move v6, v7

    goto :goto_12

    :cond_63
    move-object/from16 v9, p2

    move-object/from16 v8, p3

    :goto_67
    if-lt v4, v0, :cond_6b

    move v1, v3

    goto :goto_6d

    :cond_6b
    move v2, v4

    goto :goto_9

    :cond_6d
    :goto_6d
    return v1
.end method

.method private final isBehind(IIII)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-le p2, p4, :cond_6

    :goto_4
    move p0, v0

    goto :goto_b

    :cond_6
    if-ne p2, p4, :cond_b

    if-le p1, p3, :cond_b

    goto :goto_4

    :cond_b
    :goto_b
    return p0
.end method

.method private final shiftAndMarkCard(Lcom/android/launcher3/util/GridOccupancy;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;)V
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result p2

    if-eqz p2, :cond_5f

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-direct {p0, p2, v1, v3, v5}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->isBehind(IIII)Z

    move-result p0

    if-eqz p0, :cond_5f

    const-string/jumbo p0, "shiftAndMarkCard(), shift from ["

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "toString(this)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "LCR_CardCompactArrangement"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    aget p0, v0, v2

    iput p0, p3, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget p0, v0, v4

    iput p0, p3, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {p1, p3, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_5f
    return-void

    :array_60
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final shiftAndMarkCells(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/util/CellAndSpan;[I[ILcom/android/launcher3/util/GridOccupancy;)Z
    .registers 23

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_cd

    move v5, v4

    move v6, v5

    :goto_f
    add-int/lit8 v7, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v8

    if-lez v8, :cond_c4

    move v9, v4

    :goto_18
    add-int/lit8 v10, v9, 0x1

    aget v11, p4, v4

    const/4 v12, 0x1

    if-ltz v11, :cond_3d

    aget v11, p4, v12

    if-ltz v11, :cond_3d

    aget v11, p4, v4

    if-lt v9, v11, :cond_3d

    aget v11, p4, v4

    aget v13, p5, v4

    add-int/2addr v11, v13

    if-ge v9, v11, :cond_3d

    aget v11, p4, v12

    if-lt v5, v11, :cond_3d

    aget v11, p4, v12

    aget v12, p5, v12

    add-int/2addr v11, v12

    if-ge v5, v11, :cond_3d

    move-object/from16 v15, p0

    goto/16 :goto_be

    :cond_3d
    const-string/jumbo v11, "shiftAndMarkCells(), ["

    const-string v12, ", "

    const-string v13, "] in occupied: "

    invoke-static {v11, v9, v12, v5, v13}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v13, v13, v9

    aget-boolean v13, v13, v5

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, "LCR_CardCompactArrangement"

    invoke-static {v13, v11}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v11, v11, v9

    aget-boolean v11, v11, v5

    if-nez v11, :cond_b8

    iget v11, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v14, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    move-object/from16 v15, p0

    invoke-direct {v15, v11, v14, v9, v5}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->isBehind(IIII)Z

    move-result v11

    if-eqz v11, :cond_ba

    const-string/jumbo v6, "shiftAndMarkCells() "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": from ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "] to ["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const-string v14, "], shift to ["

    invoke-static {v6, v11, v14, v9, v12}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x5d

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    iput v9, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v6, 0x1

    goto :goto_ba

    :cond_b8
    move-object/from16 v15, p0

    :cond_ba
    :goto_ba
    const/4 v9, 0x1

    invoke-virtual {v2, v1, v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :goto_be
    if-lt v10, v8, :cond_c1

    goto :goto_c6

    :cond_c1
    move v9, v10

    goto/16 :goto_18

    :cond_c4
    move-object/from16 v15, p0

    :goto_c6
    if-lt v7, v3, :cond_ca

    move v4, v6

    goto :goto_cd

    :cond_ca
    move v5, v7

    goto/16 :goto_f

    :cond_cd
    :goto_cd
    return v4
.end method


# virtual methods
.method public final apply(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Ljava/util/ArrayList;Landroid/view/View;[I[I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "[I[I)V"
        }
    .end annotation

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultSpan"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v1, p1, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const-string v8, "LCR_CardCompactArrangement"

    if-nez p3, :cond_35

    goto :goto_7d

    :cond_35
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_39
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_7d

    :cond_4c
    iget-object v2, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v1, :cond_57

    goto :goto_39

    :cond_57
    const-string v2, "apply(), set intersecting card ["

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] to occupe in shiftOccupied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_39

    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "shiftOccupied.toString()"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    move-result p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyCards(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)V

    iget-object p0, p1, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-eqz p3, :cond_d1

    const-string p0, "apply(), screenId="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "toString(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", resultSpan="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    return-void
.end method

.method public final applyAndCommit(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;Z)V
    .registers 31

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    const-string v0, "launcher"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-nez v0, :cond_19

    return-void

    :cond_19
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    new-instance v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v11}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v12, 0x0

    invoke-static {v11, v12, v12, v8, v7}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V

    new-instance v13, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v1

    invoke-direct {v13, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    if-nez v9, :cond_66

    if-nez v8, :cond_3e

    const/4 v0, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_42
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_49

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    :goto_4a
    if-nez v0, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v13, v0, v12}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :goto_50
    const/4 v0, 0x2

    new-array v4, v0, [I

    fill-array-data v4, :array_1d4

    new-array v5, v0, [I

    fill-array-data v5, :array_1dc

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/CardCompactArrangement;->applyIcons(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;[I[ILcom/android/launcher3/util/GridOccupancy;)Z

    :cond_66
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    if-lez v6, :cond_180

    move v0, v12

    move v1, v0

    :goto_77
    add-int/lit8 v15, v12, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_178

    invoke-static {v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_8f

    goto/16 :goto_178

    :cond_8f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz v4, :cond_9a

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    if-nez v3, :cond_9f

    goto/16 :goto_178

    :cond_9f
    const/4 v4, -0x1

    if-nez v9, :cond_b9

    iget-object v5, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    if-nez v5, :cond_ae

    const/4 v5, 0x0

    goto :goto_b2

    :cond_ae
    iget v0, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_b2
    if-nez v5, :cond_bd

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iput v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    goto :goto_bd

    :cond_b9
    iget v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    iget v1, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    :cond_bd
    :goto_bd
    move v12, v0

    move v5, v1

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v0, v12, :cond_d4

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v0, v5, :cond_d8

    :cond_d4
    if-ne v12, v4, :cond_dc

    if-ne v5, v4, :cond_dc

    :cond_d8
    move/from16 v25, v5

    goto/16 :goto_175

    :cond_dc
    const-string v0, "applyAndCommit(), revert="

    const-string v1, ", "

    invoke-static {v0, v9, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    const-string v10, "] to: ["

    invoke-static {v0, v4, v10, v12, v1}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], last: ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCR_CardCompactArrangement"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_125

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    goto :goto_126

    :cond_125
    const/4 v0, -0x1

    :goto_126
    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellX:I

    if-nez v9, :cond_12d

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_12e

    :cond_12d
    const/4 v0, -0x1

    :goto_12e
    iput v0, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->lastCellY:I

    new-instance v0, Landroid/graphics/Point;

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-direct {v0, v1, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v12, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v12, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v10, 0x1

    move-object v0, v13

    move v1, v12

    move-object/from16 v24, v2

    move v2, v5

    move/from16 v25, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v16

    const/16 v18, -0x64

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v19

    move-object/from16 v0, v24

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v17, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    invoke-virtual/range {v16 .. v23}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    :goto_175
    move v0, v12

    move/from16 v1, v25

    :cond_178
    :goto_178
    if-lt v15, v6, :cond_17b

    goto :goto_180

    :cond_17b
    move-object/from16 v10, p1

    move v12, v15

    goto/16 :goto_77

    :cond_180
    :goto_180
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_184
    :goto_184
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget-object v1, v13, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget v2, v0, Landroid/graphics/Point;->x:I

    aget-object v1, v1, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    aget-boolean v0, v1, v3

    if-nez v0, :cond_184

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object v0, v13

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_184

    :cond_1a9
    if-eqz v9, :cond_1c2

    if-nez v8, :cond_1af

    const/4 v0, 0x0

    goto :goto_1b3

    :cond_1af
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_1b3
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1ba

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1bb

    :cond_1ba
    const/4 v0, 0x0

    :goto_1bb
    if-nez v0, :cond_1be

    goto :goto_1c2

    :cond_1be
    const/4 v1, 0x1

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :cond_1c2
    :goto_1c2
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v13, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    nop

    :array_1d4
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1dc
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public final revertShift(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 13

    const-string p0, "cellLayout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-ltz p0, :cond_b9

    const/4 v0, 0x0

    :goto_10
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1e

    goto/16 :goto_b3

    :cond_1e
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v5, 0x0

    if-eqz v3, :cond_2a

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_2b

    :cond_2a
    move-object v2, v5

    :goto_2b
    if-nez v2, :cond_2f

    goto/16 :goto_b3

    :cond_2f
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v3, v6, :cond_3b

    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v3, v6, :cond_b3

    :cond_3b
    invoke-static {v4}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isCard(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_b3

    const-string/jumbo v3, "revertShift() "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v7, :cond_53

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_54

    :cond_53
    move-object v6, v5

    :goto_54
    if-nez v6, :cond_57

    goto :goto_59

    :cond_57
    iget-object v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": from ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] to ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], shift to ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LCR_CardCompactArrangement"

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v6, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    const/16 v7, 0x190

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_b3
    :goto_b3
    if-ne v0, p0, :cond_b6

    goto :goto_b9

    :cond_b6
    move v0, v1

    goto/16 :goto_10

    :cond_b9
    :goto_b9
    return-void
.end method
