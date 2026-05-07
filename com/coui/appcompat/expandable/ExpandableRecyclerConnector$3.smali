.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;
.super Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$EndAnimatorListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;II)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->b:I

    iput p4, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    if-eqz p1, :cond_30

    iget-object p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->b:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->a(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;I)V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iget v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->c:I

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->c:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_30
    return-void
.end method
