.class public Lcom/coui/appcompat/poplist/DefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/content/res/ColorStateList;

.field public k:I

.field public l:F

.field public m:F

.field public n:Landroid/view/View$AccessibilityDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_content_min_width_with_checkbox:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_with_no_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_left:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->h:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_right:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->i:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->l:F

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->m:F

    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter$1;-><init>(Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->n:Landroid/view/View$AccessibilityDelegate;

    const/4 p2, 0x2

    new-array p2, p2, [I

    sget v0, Lcom/support/appcompat/R$attr;->couiPopupListWindowTextColor:I

    const/4 v1, 0x0

    aput v0, p2, v1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimaryTextOnPopup:I

    const/4 v2, 0x1

    aput v0, p2, v2

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$color;->coui_popup_list_selected_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->k:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_b4

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$color;->coui_popup_list_window_text_color_light:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:Landroid/content/res/ColorStateList;

    :cond_b4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

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
    .registers 14

    const/4 v0, 0x0

    if-nez p2, :cond_58

    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$layout;->coui_popup_list_window_item:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget v1, Lcom/support/appcompat/R$id;->popup_list_window_item_title:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$id;->content:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sget v1, Lcom/support/appcompat/R$id;->red_dot:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    sget v1, Lcom/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    if-eqz v1, :cond_51

    iget-object v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->n:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_5e

    :cond_58
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    :goto_5e
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7a

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int v5, v1, v4

    add-int/2addr v1, v4

    invoke-virtual {p2, v0, v5, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_af

    :cond_7a
    if-nez p1, :cond_8d

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v4, v1

    invoke-virtual {p2, v0, v4, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_af

    :cond_8d
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_a5

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v1, v4

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v4, v1

    invoke-virtual {p2, v0, v1, v0, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_af

    :cond_a5
    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :goto_af
    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v1, v1, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v5, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v6, v4, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    invoke-virtual {v5, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget v4, v4, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_e0

    if-eqz v4, :cond_d9

    invoke-virtual {v5, v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e3

    :cond_d9
    invoke-virtual {v5, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e3

    :cond_e0
    invoke-virtual {v5, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :goto_e3
    iget-object v2, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v3, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v4, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    const/16 v8, 0x8

    if-nez v7, :cond_119

    iget-object v7, v4, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_119

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v2, v4, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    if-ne v2, v6, :cond_115

    iget-boolean v2, v4, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    if-nez v2, :cond_115

    iget v2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_145

    :cond_115
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_145

    :cond_119
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v7, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->h:I

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, v4, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    if-ne v7, v6, :cond_12f

    iget-boolean v6, v4, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    if-nez v6, :cond_12f

    iget v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->i:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_132

    :cond_12f
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :goto_132
    iget-object v6, v4, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_142

    iget-object v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v4, v4, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_142
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_145
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v4, Lcom/support/appcompat/R$style;->couiTextAppearanceHeadline6:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->l:F

    iget v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->m:F

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object v2, p2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    iget-object p3, p3, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v4, p1, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    if-eqz v4, :cond_1a3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    if-eq v4, v5, :cond_18e

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_18e
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean p1, p1, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    if-eqz p1, :cond_1b1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->k:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b1

    :cond_1a3
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    if-ne p1, p0, :cond_1ae

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_1ae
    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_1b1
    :goto_1b1
    return-object p2
.end method
