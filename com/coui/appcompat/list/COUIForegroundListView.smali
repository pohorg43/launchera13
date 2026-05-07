.class public Lcom/coui/appcompat/list/COUIForegroundListView;
.super Landroid/widget/ListView;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public d:Landroid/view/MenuItem;

.field public e:Landroid/graphics/Paint;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/list/COUIForegroundListView;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/16 v1, 0x15

    const/16 v2, 0x16

    if-ne v0, p1, :cond_18

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    iput v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    goto :goto_1c

    :cond_18
    iput v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    iput v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    :goto_1c
    return-void
.end method

.method public isInTouchMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->e:Landroid/graphics/Paint;

    const-string v0, " "

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_19

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_1c

    :cond_19
    const/4 v1, 0x0

    check-cast v0, Landroidx/appcompat/view/menu/MenuAdapter;

    :goto_1c
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    sub-int/2addr v3, v1

    if-ltz v3, :cond_43

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_43

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    :cond_43
    iget-object v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->d:Landroid/view/MenuItem;

    if-eq v1, v2, :cond_5b

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-eqz v1, :cond_52

    iget-object v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v3, v0, v1}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_52
    iput-object v2, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->d:Landroid/view/MenuItem;

    if-eqz v2, :cond_5b

    iget-object v1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-interface {v1, v0, v2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_5b
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget v3, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->a:I

    if-ne p1, v3, :cond_16

    instance-of v1, v1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v1, :cond_16

    return v2

    :cond_16
    if-eqz v0, :cond_21

    iget v0, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->b:I

    if-ne p1, v0, :cond_21

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return v2

    :cond_21
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->c:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public setListSelectionHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/list/COUIForegroundListView;->f:Z

    return-void
.end method
