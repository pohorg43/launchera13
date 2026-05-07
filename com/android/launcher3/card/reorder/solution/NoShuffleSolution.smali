.class public final Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/reorder/solution/IReorderSolution;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z
    .registers 16

    const-string p0, "inspector"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "solution"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->initSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    const/4 p0, 0x2

    new-array v10, p0, [I

    new-array p0, p0, [I

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPixel()[I

    move-result-object v1

    const/4 v11, 0x0

    aget v1, v1, v11

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPixel()[I

    move-result-object v2

    const/4 v12, 0x1

    aget v2, v2, v12

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v3

    aget v3, v3, v11

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getMinSpan()[I

    move-result-object v4

    aget v4, v4, v12

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v5

    aget v5, v5, v11

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object p1

    aget v6, p1, v12

    const/4 v7, 0x1

    move-object v8, v10

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    aget p1, v10, v11

    if-ltz p1, :cond_50

    aget p1, v10, v12

    if-ltz p1, :cond_50

    invoke-virtual {p2, v10, p0}, Lcom/android/launcher3/card/reorder/CardConfiguration;->success([I[I)V

    move v11, v12

    goto :goto_53

    :cond_50
    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/CardConfiguration;->failed()V

    :goto_53
    return v11
.end method
