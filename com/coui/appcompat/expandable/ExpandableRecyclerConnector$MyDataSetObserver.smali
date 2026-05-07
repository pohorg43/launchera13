.class public Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->onItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 5

    iget-object p3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v0, 0x1

    invoke-virtual {p3, v0, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
