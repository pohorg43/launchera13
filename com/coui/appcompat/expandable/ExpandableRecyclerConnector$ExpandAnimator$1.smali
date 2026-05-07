.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

.field public final synthetic f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;ZIZLandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;)V
    .registers 7

    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    iput-boolean p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->a:Z

    iput p3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->b:I

    iput-boolean p4, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->c:Z

    iput-object p5, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->e:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    iget-boolean v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->b:Z

    const-string v4, ","

    const-string v5, "ExpandRecyclerConnector"

    if-nez v3, :cond_51

    iget-boolean v6, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->a:Z

    if-nez v6, :cond_51

    iget v6, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->b:I

    if-gt v1, v6, :cond_3d

    if-ge v2, v6, :cond_51

    :cond_3d
    const-string p1, "onAnimationUpdate1: "

    invoke-static {p1, v1, v4, v2, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->b:I

    invoke-static {p1, v0, v5}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_51
    if-nez v3, :cond_73

    iget-boolean v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->a:Z

    if-nez v1, :cond_73

    iget-boolean v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->c:Z

    if-eqz v1, :cond_73

    iget v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->b:I

    if-ne v1, v2, :cond_73

    const-string p1, "onAnimationUpdate2: "

    invoke-static {p1, v2, v4}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->b:I

    invoke-static {p1, v0, v5}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_73
    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->d:Landroid/view/View;

    if-nez v1, :cond_85

    const-string p1, "onAnimationUpdate4: view == null"

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_85
    if-nez v3, :cond_c2

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->a:Z

    if-eqz v2, :cond_c2

    iget-boolean v2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->c:Z

    if-eqz v2, :cond_c2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_c2

    const-string p1, "onAnimationUpdate3: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    return-void

    :cond_c2
    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->f:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->b:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->e:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    iput p1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator$1;->d:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method
