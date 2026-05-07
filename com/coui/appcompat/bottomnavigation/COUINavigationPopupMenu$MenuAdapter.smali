.class Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MenuAdapter"
.end annotation


# virtual methods
.method public getCount()I
    .registers 1

    sget p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->a:I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    sget p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->a:I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    const/4 p3, 0x0

    if-eqz p2, :cond_24

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu$MenuAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_13

    sget p0, Lcom/support/appcompat/R$drawable;->coui_popup_list_bottom_selector:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1e

    :cond_13
    sget p0, Lcom/support/appcompat/R$drawable;->coui_popup_list_center_selector:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1e

    :cond_19
    sget p0, Lcom/support/appcompat/R$drawable;->coui_popup_list_top_selector:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1e
    sget p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->a:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p3

    :cond_24
    sget p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationPopupMenu;->a:I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p3
.end method
