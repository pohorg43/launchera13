.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;
.super Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$EndAnimatorListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;I)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->c:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iput-object p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    iput p3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$EndAnimatorListener;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->c:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->b:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->a(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;I)V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->c:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->b:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c(I)Z

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_21
    return-void
.end method
