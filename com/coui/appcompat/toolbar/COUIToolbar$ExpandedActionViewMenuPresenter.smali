.class Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/MenuBuilder;

.field public b:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public final synthetic c:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar;Lcom/coui/appcompat/toolbar/COUIToolbar$1;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    instance-of v0, p1, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v0, :cond_d

    check-cast p1, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p1}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    :cond_d
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->a(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .registers 9

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    const/4 v1, 0x2

    const v2, 0x800003

    if-nez v0, :cond_40

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    iget-object v3, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    iget-object v3, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    iget v3, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v3, v2

    iput v3, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iput v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    iget-object v3, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    new-instance v3, Lcom/coui/appcompat/toolbar/COUIToolbar$3;

    invoke-direct {v3, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$3;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_40
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eq p1, v0, :cond_51

    iget-object p1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_51
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object p1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eq p1, v0, :cond_82

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iput v1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object v0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_82
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->a(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->c:Lcom/coui/appcompat/toolbar/COUIToolbar;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    instance-of p1, p0, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz p1, :cond_9d

    check-cast p0, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {p0}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    :cond_9d
    return v0
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_b

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    :cond_b
    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
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
    .registers 6

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result p1

    move v1, v0

    :goto_e
    if-ge v1, p1, :cond_1f

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v2, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    if-nez v0, :cond_28

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    :cond_28
    return-void
.end method
