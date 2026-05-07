.class public final Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ReorderLayoutInspector$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ReorderLayoutInspector"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private cellLayout:Lcom/android/launcher3/CellLayout;

.field private final directionVector:[I

.field private dragMode:I

.field private final dragResult:[I

.field private final dragResultSpan:[I

.field private dragView:Landroid/view/View;

.field private final dragViewLocation:[I

.field private hasExtrusion:Z

.field private hasNeighbor:Z

.field private launcher:Lcom/android/launcher/Launcher;

.field private mFirstReorder:Z

.field private final mPreviousReorderDirection:[I

.field private final minSpan:[I

.field private final neighbor:Lcom/android/launcher3/card/reorder/CardNeighbor;

.field private final performResult:[I

.field private final pixel:[I

.field private final preReorderPixel:[I

.field private preReorderTime:J

.field private final preValidResult:[I

.field private final realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

.field private reorderScreenId:I

.field private resizeMode:I

.field private final span:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->Companion:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->launcher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    new-instance p1, Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-direct {p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

    const/4 p1, 0x2

    new-array p2, p1, [I

    fill-array-data p2, :array_6c

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->directionVector:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->pixel:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->minSpan:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    new-array p2, p1, [I

    fill-array-data p2, :array_74

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->performResult:[I

    new-array p2, p1, [I

    fill-array-data p2, :array_7c

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResult:[I

    new-array p2, p1, [I

    fill-array-data p2, :array_84

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preValidResult:[I

    new-array p2, p1, [I

    fill-array-data p2, :array_8c

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragViewLocation:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResultSpan:[I

    new-array p2, p1, [I

    fill-array-data p2, :array_94

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderPixel:[I

    new-instance p2, Lcom/android/launcher3/card/reorder/CardNeighbor;

    invoke-direct {p2, p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;-><init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->neighbor:Lcom/android/launcher3/card/reorder/CardNeighbor;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragMode:I

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->resizeMode:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    new-array p1, p1, [I

    fill-array-data p1, :array_9c

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mPreviousReorderDirection:[I

    return-void

    nop

    :array_6c
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_74
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_7c
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_84
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_8c
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final screenId(Landroid/view/View;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_5

    move-object p1, p0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_9
    instance-of v0, p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_10

    check-cast p1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_11

    :cond_10
    move-object p1, p0

    :goto_11
    if-nez p1, :cond_15

    move-object p1, p0

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_19
    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v0, :cond_20

    move-object p0, p1

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    :cond_20
    if-nez p0, :cond_24

    const/4 p0, -0x1

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result p0

    :goto_28
    return p0
.end method


# virtual methods
.method public final applySolutionToResult(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResult:[I

    const/4 v1, -0x1

    if-nez p1, :cond_7

    move v2, v1

    goto :goto_9

    :cond_7
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    :goto_9
    const/4 v3, 0x0

    aput v2, v0, v3

    if-nez p1, :cond_10

    move v2, v1

    goto :goto_12

    :cond_10
    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_12
    const/4 v4, 0x1

    aput v2, v0, v4

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResultSpan:[I

    if-nez p1, :cond_1b

    move v0, v1

    goto :goto_1d

    :cond_1b
    iget v0, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    :goto_1d
    aput v0, p0, v3

    if-nez p1, :cond_22

    goto :goto_24

    :cond_22
    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :goto_24
    aput v1, p0, v4

    return-void
.end method

.method public final calculateDirection()V
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragMode:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_f

    if-eq v1, v2, :cond_f

    const/4 v6, 0x4

    if-ne v1, v6, :cond_2a

    :cond_f
    iget-object v6, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mPreviousReorderDirection:[I

    aget v7, v6, v5

    const/16 v8, -0x64

    if-eq v7, v8, :cond_2a

    iget-object v7, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->directionVector:[I

    aget v9, v6, v5

    aput v9, v7, v5

    aget v9, v6, v4

    aput v9, v7, v4

    if-eq v1, v3, :cond_25

    if-ne v1, v2, :cond_4d

    :cond_25
    aput v8, v6, v5

    aput v8, v6, v4

    goto :goto_4d

    :cond_2a
    iget-object v10, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->pixel:[I

    aget v11, v1, v5

    aget v12, v1, v4

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    aget v13, v1, v5

    aget v14, v1, v4

    iget-object v15, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->directionVector:[I

    move-object/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mPreviousReorderDirection:[I

    iget-object v2, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->directionVector:[I

    aget v3, v2, v5

    aput v3, v1, v5

    aget v2, v2, v4

    aput v2, v1, v4

    :cond_4d
    :goto_4d
    iget-object v6, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->pixel:[I

    aget v7, v1, v5

    aget v8, v1, v4

    iget-object v1, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    aget v9, v1, v5

    aget v10, v1, v4

    iget-object v11, v0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->performResult:[I

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    return-void
.end method

.method public final getCellLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public final getDirectionVector()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->directionVector:[I

    return-object p0
.end method

.method public final getDragArea()I
    .registers 5

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_e

    aget v1, p0, v2

    if-ne v1, v3, :cond_e

    goto :goto_13

    :cond_e
    aget v0, p0, v0

    aget p0, p0, v2

    mul-int/2addr v0, p0

    :goto_13
    return v0
.end method

.method public final getDragMode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragMode:I

    return p0
.end method

.method public final getDragResult()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResult:[I

    return-object p0
.end method

.method public final getDragResultSpan()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResultSpan:[I

    return-object p0
.end method

.method public final getDragView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    return-object p0
.end method

.method public final getDragViewLocation()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragViewLocation:[I

    return-object p0
.end method

.method public final getHasExtrusion()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasExtrusion:Z

    return p0
.end method

.method public final getHasNeighbor()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasNeighbor:Z

    return p0
.end method

.method public final getIndex()I
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p0

    return p0
.end method

.method public final getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->launcher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final getMinSpan()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->minSpan:[I

    return-object p0
.end method

.method public final getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->neighbor:Lcom/android/launcher3/card/reorder/CardNeighbor;

    return-object p0
.end method

.method public final getPerformResult()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->performResult:[I

    return-object p0
.end method

.method public final getPixel()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->pixel:[I

    return-object p0
.end method

.method public final getPreReorderPixel()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderPixel:[I

    return-object p0
.end method

.method public final getPreReorderTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderTime:J

    return-wide v0
.end method

.method public final getPreValidResult()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preValidResult:[I

    return-object p0
.end method

.method public final getRealtimeSolution()Lcom/android/launcher3/card/reorder/CardConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

    return-object p0
.end method

.method public final getReorderScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->reorderScreenId:I

    return p0
.end method

.method public final getResizeMode()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->resizeMode:I

    return p0
.end method

.method public final getSpan()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    return-object p0
.end method

.method public final initSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 4

    const-string/jumbo v0, "solution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0, p0}, Lcom/android/launcher3/card/reorder/CardCellsMeasurer;->copyStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;ZZLandroid/view/View;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public final initTmpOccupancy()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    return-void
.end method

.method public final onFoundSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 6

    const-string/jumbo v0, "pushSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preValidResult:[I

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    if-eqz v0, :cond_1d

    iput-boolean v2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/reorder/CardConfiguration;->deepCopyFrom(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    :cond_1d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "onFoundSolution(), hasNeighbor="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasNeighbor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pushSolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", realtimeSolution="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCR_ReorderLayoutInspector"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public final onPerformDone()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string/jumbo v0, "onPerformDone(), CellLayout: index="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cardScreenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/launcher3/card/reorder/CardReorderInject;->cardScreenId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reorderScreenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->reorderScreenId:I

    const-string v2, "LCR_ReorderLayoutInspector"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasExtrusion:Z

    iput-boolean v1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasNeighbor:Z

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderPixel:[I

    aput v1, v2, v1

    aput v1, v2, v0

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preValidResult:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    aput v3, v2, v0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderTime:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->resizeMode:I

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->realtimeSolution:Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardConfiguration;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->neighbor:Lcom/android/launcher3/card/reorder/CardNeighbor;

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getNeighborViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->neighbor:Lcom/android/launcher3/card/reorder/CardNeighbor;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getNeighborMaps()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final onPerformStart(IIIIIILandroid/view/View;[II)V
    .registers 12

    const-string/jumbo v0, "result"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->pixel:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->minSpan:[I

    aput p3, p2, v1

    aput p4, p2, p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->span:[I

    aput p5, p2, v1

    aput p6, p2, p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    if-nez p2, :cond_20

    iput-object p7, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    :cond_20
    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragResult:[I

    aget p3, p8, v1

    aput p3, p2, v1

    aget p3, p8, p1

    aput p3, p2, p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->performResult:[I

    aget p3, p8, v1

    aput p3, p2, v1

    aget p3, p8, p1

    aput p3, p2, p1

    iput p9, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragMode:I

    if-eqz p7, :cond_8c

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_8c

    move p3, v1

    :goto_45
    add-int/lit8 p4, p3, 0x1

    iget-object p5, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {p5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p5

    invoke-virtual {p5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-ne p3, p7, :cond_87

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    instance-of p5, p5, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz p5, :cond_87

    iget-object p5, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragViewLocation:[I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p6

    instance-of p8, p6, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p9, 0x0

    if-eqz p8, :cond_69

    check-cast p6, Lcom/android/launcher3/CellLayout$LayoutParams;

    goto :goto_6a

    :cond_69
    move-object p6, p9

    :goto_6a
    const/4 p8, -0x1

    if-nez p6, :cond_6f

    move p6, p8

    goto :goto_71

    :cond_6f
    iget p6, p6, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_71
    aput p6, p5, v1

    iget-object p5, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragViewLocation:[I

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p6, p3, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz p6, :cond_80

    move-object p9, p3

    check-cast p9, Lcom/android/launcher3/CellLayout$LayoutParams;

    :cond_80
    if-nez p9, :cond_83

    goto :goto_85

    :cond_83
    iget p8, p9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_85
    aput p8, p5, p1

    :cond_87
    if-lt p4, p2, :cond_8a

    goto :goto_8c

    :cond_8a
    move p3, p4

    goto :goto_45

    :cond_8c
    :goto_8c
    iget-boolean p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->mFirstReorder:Z

    if-eqz p1, :cond_96

    invoke-static {p7}, Lcom/android/common/util/WidgetUtils;->enableResize(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->resizeMode:I

    :cond_96
    return-void
.end method

.method public final recordPixelXY(ZFF)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderPixel:[I

    aget v3, v2, v1

    if-nez v3, :cond_e

    aget v2, v2, v0

    if-eqz v2, :cond_10

    :cond_e
    if-nez p1, :cond_1e

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderPixel:[I

    float-to-int p2, p2

    aput p2, p1, v1

    float-to-int p2, p3

    aput p2, p1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->preReorderTime:J

    :cond_1e
    return-void
.end method

.method public final setCellLayout(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->cellLayout:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public final setDragMode(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragMode:I

    return-void
.end method

.method public final setDragView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->dragView:Landroid/view/View;

    return-void
.end method

.method public final setHasExtrusion(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasExtrusion:Z

    return-void
.end method

.method public final setHasNeighbor(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->hasNeighbor:Z

    return-void
.end method

.method public final setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->launcher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final setReorderScreenId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->reorderScreenId:I

    return-void
.end method
