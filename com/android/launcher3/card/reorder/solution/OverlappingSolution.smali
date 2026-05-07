.class public final Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/reorder/solution/IReorderSolution;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/solution/OverlappingSolution$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_OverlappingSolution"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->Companion:Lcom/android/launcher3/card/reorder/solution/OverlappingSolution$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V
    .registers 3

    const-string/jumbo v0, "mPushMechanicSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    return-void
.end method


# virtual methods
.method public find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z
    .registers 7

    const-string v0, "inspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->isOverlapping()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8f

    new-instance v0, Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardConfiguration;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/card/reorder/CardConfiguration;->deepCopyFrom(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/OverlappingSolution;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->hasPerfectDragResult()Z

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_54

    const-string v2, "find(), isOverlapping, overlappingSolution="

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n solution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/CardConfiguration;->print()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", hasPerfectDragResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LCR_OverlappingSolution"

    invoke-static {v2, p0, v3}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_54
    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_5c

    invoke-virtual {p2, v0}, Lcom/android/launcher3/card/reorder/CardConfiguration;->deepCopyFrom(Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    goto :goto_8f

    :cond_5c
    if-eqz p0, :cond_8f

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardNeighbor;->getPerfectDragResult()[I

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v3, p0, v2

    aput v3, v0, v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v0

    aget v3, p0, v1

    aput v3, v0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v0

    aget v3, p0, v2

    aput v3, v0, v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object p1

    aget v0, p0, v1

    aput v0, p1, v1

    aget p1, p0, v2

    iput p1, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget p0, p0, v1

    iput p0, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :cond_8f
    :goto_8f
    return v1
.end method
