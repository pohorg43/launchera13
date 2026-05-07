.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 7

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_b

    goto :goto_38

    :cond_b
    iget v1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    iput v1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->j:I

    move v1, v0

    :goto_10
    iget-object v2, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    iget-object v2, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne v2, v3, :cond_35

    iput v1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    goto :goto_38

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;

    const/4 v1, 0x1

    if-eqz p1, :cond_53

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getSelectedItemId()I

    move-result v2

    if-ne p1, v2, :cond_53

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;

    invoke-interface {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    return v1

    :cond_53
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;

    if-eqz p0, :cond_60

    invoke-interface {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_60

    move v0, v1

    :cond_60
    return v0
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
