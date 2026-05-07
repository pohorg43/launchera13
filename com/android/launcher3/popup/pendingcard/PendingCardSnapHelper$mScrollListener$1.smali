.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;-><init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private mScrolled:Z

.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMScrolled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->mScrolled:Z

    return p0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_16

    iget-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->mScrolled:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->mScrolled:Z

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper;->snapToTargetExistingView()V

    :cond_16
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_9

    if-eqz p3, :cond_c

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->mScrolled:Z

    :cond_c
    return-void
.end method

.method public final setMScrolled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardSnapHelper$mScrollListener$1;->mScrolled:Z

    return-void
.end method
