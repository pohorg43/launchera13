.class public final Lcom/android/launcher3/card/reorder/ExtrusionItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/ExtrusionItem$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/ExtrusionItem$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ExtrusionItem"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final area:I

.field private extrusionView:Landroid/view/View;

.field private final info:Lcom/android/launcher3/model/data/ItemInfo;

.field private final lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final x:I

.field private final y:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/ExtrusionItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/ExtrusionItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->Companion:Lcom/android/launcher3/card/reorder/ExtrusionItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V
    .registers 5

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mCellLayout"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrusionView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->extrusionView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.model.data.ItemInfo"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    mul-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->area:I

    iget-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->extrusionView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string/jumbo p2, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p2, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iput p2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->x:I

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->y:I

    return-void
.end method

.method private final addToNewPage()Z
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->addExtraEmptyScreens()V

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    return v3

    :cond_15
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    instance-of v4, v2, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v4, :cond_28

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    if-nez v2, :cond_2c

    return v3

    :cond_2c
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_94

    iget-object v5, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v6, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v2, v4, v6, v5}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v5

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addToNewPage(), "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", index="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", count="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", newScreenId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", find="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", emptyCell"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "toString(this)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "LCR_ExtrusionItem"

    invoke-static {v6, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_93

    invoke-direct {p0, v2, v1, v4}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToScreen(Lcom/android/launcher3/OplusCellLayout;I[I)Z

    move-result p0

    return p0

    :cond_93
    return v3

    :array_94
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final addToNextPage(I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/OplusCellLayout;

    if-eqz v2, :cond_11

    check-cast v1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-nez v1, :cond_2b

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_2b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxWorkspacePages()I

    move-result v2

    if-ge p1, v2, :cond_2b

    invoke-direct {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToNewPage()Z

    move-result p0

    return p0

    :cond_2b
    const/4 v2, 0x0

    const-string v3, "LCR_ExtrusionItem"

    if-nez v1, :cond_5e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addToNextPage(), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", nextPageIndex="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", count="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", nextCellLayout already null, return."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5e
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v4

    const/16 v5, -0xc9

    if-ne v4, v5, :cond_87

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    goto :goto_87

    :cond_79
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "intArray is empty !, screenId = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a6

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-direct {p0, v1, v4, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToScreen(Lcom/android/launcher3/OplusCellLayout;I[I)Z

    move-result p0

    return p0

    :cond_9e
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToNextPage(I)Z

    move-result p0

    return p0

    nop

    :array_a6
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private final addToScreen(Lcom/android/launcher3/OplusCellLayout;I[I)Z
    .registers 16

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_a

    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_26

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    if-nez v2, :cond_2a

    goto :goto_2d

    :cond_2a
    invoke-interface {v2}, Lcom/oplus/card/manager/domain/ICardView;->markKeepResumedStateOnDetach()V

    :goto_2d
    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    aget v3, p3, v0

    iput v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    const/4 v3, 0x1

    aget v4, p3, v3

    iput v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getExtrusionView()Landroid/view/View;

    move-result-object v5

    const/16 v6, -0x64

    aget v8, p3, v0

    aget v9, p3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v10, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    iget v11, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v7, p2

    invoke-interface/range {v4 .. v11}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v2

    aget v4, p3, v0

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v0, p3, v0

    iput v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    aget v0, p3, v3

    iput v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aget v0, p3, v3

    iput v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput-boolean v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v2

    const/16 v3, -0x64

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v0

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->getLp()Lcom/android/launcher3/CellLayout$LayoutParams;

    move-result-object v0

    iget v6, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addToScreen(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", addTo="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "toString(this)"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", screen: id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCR_ExtrusionItem"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method


# virtual methods
.method public final addToAfterPage()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToNextPage(I)Z

    move-result p0

    return p0
.end method

.method public final getArea()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->area:I

    return p0
.end method

.method public final getExtrusionView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->extrusionView:Landroid/view/View;

    return-object p0
.end method

.method public final getInfo()Lcom/android/launcher3/model/data/ItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    return-object p0
.end method

.method public final getLp()Lcom/android/launcher3/CellLayout$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    return-object p0
.end method

.method public final getX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->x:I

    return p0
.end method

.method public final getY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->y:I

    return p0
.end method

.method public final setExtrusionView(Landroid/view/View;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->extrusionView:Landroid/view/View;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->extrusionView:Landroid/view/View;

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Card#"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_11
    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Widget#"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_20
    instance-of v1, v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "BigFolder#"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_2f
    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Folder#"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_3e
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Icon#"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_48
    const-string/jumbo v1, "{ "

    const-string v2, ", type="

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cell["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], span["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/ExtrusionItem;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const-string v1, "] }"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
