.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->indicatorAlphaAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$indicatorAlphaAnim$1$2;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getPinAndIndicatorOffsetX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$locateIndicatorX(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    :goto_13
    return-void
.end method
