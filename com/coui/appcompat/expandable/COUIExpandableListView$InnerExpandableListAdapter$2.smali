.class Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;
.super Lcom/coui/appcompat/expandable/COUIExpandableListView$EndAnimatorListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

.field public final synthetic b:I

.field public final synthetic c:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;I)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->c:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    iput p3, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$EndAnimatorListener;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    iget-object p1, p1, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->c:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    iget v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->b:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->a(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;I)V

    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->c:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    iget-object p1, p1, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    iget v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->b:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->a(Lcom/coui/appcompat/expandable/COUIExpandableListView;I)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
