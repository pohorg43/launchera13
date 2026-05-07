.class public final Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/card/reorder/solution/IReorderSolution;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ModifyResultSolution"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mPushSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->Companion:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V
    .registers 3

    const-string/jumbo v0, "mPushSolution"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->mPushSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    return-void
.end method

.method private final isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    :goto_f
    const/4 v0, 0x1

    xor-int/2addr p3, v0

    const/4 v1, 0x0

    if-ltz p2, :cond_18

    if-gt p2, p0, :cond_18

    move v2, v0

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragViewLocation()[I

    move-result-object v2

    aget v2, v2, p3

    if-eq p2, v2, :cond_2d

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object p1

    aget p1, p1, p3

    add-int/2addr p2, p1

    if-gt p2, p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    return v0
.end method

.method private final modify(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)[I
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v1

    aget v1, v1, v2

    const/4 v4, 0x0

    if-gez v1, :cond_3f

    aget v1, v0, v2

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result v1

    if-eqz v1, :cond_2e

    aget p0, v0, v2

    add-int/2addr p0, v3

    aput p0, v0, v2

    goto/16 :goto_aa

    :cond_2e
    aget v1, v0, v2

    sub-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result p0

    if-eqz p0, :cond_3e

    aget p0, v0, v2

    sub-int/2addr p0, v3

    aput p0, v0, v2

    goto/16 :goto_aa

    :cond_3e
    return-object v4

    :cond_3f
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v1

    aget v1, v1, v2

    if-lez v1, :cond_66

    aget v1, v0, v2

    sub-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result v1

    if-eqz v1, :cond_56

    aget p0, v0, v2

    sub-int/2addr p0, v3

    aput p0, v0, v2

    goto :goto_aa

    :cond_56
    aget v1, v0, v2

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result p0

    if-eqz p0, :cond_65

    aget p0, v0, v2

    add-int/2addr p0, v3

    aput p0, v0, v2

    goto :goto_aa

    :cond_65
    return-object v4

    :cond_66
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDirectionVector()[I

    move-result-object v1

    aget v1, v1, v3

    if-lez v1, :cond_8d

    aget v1, v0, v3

    sub-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result v1

    if-eqz v1, :cond_7d

    aget p0, v0, v3

    sub-int/2addr p0, v3

    aput p0, v0, v3

    goto :goto_aa

    :cond_7d
    aget v1, v0, v3

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result p0

    if-eqz p0, :cond_8c

    aget p0, v0, v3

    add-int/2addr p0, v3

    aput p0, v0, v3

    goto :goto_aa

    :cond_8c
    return-object v4

    :cond_8d
    aget v1, v0, v3

    add-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result v1

    if-eqz v1, :cond_9c

    aget p0, v0, v3

    add-int/2addr p0, v3

    aput p0, v0, v3

    goto :goto_aa

    :cond_9c
    aget v1, v0, v3

    sub-int/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->isValid(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;IZ)Z

    move-result p0

    if-eqz p0, :cond_110

    aget p0, v0, v3

    sub-int/2addr p0, v3

    aput p0, v0, v3

    :goto_aa
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_e0

    const-string/jumbo p0, "modify(), dragResult="

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "toString(this)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newResult="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LCR_ModifyResultSolution"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e0
    aget p0, v0, v2

    if-ltz p0, :cond_10e

    aget p0, v0, v2

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v1

    aget v1, v1, v2

    add-int/2addr p0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    if-gt p0, v1, :cond_10e

    aget p0, v0, v3

    if-ltz p0, :cond_10e

    aget p0, v0, v3

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getSpan()[I

    move-result-object v1

    aget v1, v1, v3

    add-int/2addr p0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p1

    if-le p0, p1, :cond_10f

    :cond_10e
    move-object v0, v4

    :cond_10f
    return-object v0

    :cond_110
    return-object v4
.end method


# virtual methods
.method public find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z
    .registers 10

    const-string v0, "inspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "solution"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->modify(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)[I

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    :cond_13
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v3

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v5

    aget v6, v0, v1

    aput v6, v5, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object v5

    aget v0, v0, v4

    aput v0, v5, v4

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->mPushSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez p0, :cond_46

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object p0

    aput v2, p0, v1

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getPerformResult()[I

    move-result-object p0

    aput v3, p0, v4

    goto :goto_53

    :cond_46
    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getHasNeighbor()Z

    move-result p0

    if-eqz p0, :cond_53

    invoke-virtual {p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getNeighbor()Lcom/android/launcher3/card/reorder/CardNeighbor;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/reorder/CardNeighbor;->updateWillGoLocation(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    :cond_53
    :goto_53
    iget-boolean p0, p2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return p0
.end method
