.class public Lcom/oplus/splitscreen/DividerMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupListItemMinHeight:I

.field private mPopupListItemPaddingVertical:I

.field private mPopupListPaddingVertical:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    sget p2, Lcom/android/wm/shell/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemPaddingVertical:I

    sget p2, Lcom/android/wm/shell/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemMinHeight:I

    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;IZ)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_13

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_16

    :cond_13
    const p0, 0x3e99999a  # 0.3f

    :goto_16
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .registers 4

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_b

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_e

    :cond_b
    const p0, 0x3e99999a  # 0.3f

    :goto_e
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_2f

    new-instance p2, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$layout;->split_screen_divider_menu_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/android/wm/shell/R$id;->divider_menu_item_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/wm/shell/R$id;->divider_menu_item_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_35

    :cond_2f
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;

    :goto_35
    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenuAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemMinHeight:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemPaddingVertical:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    add-int v3, v1, v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_86

    :cond_51
    if-nez p1, :cond_64

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemMinHeight:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemPaddingVertical:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_86

    :cond_64
    invoke-virtual {p0}, Lcom/oplus/splitscreen/DividerMenuAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_7c

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemMinHeight:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemPaddingVertical:I

    iget v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v2, v1

    invoke-virtual {p2, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_86

    :cond_7c
    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemMinHeight:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mPopupListItemPaddingVertical:I

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_86
    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/DividerMenuAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p3, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget v2, v2, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-direct {p0, v1, v2, v0}, Lcom/oplus/splitscreen/DividerMenuAdapter;->setIcon(Landroid/widget/ImageView;IZ)V

    iget-object p3, p3, Lcom/oplus/splitscreen/DividerMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    invoke-direct {p0, p3, p1, v0}, Lcom/oplus/splitscreen/DividerMenuAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/String;Z)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .registers 2

    iget-object p0, p0, Lcom/oplus/splitscreen/DividerMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean p0, p0, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    return p0
.end method
