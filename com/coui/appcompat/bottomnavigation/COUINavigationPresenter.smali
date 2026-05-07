.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/MenuBuilder;

.field public b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->d:I

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;

    iget p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;->a:I

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_32

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    const/4 p0, 0x1

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_35

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_35
    :goto_35
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;-><init>()V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result p0

    iput p0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter$SavedState;->a:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 7

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a()V

    goto :goto_6f

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p1, :cond_14

    goto :goto_6f

    :cond_14
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    array-length v0, v0

    if-eq p1, v0, :cond_27

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a()V

    goto :goto_6f

    :cond_27
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    if-ge v1, p1, :cond_48

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_48
    move v1, v0

    :goto_49
    if-ge v1, p1, :cond_6f

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    aget-object v3, v2, v1

    if-nez v3, :cond_52

    goto :goto_6c

    :cond_52
    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->r:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2, v3, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->r:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    iput-boolean v0, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    :goto_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_6f
    :goto_6f
    return-void
.end method
