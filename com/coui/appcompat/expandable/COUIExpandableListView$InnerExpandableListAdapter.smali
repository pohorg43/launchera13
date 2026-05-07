.class Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InnerExpandableListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Landroid/widget/ExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/ExpandableListAdapter;Lcom/coui/appcompat/expandable/COUIExpandableListView;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->a:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$MyDataSetObserver;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;)V

    iput-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    iget-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    if-eqz p2, :cond_2d

    invoke-interface {p2, v0}, Landroid/widget/ExpandableListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2d
    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p1, v0}, Landroid/widget/ExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;I)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    :goto_a
    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_3a

    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_34
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3a
    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V
    .registers 14

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    if-nez v0, :cond_22

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    const-wide/16 v2, 0x190

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    :cond_22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_28
    move-object v8, v0

    const/4 v1, 0x0

    iget v0, v5, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_31

    move v6, p4

    goto :goto_32

    :cond_31
    move v6, v0

    :goto_32
    const/4 v7, 0x0

    move-object v0, v8

    move v2, p3

    move v3, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;II)V

    new-instance p3, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$2;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;I)V

    invoke-virtual {v8, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V
    .registers 14

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    if-nez v0, :cond_22

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    const-wide/16 v2, 0x190

    new-instance v4, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView;JLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_28

    :cond_22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_28
    move-object v8, v0

    const/4 v1, 0x1

    iget v0, v5, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_30

    const/4 v0, 0x0

    :cond_30
    move v6, v0

    move-object v0, v8

    move v2, p3

    move v3, p2

    move-object v4, p1

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;->a(ZZILandroid/view/View;Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;II)V

    new-instance p3, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter$1;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;I)V

    invoke-virtual {v8, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    if-nez v0, :cond_15

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView$1;)V

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    return-object v0
.end method

.method public final e(II)I
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    instance-of v0, p0, Landroid/widget/HeterogeneousExpandableList;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    check-cast p0, Landroid/widget/HeterogeneousExpandableList;

    invoke-interface {p0, p1, p2}, Landroid/widget/HeterogeneousExpandableList;->getChildType(II)I

    move-result p0

    add-int/2addr p0, v1

    if-ltz p0, :cond_11

    return p0

    :cond_11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getChildType must is greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    return v1
.end method

.method public getChild(II)Ljava/lang/Object;
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1, p1}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1, p2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getChildType(II)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    if-eqz v0, :cond_b

    const/high16 p0, -0x80000000

    return p0

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e(II)I

    move-result p0

    return p0
.end method

.method public final getChildTypeCount()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    instance-of v0, p0, Landroid/widget/HeterogeneousExpandableList;

    if-eqz v0, :cond_f

    check-cast p0, Landroid/widget/HeterogeneousExpandableList;

    invoke-interface {p0}, Landroid/widget/HeterogeneousExpandableList;->getChildTypeCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x2

    return p0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 27

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v1

    iput-boolean v3, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->c:Z

    iget-boolean v1, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    if-eqz v1, :cond_1a4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->getGroupCount()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v7, v1, :cond_1d

    move v10, v9

    goto :goto_1e

    :cond_1d
    move v10, v8

    :goto_1e
    invoke-virtual/range {p0 .. p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v11

    move-object/from16 v4, p4

    instance-of v1, v4, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    const/4 v12, -0x1

    if-nez v1, :cond_3e

    new-instance v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    iget-object v2, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v2, v12, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v13, v1

    goto :goto_3f

    :cond_3e
    move-object v13, v4

    :goto_3f
    move-object v14, v13

    check-cast v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    iget-object v1, v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getDividerHeight()I

    move-result v3

    if-eqz v1, :cond_64

    iput-object v1, v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->b:Landroid/graphics/drawable/Drawable;

    iput v2, v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->c:I

    iput v3, v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->d:I

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_64
    iget-boolean v15, v11, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getChildCount()I

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v1

    const/high16 v6, 0x40000000  # 2.0f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    const/4 v4, -0x2

    if-eqz v15, :cond_99

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_99

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_9f

    :cond_99
    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getBottom()I

    move-result v1

    :goto_9f
    move v3, v1

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v7}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v2

    move v1, v8

    move/from16 v17, v1

    :goto_a9
    if-ge v1, v2, :cond_164

    invoke-virtual {v0, v7, v1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e(II)I

    move-result v4

    iget-object v6, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_c6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c6

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    goto :goto_c7

    :cond_c6
    const/4 v4, 0x0

    :goto_c7
    move-object v6, v4

    iget-object v4, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    add-int/lit8 v9, v2, -0x1

    if-ne v1, v9, :cond_d0

    const/4 v9, 0x1

    goto :goto_d1

    :cond_d0
    move v9, v8

    :goto_d1
    iget-object v8, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    move/from16 v18, v1

    move-object v1, v4

    move/from16 v19, v2

    move/from16 v2, p1

    move v4, v3

    move/from16 v3, v18

    move/from16 v20, v4

    const/4 v12, -0x2

    move v4, v9

    move v9, v5

    move-object v5, v6

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move/from16 v8, v18

    invoke-virtual {v0, v7, v8}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e(II)I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_fd

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_fd
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->e:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView$LayoutParams;

    if-nez v2, :cond_118

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v12, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_11a

    :cond_118
    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_11a
    iget v2, v2, Landroid/widget/AbsListView$LayoutParams;->height:I

    if-lez v2, :cond_125

    const/high16 v5, 0x40000000  # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_129

    :cond_125
    const/high16 v5, 0x40000000  # 2.0f

    move/from16 v2, v16

    :goto_129
    iget-object v6, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v6}, Landroid/widget/ExpandableListView;->getLayoutDirection()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutDirection(I)V

    invoke-virtual {v1, v9, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v17

    iget-object v6, v14, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_149

    add-int/lit8 v1, v2, 0x0

    move/from16 v6, v20

    if-gt v1, v6, :cond_167

    goto :goto_14b

    :cond_149
    move/from16 v6, v20

    :goto_14b
    if-eqz v15, :cond_156

    add-int/lit8 v1, v6, 0x0

    const/16 v17, 0x2

    mul-int/lit8 v1, v1, 0x2

    if-le v2, v1, :cond_156

    goto :goto_167

    :cond_156
    add-int/lit8 v1, v8, 0x1

    move/from16 v17, v2

    move v8, v4

    move v4, v12

    move/from16 v2, v19

    move v12, v3

    move v3, v6

    move v6, v5

    move v5, v9

    goto/16 :goto_a9

    :cond_164
    move v4, v8

    move/from16 v2, v17

    :cond_167
    :goto_167
    iput-object v14, v11, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->d:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    iput v2, v11, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->e:I

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_173

    move v8, v4

    goto :goto_179

    :cond_173
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_179
    iget-boolean v1, v11, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    if-eqz v1, :cond_184

    const/4 v3, 0x1

    if-eq v8, v3, :cond_184

    invoke-virtual {v0, v14, v7, v10, v2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V

    goto :goto_1a3

    :cond_184
    if-nez v1, :cond_18d

    const/4 v1, 0x2

    if-eq v8, v1, :cond_18d

    invoke-virtual {v0, v14, v7, v10, v2}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V

    goto :goto_1a3

    :cond_18d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimationView: state is no match:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIExpandableListView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a3
    return-object v13

    :cond_1a4
    move-object/from16 v4, p4

    iget-object v0, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getChildrenCount(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result p0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public hasStableIds()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0}, Landroid/widget/ExpandableListAdapter;->hasStableIds()Z

    move-result p0

    return p0
.end method

.method public isChildSelectable(II)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->f:Landroid/widget/ExpandableListAdapter;

    invoke-interface {p0, p1, p2}, Landroid/widget/ExpandableListAdapter;->isChildSelectable(II)Z

    move-result p0

    return p0
.end method
