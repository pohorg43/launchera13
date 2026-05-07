.class public abstract Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$Adapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/expandable/COUIExpandableRecyclerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-direct {v0}, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$Adapter;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    return-void
.end method


# virtual methods
.method public b(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$Adapter;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$Adapter;->a:Lcom/coui/appcompat/expandable/COUIExpandableRecyclerView$COUIRecyclerViewDataObserver;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public getChildId(II)J
    .registers 3

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildType(II)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getCombinedChildId(JJ)J
    .registers 7

    const-wide/32 v0, 0x7fffffff

    and-long p0, p1, v0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    const-wide/high16 v0, -0x8000000000000000L

    or-long/2addr p0, v0

    const-wide/16 v0, -0x1

    and-long p2, p3, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public getCombinedGroupId(J)J
    .registers 5

    const-wide/32 v0, 0x7fffffff

    and-long p0, p1, v0

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public getGroupId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getGroupTypeCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isChildSelectable(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onGroupCollapsed(I)V
    .registers 2

    return-void
.end method

.method public onGroupExpanded(I)V
    .registers 2

    return-void
.end method
