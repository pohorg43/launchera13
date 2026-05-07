.class public final Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher$Companion;

.field private static final TAG:Ljava/lang/String; = "LCR_ReorderSolutionDispatcher"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mBlockSolution:Lcom/android/launcher3/card/reorder/solution/BlockSolution;

.field private mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

.field private final mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

.field private final mNoShuffleSolution:Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

.field private final mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->Companion:Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;)V
    .registers 3

    const-string v0, "mInspector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    new-instance p1, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-direct {p1}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mNoShuffleSolution:Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;-><init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    new-instance v0, Lcom/android/launcher3/card/reorder/solution/BlockSolution;

    invoke-direct {v0, p1}, Lcom/android/launcher3/card/reorder/solution/BlockSolution;-><init>(Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;)V

    iput-object v0, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mBlockSolution:Lcom/android/launcher3/card/reorder/solution/BlockSolution;

    return-void
.end method

.method private final logInSolution(Lcom/android/launcher3/card/reorder/solution/IReorderSolution;Lcom/android/launcher3/card/reorder/CardConfiguration;)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_6d

    instance-of p2, p1, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    if-eqz p2, :cond_d

    const-string p1, "Push"

    goto :goto_24

    :cond_d
    instance-of p2, p1, Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

    if-eqz p2, :cond_14

    const-string p1, "NoShuffle"

    goto :goto_24

    :cond_14
    instance-of p2, p1, Lcom/android/launcher3/card/reorder/solution/BlockSolution;

    if-eqz p2, :cond_1b

    const-string p1, "Block"

    goto :goto_24

    :cond_1b
    instance-of p1, p1, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    if-eqz p1, :cond_22

    const-string p1, "ModifyResult"

    goto :goto_24

    :cond_22
    const-string p1, ""

    :goto_24
    const-string p2, "dispatch(), "

    const-string v0, " end, dragResult="

    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResult()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "toString(this)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", dragResultSpan="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragResultSpan()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mTmpOccupied="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCR_ReorderSolutionDispatcher"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    return-void
.end method


# virtual methods
.method public final dispatch()Lcom/android/launcher3/card/reorder/CardConfiguration;
    .registers 5

    new-instance v0, Lcom/android/launcher3/card/reorder/CardConfiguration;

    invoke-direct {v0}, Lcom/android/launcher3/card/reorder/CardConfiguration;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->initSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    sget-object v1, Lcom/android/launcher3/card/reorder/CardReorderInject;->INSTANCE:Lcom/android/launcher3/card/reorder/CardReorderInject;

    iget-object v2, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->getDragView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/card/reorder/CardReorderInject;->isFolderToBig(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->logInSolution(Lcom/android/launcher3/card/reorder/solution/IReorderSolution;Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    goto :goto_2a

    :cond_29
    move-object v0, v2

    :goto_2a
    return-object v0

    :cond_2b
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mPushMechanicSolution:Lcom/android/launcher3/card/reorder/solution/PushMechanicSolution;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->logInSolution(Lcom/android/launcher3/card/reorder/solution/IReorderSolution;Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    return-object v0

    :cond_3b
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->initSolution(Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mModifyResultSolution:Lcom/android/launcher3/card/reorder/solution/ModifyResultSolution;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->logInSolution(Lcom/android/launcher3/card/reorder/solution/IReorderSolution;Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    return-object v0

    :cond_50
    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mNoShuffleSolution:Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

    iget-object v3, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mInspector:Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;->find(Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;Lcom/android/launcher3/card/reorder/CardConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->mNoShuffleSolution:Lcom/android/launcher3/card/reorder/solution/NoShuffleSolution;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/card/reorder/solution/ReorderSolutionDispatcher;->logInSolution(Lcom/android/launcher3/card/reorder/solution/IReorderSolution;Lcom/android/launcher3/card/reorder/CardConfiguration;)V

    goto :goto_61

    :cond_60
    move-object v0, v2

    :goto_61
    return-object v0
.end method
