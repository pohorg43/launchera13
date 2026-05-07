.class public Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MaxCheckedListener;,
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$MultiChoiceItemClickListener;,
        Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:[Ljava/lang/CharSequence;

.field public c:[Ljava/lang/CharSequence;

.field public d:I

.field public e:Z

.field public f:[Z

.field public g:[Z

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[ZZ)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->a:Landroid/content/Context;

    iput p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->d:I

    iput-object p3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->c:[Ljava/lang/CharSequence;

    iput-boolean p6, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->e:Z

    array-length p1, p3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    const/4 p1, 0x0

    if-eqz p5, :cond_25

    move p2, p1

    :goto_16
    array-length p3, p5

    if-ge p2, p3, :cond_25

    iget-object p3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    array-length p4, p3

    if-ge p2, p4, :cond_25

    aget-boolean p4, p5, p2

    aput-boolean p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    :cond_25
    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    array-length p2, p2

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->g:[Z

    iput p1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->h:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->b:[Ljava/lang/CharSequence;

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

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->b:[Ljava/lang/CharSequence;

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

.method public getItemViewType(I)I
    .registers 2

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v0, 0x0

    if-nez p2, :cond_81

    new-instance p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->d:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$id;->text_layout:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->a:Landroid/widget/LinearLayout;

    const v1, 0x1020014

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->e:Z

    if-eqz v1, :cond_42

    sget v1, Lcom/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->d:Lcom/coui/appcompat/checkbox/COUICheckBox;

    goto :goto_56

    :cond_42
    sget v1, Lcom/support/appcompat/R$id;->radio_layout:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->e:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/appcompat/R$id;->radio_button:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->f:Landroid/widget/RadioButton;

    :goto_56
    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->g:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_7d

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->e:Z

    if-eqz v1, :cond_70

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->d:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_75

    :cond_70
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->f:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :goto_75
    new-instance v1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$1;-><init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7d
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_8a

    :cond_81
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    :goto_8a
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->e:Z

    if-eqz v1, :cond_a5

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_96

    const/4 v1, 0x2

    goto :goto_97

    :cond_96
    move v1, v0

    :goto_97
    iget-object v2, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->d:Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    new-instance v1, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$2;-><init>(Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;I)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ae

    :cond_a5
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->f:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->f:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_ae
    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->b:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez v1, :cond_b5

    move-object v1, v2

    goto :goto_b7

    :cond_b5
    aget-object v1, v1, p1

    :goto_b7
    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->c:[Ljava/lang/CharSequence;

    if-nez v3, :cond_bc

    goto :goto_c2

    :cond_bc
    array-length v4, v3

    if-lt p1, v4, :cond_c0

    goto :goto_c2

    :cond_c0
    aget-object v2, v3, p1

    :goto_c2
    iget-object v3, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_df

    :cond_d5
    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_df
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->e:Z

    if-nez v1, :cond_129

    iget v1, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->d:I

    sget v2, Lcom/support/appcompat/R$layout;->coui_select_dialog_singlechoice:I

    if-ne v1, v2, :cond_129

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_f2

    goto :goto_f3

    :cond_f2
    move v2, v0

    :goto_f3
    if-eqz v2, :cond_101

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->alert_dialog_single_list_last_item_padding_bottom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_101
    iget-object p0, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->a:Landroid/widget/LinearLayout;

    if-nez p0, :cond_106

    goto :goto_115

    :cond_106
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_115
    iget-object p0, p2, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter$ViewHolder;->e:Landroid/widget/FrameLayout;

    if-nez p0, :cond_11a

    goto :goto_129

    :cond_11a
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_129
    :goto_129
    return-object p3
.end method
