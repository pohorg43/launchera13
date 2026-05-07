.class Lcom/coui/appcompat/expandable/COUIExpandableListView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/expandable/COUIExpandableListView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/expandable/COUIExpandableListView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    iget-object v1, v0, Lcom/coui/appcompat/expandable/COUIExpandableListView;->a:Landroid/widget/ExpandableListView$OnGroupClickListener;

    const/4 v0, 0x1

    if-eqz v1, :cond_11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p2

    if-nez p2, :cond_5d

    :cond_11
    iget-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p2}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide p4

    invoke-static {p4, p5}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result p2

    const/4 p4, 0x0

    if-ne p2, p3, :cond_47

    iget-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p2}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result p5

    sub-int/2addr p5, v0

    invoke-virtual {p2, p5}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object p5, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p5}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result p5

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getListPaddingBottom()I

    move-result v1

    sub-int/2addr p5, v1

    if-lt p2, p5, :cond_47

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p2

    if-nez p2, :cond_47

    return p4

    :cond_47
    iget-object p2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p2, p4}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->collapseGroup(I)Z

    goto :goto_5d

    :cond_58
    iget-object p0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$1;->a:Lcom/coui/appcompat/expandable/COUIExpandableListView;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/expandable/COUIExpandableListView;->expandGroup(I)Z

    :cond_5d
    :goto_5d
    return v0
.end method
