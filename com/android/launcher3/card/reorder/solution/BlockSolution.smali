.class public final Lcom/android/launcher3/card/reorder/solution/BlockSolution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/reorder/solution/IReorderSolution;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/solution/BlockSolution$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/solution/BlockSolution$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_BlockSolution"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

.field private final mOverlappingSolution:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

.field private final mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/BlockSolution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/solution/BlockSolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->Companion:Lcom/android/launcher3/card/reorder/solution/BlockSolution$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V
    .registers 3

    const-string/jumbo v0, "mPushMechanicSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;-><init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;-><init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mOverlappingSolution:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

    return-void
.end method


# virtual methods
.method public find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z
    .registers 8

    const-string v0, "inspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "LCR_BlockSolution"

    if-eqz v0, :cond_3b

    const-string v0, "find(), hasExtrusion="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasExtrusion()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasNeighbor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isSolution="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    invoke-static {v0, v2, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3b
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasExtrusion()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return p0

    :cond_44
    iget-boolean v0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5c

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/card/reorder/CardNeighbor;->updateWillGoLocation(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mOverlappingSolution:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    :cond_5b
    return v2

    :cond_5c
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    iget-boolean v0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_70

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mOverlappingSolution:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    :cond_70
    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return p0

    :cond_73
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/card/reorder/CardNeighbor;->collectAllNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getNeighborViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8a

    return v3

    :cond_8a
    iget-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-boolean v0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    const-string v4, "find(), blockSolution="

    invoke-static {v0, v4, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_9c
    iget-boolean v0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    :cond_a5
    iget-boolean v0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_b9

    invoke-virtual {p1, v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->setHasNeighbor(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/card/reorder/CardNeighbor;->updateWillGoLocation(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;->mOverlappingSolution:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    goto :goto_d4

    :cond_b9
    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/CardConfiguration;->failed()V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getNeighborViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getPerfectDragResult()[I

    move-result-object v0

    const/4 v1, -0x1

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getPerfectDragResult()[I

    move-result-object p0

    aput v1, p0, v2

    :goto_d4
    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez p0, :cond_df

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/reorder/CardNeighbor;->restoreNeighborViews(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    :cond_df
    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return p0
.end method
