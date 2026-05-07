.class public Lcom/coui/appcompat/expandable/COUIExpandableListView;
.super Landroid/widget/ExpandableListView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/expandable/COUIExpandableListView$EndAnimatorListener;,
        Lcom/coui/appcompat/expandable/COUIExpandableListView$ExpandAnimator;,
        Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;,
        Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;,
        Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field public b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/expandable/COUIExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/expandable/COUIExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;-><init>(Lcom/coui/appcompat/expandable/COUIExpandableListView;)V

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/expandable/COUIExpandableListView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    return-void
.end method


# virtual methods
.method public collapseGroup(I)Z
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    sget v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->g:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v1

    iget-boolean v2, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    iget-boolean v4, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->d:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    if-eqz v4, :cond_1f

    iput-boolean v3, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    iget-boolean v2, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->c:Z

    iget v1, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->f:I

    invoke-virtual {v0, v4, p1, v2, v1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->b(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V

    goto :goto_39

    :cond_1f
    const/4 v4, 0x1

    if-eqz v2, :cond_34

    iget-boolean v2, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    if-nez v2, :cond_34

    iget-object v2, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->d:Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;

    if-eqz v2, :cond_34

    iget-boolean v5, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->c:Z

    iget v6, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->e:I

    invoke-virtual {v0, v2, p1, v5, v6}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->c(Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;IZI)V

    iput-boolean v4, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    goto :goto_39

    :cond_34
    iput-boolean v4, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    iput-boolean v3, v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    move v3, v4

    :goto_39
    if-eqz v3, :cond_40

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_40
    return v3
.end method

.method public expandGroup(I)Z
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    sget v1, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->g:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->d(I)Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;

    move-result-object v0

    iget-boolean v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    iget-boolean v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_18

    :cond_13
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->a:Z

    iput-boolean v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$GroupInfo;->b:Z

    :goto_18
    if-eqz v1, :cond_25

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-static {p0, p1}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;->a(Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;I)V

    :cond_25
    return v2
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-direct {v0, p1, p0}, Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;-><init>(Landroid/widget/ExpandableListAdapter;Lcom/coui/appcompat/expandable/COUIExpandableListView;)V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->b:Lcom/coui/appcompat/expandable/COUIExpandableListView$InnerExpandableListAdapter;

    invoke-super {p0, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set childDivider."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set divider"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set groupIndicator."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot set wrap_content"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->a:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method
