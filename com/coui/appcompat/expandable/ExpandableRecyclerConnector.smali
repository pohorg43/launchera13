.class Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$EndAnimatorListener;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;,
        Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$AnimationViewHolder;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public final i:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

.field public k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;)V
    .registers 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h:I

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$MyDataSetObserver;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;)V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->k:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    iget-object p2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    if-eqz p2, :cond_42

    invoke-interface {p2, v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->d(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_42
    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->hasStableIds()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    invoke-interface {p1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->b(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    const/4 v1, -0x1

    iput v1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    :goto_a
    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_34
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3a
    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V
    .registers 15

    const-string v0, "collapseAnimationStart:"

    const-string v1, " ,groupPos:"

    const-string v2, " , height:"

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExpandRecyclerConnector"

    invoke-static {v0, p4, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    if-nez v0, :cond_31

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    const-wide/16 v2, 0x190

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    :cond_31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_37
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p2, v1, :cond_42

    move v4, v2

    goto :goto_44

    :cond_42
    const/4 v1, 0x0

    move v4, v1

    :goto_44
    iget v1, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4b

    move v8, p4

    goto :goto_4c

    :cond_4b
    move v8, v1

    :goto_4c
    const/4 v9, 0x0

    move-object v2, v0

    move v5, p2

    move-object v6, p1

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;II)V

    new-instance p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;

    invoke-direct {p2, p0, p1, p3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$4;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a(IIII)Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e(Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b()V

    const/4 p1, 0x0

    if-nez v0, :cond_11

    return p1

    :cond_11
    iget-object v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    if-nez v1, :cond_16

    goto :goto_2f

    :cond_16
    iget-object v2, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    invoke-virtual {p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object p1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-interface {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    const/4 p1, 0x1

    :goto_2f
    return p1
.end method

.method public final d(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V
    .registers 16

    const-string v0, "expandAnimationStart:"

    const-string v1, " ,groupPos:"

    const-string v2, " , height:"

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ExpandRecyclerConnector"

    invoke-static {v0, p4, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    if-nez v0, :cond_31

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    const-wide/16 v2, 0x190

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_37

    :cond_31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_37
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    const/4 v2, 0x0

    if-ne p2, v1, :cond_43

    move v4, v10

    goto :goto_44

    :cond_43
    move v4, v2

    :goto_44
    iget v1, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_4b

    move v8, v2

    goto :goto_4c

    :cond_4b
    move v8, v1

    :goto_4c
    move-object v2, v0

    move v5, p2

    move-object v6, p1

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;II)V

    new-instance p4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;

    invoke-direct {p4, p0, p1, p3, p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$3;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;II)V

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;
    .registers 16

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez v0, :cond_18

    iget v4, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v3, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    iget v5, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v4

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 v0, 0x0

    move v7, v0

    :goto_1a
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gt v7, v1, :cond_5a

    invoke-static {v1, v7, v3, v7}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v10, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v0, v12, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    if-le v10, v0, :cond_34

    add-int/lit8 v0, v13, 0x1

    move v7, v0

    goto :goto_58

    :cond_34
    if-ge v10, v0, :cond_3a

    add-int/lit8 v0, v13, -0x1

    move v1, v0

    goto :goto_58

    :cond_3a
    if-ne v10, v0, :cond_58

    iget v9, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    if-ne v9, v3, :cond_49

    iget v8, v12, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget v11, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-static/range {v8 .. v13}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_49
    if-ne v9, v4, :cond_57

    iget p0, v12, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget v11, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    add-int/2addr p0, v11

    add-int/lit8 v8, p0, 0x1

    invoke-static/range {v8 .. v13}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_57
    return-object v2

    :cond_58
    :goto_58
    move v0, v13

    goto :goto_1a

    :cond_5a
    iget v4, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    if-eq v4, v3, :cond_5f

    return-object v2

    :cond_5f
    if-le v7, v0, :cond_7d

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    iget v4, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    sub-int p0, v4, p0

    add-int v2, p0, v0

    iget v3, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    iget v5, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_7d
    if-ge v1, v0, :cond_99

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    iget v2, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    sub-int/2addr p0, v2

    sub-int/2addr v0, p0

    iget v1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    iget v3, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_99
    return-object v2
.end method

.method public final f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    if-nez v0, :cond_15

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public final g(II)I
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {v0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getChildType(II)I

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupTypeCount()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .registers 7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object v1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v0

    iget-object v2, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v3, v2, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p0, v0, v1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    goto :goto_2f

    :cond_1c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_33

    iget-object v3, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v4, v2, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v2, v2, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-interface {v3, v4, v2}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide v2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getCombinedChildId(JJ)J

    move-result-wide v0

    :goto_2f
    invoke-virtual {p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b()V

    return-wide v0

    :cond_33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Flat list position is of unknown type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getItemViewType(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p1

    iget-object v0, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v2, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    invoke-interface {v1, v2}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupType(I)I

    move-result v1

    goto :goto_29

    :cond_14
    iget v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    if-eqz v1, :cond_21

    const/high16 v1, -0x80000000

    goto :goto_29

    :cond_21
    iget v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v2, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g(II)I

    move-result v1

    :goto_29
    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->k:Landroid/util/SparseArray;

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b()V

    return v1
.end method

.method public h(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;
    .registers 11

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-nez v0, :cond_15

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p1

    move v4, p1

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_18
    if-gt v0, v2, :cond_52

    const/4 v1, 0x2

    invoke-static {v2, v0, v1, v0}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v1, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    if-le p1, v1, :cond_2d

    add-int/lit8 v0, v8, 0x1

    goto :goto_50

    :cond_2d
    iget v3, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    if-ge p1, v3, :cond_35

    add-int/lit8 v1, v8, -0x1

    move v2, v1

    goto :goto_50

    :cond_35
    if-ne p1, v3, :cond_41

    const/4 v4, 0x2

    iget v5, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    const/4 v6, -0x1

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_41
    if-gt p1, v1, :cond_50

    add-int/lit8 v3, v3, 0x1

    sub-int v6, p1, v3

    const/4 v4, 0x1

    iget v5, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    move v3, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_50
    :goto_50
    move v1, v8

    goto :goto_18

    :cond_52
    if-le v0, v1, :cond_66

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    sub-int v1, p1, v1

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    add-int/2addr v1, p0

    :goto_63
    move v7, v0

    move v4, v1

    goto :goto_77

    :cond_66
    if-ge v2, v1, :cond_80

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    iget p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    sub-int/2addr p0, p1

    sub-int/2addr v1, p0

    goto :goto_63

    :goto_77
    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a(IIIILcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p0

    return-object p0

    :cond_80
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown state"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(ZZ)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    iput v3, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz p2, :cond_a2

    add-int/lit8 v6, v2, -0x1

    move v7, v3

    :goto_12
    if-ltz v6, :cond_9d

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget-wide v9, v8, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->d:J

    iget v11, v8, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    iget-object v12, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    if-nez v12, :cond_25

    :cond_22
    :goto_22
    move v11, v4

    goto/16 :goto_88

    :cond_25
    invoke-interface {v12}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v13

    if-nez v13, :cond_2c

    goto :goto_22

    :cond_2c
    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v14, v9, v14

    if-nez v14, :cond_33

    goto :goto_22

    :cond_33
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x64

    add-long v14, v14, v16

    move/from16 v18, v3

    move v3, v11

    move/from16 v17, v3

    :cond_4a
    :goto_4a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    cmp-long v19, v19, v14

    if-gtz v19, :cond_22

    invoke-interface {v12, v11}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v19

    cmp-long v19, v19, v9

    if-nez v19, :cond_5b

    goto :goto_88

    :cond_5b
    if-ne v3, v13, :cond_60

    move/from16 v19, v5

    goto :goto_62

    :cond_60
    const/16 v19, 0x0

    :goto_62
    if-nez v17, :cond_67

    move/from16 v20, v5

    goto :goto_69

    :cond_67
    const/16 v20, 0x0

    :goto_69
    if-eqz v19, :cond_6e

    if-eqz v20, :cond_6e

    goto :goto_22

    :cond_6e
    if-nez v20, :cond_82

    if-eqz v18, :cond_75

    if-nez v19, :cond_75

    goto :goto_82

    :cond_75
    if-nez v19, :cond_7b

    if-nez v18, :cond_4a

    if-nez v20, :cond_4a

    :cond_7b
    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v5

    move/from16 v11, v17

    goto :goto_4a

    :cond_82
    :goto_82
    add-int/lit8 v3, v3, 0x1

    move v11, v3

    const/16 v18, 0x0

    goto :goto_4a

    :goto_88
    iget v3, v8, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    if-eq v11, v3, :cond_98

    if-ne v11, v4, :cond_93

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_93
    iput v11, v8, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    if-nez v7, :cond_98

    move v7, v5

    :cond_98
    add-int/lit8 v6, v6, -0x1

    const/4 v3, 0x0

    goto/16 :goto_12

    :cond_9d
    if-eqz v7, :cond_a2

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_a2
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_a6
    if-ge v3, v2, :cond_e1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v8, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    if-eq v8, v4, :cond_b9

    if-eqz p1, :cond_b5

    goto :goto_b9

    :cond_b5
    iget v9, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    sub-int/2addr v8, v9

    goto :goto_cb

    :cond_b9
    :goto_b9
    iget v8, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-virtual {v0, v8}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    if-eqz v9, :cond_c5

    move v8, v5

    goto :goto_cb

    :cond_c5
    iget-object v9, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {v9, v8}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result v8

    :goto_cb
    iget v9, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g:I

    add-int/2addr v9, v8

    iput v9, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g:I

    iget v9, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    sub-int v6, v9, v6

    add-int v6, v6, v16

    iput v6, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    add-int/2addr v6, v8

    iput v6, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    add-int/lit8 v3, v3, 0x1

    move/from16 v16, v6

    move v6, v9

    goto :goto_a6

    :cond_e1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v3

    iget-object v4, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    invoke-virtual {v0, v4}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v5

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v8, v6, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    const/4 v9, 0x2

    const/4 v11, 0x0

    if-ne v8, v9, :cond_38

    iget-object v5, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object v6, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz v6, :cond_28

    const/4 v10, 0x1

    goto :goto_29

    :cond_28
    move v10, v11

    :goto_29
    invoke-interface {v5, v4, v10, v1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->c(IZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;

    invoke-direct {v4, v0, v2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$1;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1b4

    :cond_38
    iget-boolean v12, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    if-eqz v12, :cond_18a

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    iget-object v6, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-boolean v6, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    iget-object v8, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    const/4 v12, -0x1

    if-lez v8, :cond_64

    iget-object v13, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v13

    add-int/2addr v8, v12

    invoke-virtual {v13, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_65

    :cond_64
    move v8, v11

    :goto_65
    iget-object v13, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    const/high16 v14, 0x40000000  # 2.0f

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static {v11, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    const/4 v7, -0x2

    if-eqz v6, :cond_93

    iget-object v10, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v7, :cond_93

    iget-object v10, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_99

    :cond_93
    iget-object v10, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getBottom()I

    move-result v10

    :goto_99
    iget-object v9, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {v9, v4}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getChildrenCount(I)I

    move-result v9

    move v14, v11

    move/from16 v16, v14

    :goto_a2
    if-ge v14, v9, :cond_14a

    invoke-virtual {v0, v4, v14}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g(II)I

    move-result v7

    iget-object v12, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c:Landroid/util/SparseArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_bf

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_bf

    invoke-interface {v7, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_c0

    :cond_bf
    const/4 v7, 0x0

    :goto_c0
    if-nez v7, :cond_ce

    iget-object v7, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object v12, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v0, v4, v14}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g(II)I

    move-result v11

    invoke-interface {v7, v12, v11}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    :cond_ce
    invoke-virtual {v0, v4, v14}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->g(II)I

    move-result v11

    iget-object v12, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    if-nez v12, :cond_e1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_e1
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v9

    iget-object v9, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d:Landroid/util/SparseArray;

    invoke-virtual {v9, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v9, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v11, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    const/4 v12, 0x0

    invoke-interface {v11, v4, v14, v12, v7}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->e(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_106

    new-instance v7, Landroid/widget/AbsListView$LayoutParams;

    move/from16 v17, v15

    const/4 v11, -0x2

    const/4 v15, -0x1

    invoke-direct {v7, v15, v11, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10a

    :cond_106
    move/from16 v17, v15

    const/4 v11, -0x2

    const/4 v15, -0x1

    :goto_10a
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v7, :cond_115

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_117

    :cond_115
    move/from16 v7, v17

    :goto_117
    iget-object v11, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {v9, v13, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v7, v7, v16

    iget-object v11, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;->a:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v6, :cond_134

    add-int v9, v7, v8

    if-gt v9, v10, :cond_14d

    :cond_134
    if-eqz v6, :cond_13d

    sub-int v9, v10, v8

    const/4 v11, 0x2

    mul-int/2addr v9, v11

    if-le v7, v9, :cond_13d

    goto :goto_14d

    :cond_13d
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v7

    move v11, v12

    move v12, v15

    move/from16 v15, v17

    move/from16 v9, v18

    const/4 v7, -0x2

    goto/16 :goto_a2

    :cond_14a
    move v12, v11

    move/from16 v7, v16

    :cond_14d
    :goto_14d
    iput v7, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->c:I

    iput-object v1, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_159

    move v11, v12

    goto :goto_15f

    :cond_159
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_15f
    iget-boolean v5, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    if-eqz v5, :cond_16a

    const/4 v6, 0x1

    if-eq v11, v6, :cond_16a

    invoke-virtual {v0, v1, v2, v4, v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1b4

    :cond_16a
    if-nez v5, :cond_173

    const/4 v5, 0x2

    if-eq v11, v5, :cond_173

    invoke-virtual {v0, v1, v2, v4, v7}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_1b4

    :cond_173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder: state is no match:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExpandRecyclerConnector"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b4

    :cond_18a
    move v12, v11

    const/4 v5, 0x1

    if-ne v8, v5, :cond_1b8

    iget-object v7, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v7, v7, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->b:I

    if-ne v7, v2, :cond_196

    move v10, v5

    goto :goto_197

    :cond_196
    move v10, v12

    :goto_197
    iget-object v5, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v6, v6, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-interface {v5, v4, v6, v10, v1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->e(IIZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    iget-object v5, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object v6, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v6, v6, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-interface {v5, v4, v6}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->isChildSelectable(II)Z

    move-result v4

    if-eqz v4, :cond_1b4

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$2;

    invoke-direct {v4, v0, v2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$2;-><init>(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b4
    :goto_1b4
    invoke-virtual {v3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b()V

    return-void

    :cond_1b8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flat list position is of unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_23

    new-instance p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$AnimationViewHolder;

    new-instance p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$AnimationViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_36

    :cond_23
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->f(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    goto :goto_36

    :cond_2d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {p0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    :goto_36
    return-object p0

    :cond_37
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Flat list position is of unknown type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
