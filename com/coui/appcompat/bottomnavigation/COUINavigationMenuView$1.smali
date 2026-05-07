.class Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->r:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_17
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-boolean v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->o:Z

    if-eqz v1, :cond_5c

    if-eqz p1, :cond_5c

    invoke-virtual {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-ne v0, p1, :cond_5c

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->j:I

    if-eq p1, v0, :cond_5c

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    aget-object v2, v1, p1

    if-eqz v2, :cond_5c

    aget-object v0, v1, v0

    if-nez v0, :cond_3c

    goto :goto_5c

    :cond_3c
    aget-object p1, v1, p1

    iget-object v0, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_45

    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b()V

    :cond_45
    iget-object p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->j:I

    aget-object p0, p1, p0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_57

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b()V

    :cond_57
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5c
    :goto_5c
    return-void
.end method
