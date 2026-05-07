.class Lcom/android/launcher/views/VHPageScrollRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/views/VHPageScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/VHPageScrollRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/VHPageScrollRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;->this$0:Lcom/android/launcher/views/VHPageScrollRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_b

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;->this$0:Lcom/android/launcher/views/VHPageScrollRecyclerView;

    invoke-static {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->access$000(Lcom/android/launcher/views/VHPageScrollRecyclerView;)V

    goto :goto_1f

    :cond_b
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1f

    iget-object p1, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;->this$0:Lcom/android/launcher/views/VHPageScrollRecyclerView;

    invoke-static {p1}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->access$100(Lcom/android/launcher/views/VHPageScrollRecyclerView;)Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/android/launcher/views/VHPageScrollRecyclerView$1;->this$0:Lcom/android/launcher/views/VHPageScrollRecyclerView;

    invoke-static {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView;->access$100(Lcom/android/launcher/views/VHPageScrollRecyclerView;)Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher/views/VHPageScrollRecyclerView$OnScrollDraggingStateListener;->onScrollDragging()V

    :cond_1f
    :goto_1f
    return-void
.end method
