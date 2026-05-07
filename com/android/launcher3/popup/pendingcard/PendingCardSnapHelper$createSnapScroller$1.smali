.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateTimeForScrolling(I)I
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->getMillisecondsPreInchBase(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const p1, 0x3f4ccccd  # 0.8f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    const-string/jumbo v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-static {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->access$getMRecyclerView$p(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-nez p2, :cond_1a

    return-void

    :cond_1a
    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$createSnapScroller$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-static {p2}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->access$getMRecyclerView$p(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "mRecyclerView!!.layoutManager!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->access$calculateDistanceToFinalSnap(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v0, 0x1

    aget p1, p1, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result p0

    if-lez p0, :cond_58

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p3, p2, p1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_58
    return-void
.end method
