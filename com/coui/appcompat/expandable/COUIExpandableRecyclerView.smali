.class public Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;
.super Landroidx/recyclerview/widget/COUIRecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$Adapter;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;,
        Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

.field public b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

.field public c:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;

.field public d:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;

.field public e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;

.field public f:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/COUIRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)Z
    .registers 15

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object p2

    iget-object v0, p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v3, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    invoke-interface {v1, v3, v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getChildId(II)J

    move-result-wide v0

    goto :goto_20

    :cond_18
    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    invoke-interface {v1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v0

    :goto_20
    move-wide v8, v0

    iget-object v0, p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v1, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->d:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v1, v10, :cond_1ca

    iget-object v3, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->c:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;

    if-eqz v3, :cond_3c

    iget v6, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    move-object v4, p0

    move-object v5, p1

    move-wide v7, v8

    invoke-interface/range {v3 .. v8}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;->a(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b()V

    return v2

    :cond_3c
    iget-object p1, p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz p1, :cond_42

    move p1, v2

    goto :goto_43

    :cond_42
    move p1, v11

    :goto_43
    const/4 v0, -0x1

    if-eqz p1, :cond_ef

    iget-object p1, p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, p1, v0, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a(IIII)Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e(Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v3

    invoke-virtual {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b()V

    if-eqz v3, :cond_6d

    iget-object v0, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v4, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v4, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->c:I

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    if-eqz v0, :cond_9c

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v4, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    iget-object v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-lt v0, v4, :cond_9c

    iget-object v0, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget-object v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11, v11}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object v0, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget-object v1, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->onGroupCollapsed(I)V

    goto :goto_cf

    :cond_9c
    invoke-virtual {v1, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v0

    iget-boolean v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    if-eqz v4, :cond_ba

    iget-boolean v5, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    if-eqz v5, :cond_ba

    iput-boolean v11, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    if-eqz v3, :cond_cf

    iget-object v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    if-eqz v4, :cond_cf

    iget-object v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->e:I

    invoke-virtual {v1, v4, v3, p1, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->b(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V

    goto :goto_cf

    :cond_ba
    if-eqz v4, :cond_d1

    iget-boolean v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    if-nez v4, :cond_d1

    if-eqz v3, :cond_cd

    iget-object v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->d:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;

    iget-object v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    iget v5, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->c:I

    invoke-virtual {v1, v4, v3, p1, v5}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->d(Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$DummyView;III)V

    :cond_cd
    iput-boolean v2, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    :cond_cf
    :goto_cf
    move v0, v11

    goto :goto_d6

    :cond_d1
    iput-boolean v2, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    iput-boolean v11, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    move v0, v2

    :goto_d6
    if-nez v0, :cond_da

    goto/16 :goto_1da

    :cond_da
    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-virtual {v0, v2, v2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    invoke-virtual {v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v11, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;

    if-eqz p0, :cond_1da

    invoke-interface {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;->a(I)V

    goto/16 :goto_1da

    :cond_ef
    iget-object p1, p2, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget p1, p1, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, p1, v0, v0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a(IIII)Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e(Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;

    move-result-object v4

    invoke-virtual {v3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b()V

    if-nez v4, :cond_107

    goto/16 :goto_1b8

    :cond_107
    iget-object v3, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    if-ltz v3, :cond_1c2

    iget v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h:I

    if-nez v3, :cond_113

    goto/16 :goto_1b8

    :cond_113
    iget-object v3, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    if-eqz v3, :cond_119

    goto/16 :goto_1b8

    :cond_119
    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->h:I

    if-lt v3, v5, :cond_13d

    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget-object v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->c(I)Z

    iget v3, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    if-le v3, v5, :cond_13d

    sub-int/2addr v3, v2

    iput v3, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    :cond_13d
    iget-object v3, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget-object v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    invoke-interface {v5, v3}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupId(I)J

    move-result-wide v5

    invoke-static {v0, v0, v3, v5, v6}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a(IIIJ)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    move-result-object v0

    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    iget-object v5, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->a:Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;

    iget v5, v5, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->c:I

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_187

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v5, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v6, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->j:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-lt v3, v5, :cond_187

    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    iget v4, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v11, v11}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v4, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-interface {v3, v4}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->onGroupExpanded(I)V

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->a:I

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1b8

    :cond_187
    iget v3, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f(I)Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;

    move-result-object v3

    iget-boolean v5, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    if-eqz v5, :cond_197

    iget-boolean v5, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    if-eqz v5, :cond_197

    move v3, v11

    goto :goto_19c

    :cond_197
    iput-boolean v2, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->a:Z

    iput-boolean v2, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupInfo;->b:Z

    move v3, v2

    :goto_19c
    if-nez v3, :cond_19f

    goto :goto_1b8

    :cond_19f
    iget-object v3, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    iget v4, v4, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->c:I

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v1, v11, v11}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    invoke-virtual {v1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v11, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    iget-object v1, v1, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    iget v0, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    invoke-interface {v1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->onGroupExpanded(I)V

    move v11, v2

    :goto_1b8
    if-eqz v11, :cond_1da

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->f:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;

    if-eqz p0, :cond_1da

    invoke-interface {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;->a(I)V

    goto :goto_1da

    :cond_1c2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Need group"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1ca
    iget-object v3, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->d:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;

    if-eqz v3, :cond_1d9

    iget v6, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->a:I

    iget v7, v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerPosition;->b:I

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v3 .. v9}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;->a(Landroidx/recyclerview/widget/COUIRecyclerView;Landroid/view/View;IIJ)Z

    move-result p0

    return p0

    :cond_1d9
    move v2, v11

    :cond_1da
    :goto_1da
    invoke-virtual {p2}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$PositionMetadata;->b()V

    return v2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    if-eqz p0, :cond_43

    iget-object p1, p1, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_43

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    if-nez v0, :cond_23

    goto :goto_43

    :cond_23
    invoke-interface {v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;->getGroupCount()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2d
    if-ltz v1, :cond_3d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;

    iget v3, v3, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector$GroupMetadata;->c:I

    if-lt v3, v0, :cond_3a

    goto :goto_43

    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    :cond_3d
    iput-object p1, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->i(ZZ)V

    :cond_43
    :goto_43
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;->f:Ljava/util/ArrayList;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    invoke-direct {v1, v0, p0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 2

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "adapter instansof COUIExpandableRecyclerAdapter"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAdapter(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;

    new-instance v0, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;)V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->b:Lcom/coui/appcompat/expandable/ExpandableRecyclerConnector;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not set ItemAnimator"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    instance-of v0, p1, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/COUILinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only vertical orientation"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "only COUILinearLayoutManager"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnChildClickListener(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->d:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->c:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->e:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;->f:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$OnGroupExpandListener;

    return-void
.end method
