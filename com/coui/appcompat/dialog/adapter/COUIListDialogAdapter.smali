.class public Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Landroid/content/Context;

.field public c:[Ljava/lang/CharSequence;

.field public d:[I

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget v0, Lcom/support/appcompat/R$layout;->coui_list_dialog_item:I

    iput v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->d:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    array-length p0, p0

    :goto_7
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    aget-object p0, p0, p1

    :goto_8
    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    if-nez p2, :cond_23

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;)V

    iput-object p3, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2a

    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    :goto_2a
    iget-object p3, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez v1, :cond_32

    const/4 v1, 0x0

    goto :goto_34

    :cond_32
    aget-object v1, v1, p1

    :goto_34
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->d:[I

    if-eqz p3, :cond_50

    aget p3, p3, p1

    if-lez p3, :cond_47

    iget-object v0, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_50

    :cond_47
    iget-object p3, v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$style;->DefaultDialogItemTextStyle:I

    invoke-virtual {p3, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_50
    :goto_50
    iget-object p3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_c4

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne p1, v5, :cond_af

    add-int/2addr v2, p3

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    add-int/2addr v4, p3

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_c4

    :cond_af
    if-nez p1, :cond_be

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    if-eqz p0, :cond_be

    add-int/2addr v0, p3

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    add-int/2addr v4, p3

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_c4

    :cond_be
    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_c4
    :goto_c4
    return-object p2
.end method
