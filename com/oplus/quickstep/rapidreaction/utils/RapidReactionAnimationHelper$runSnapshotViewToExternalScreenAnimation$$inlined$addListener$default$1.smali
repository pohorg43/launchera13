.class public final Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->runSnapshotViewToExternalScreenAnimation(Landroid/view/View;[FLjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $callback$inlined:Ljava/util/function/Consumer;

.field public final synthetic $callback$inlined$1:Ljava/util/function/Consumer;

.field public final synthetic $snapshotView$inlined:Landroid/view/View;

.field public final synthetic $snapshotView$inlined$1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/function/Consumer;Landroid/view/View;Ljava/util/function/Consumer;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$snapshotView$inlined:Landroid/view/View;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$callback$inlined:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$snapshotView$inlined$1:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$callback$inlined$1:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$snapshotView$inlined:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->resetPivot()V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$callback$inlined:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASK_VIEW_SWITCH_TO_EXTERNAL_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->TASK_VIEW_SWITCH_TO_EXTERNAL_SCREEN:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$snapshotView$inlined$1:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$snapshotView$inlined$1:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$runSnapshotViewToExternalScreenAnimation$$inlined$addListener$default$1;->$callback$inlined$1:Ljava/util/function/Consumer;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
