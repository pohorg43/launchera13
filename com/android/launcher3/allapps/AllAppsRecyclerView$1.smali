.class Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->this$0:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->access$000(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;->onChanged()V

    return-void
.end method
