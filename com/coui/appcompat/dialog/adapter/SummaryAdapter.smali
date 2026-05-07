.class public Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field public static final f:I


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:[Ljava/lang/CharSequence;

.field public e:[Ljava/lang/CharSequence;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/support/appcompat/R$layout;->coui_alert_dialog_summary_item:I

    sput v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->a:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->b:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->e:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

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

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

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
    .registers 10

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->f:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x1020014

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget v0, Lcom/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-nez v2, :cond_25

    move-object v2, v3

    goto :goto_27

    :cond_25
    aget-object v2, v2, p1

    :goto_27
    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->e:[Ljava/lang/CharSequence;

    if-nez v4, :cond_2c

    goto :goto_32

    :cond_2c
    array-length v5, v4

    if-lt p1, v5, :cond_30

    goto :goto_32

    :cond_30
    aget-object v3, v4, p1

    :goto_32
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_41

    const/16 p3, 0x8

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_47

    :cond_41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_47
    iget-object p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_a5

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ne p1, v4, :cond_7e

    add-int/2addr v2, p3

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_da

    :cond_7e
    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->a:Z

    if-nez p3, :cond_da

    iget-boolean p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->b:Z

    if-nez p3, :cond_da

    if-nez p1, :cond_a1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->alert_dialog_first_item_padding_top_offset:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_da

    :cond_a1
    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_da

    :cond_a5
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result p1

    if-ne p1, v5, :cond_da

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->a:Z

    if-nez p1, :cond_ce

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->b:Z

    if-nez p1, :cond_ce

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$dimen;->alert_dialog_first_item_padding_top_offset:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v2, p3

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    add-int/2addr p1, p3

    add-int/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_da

    :cond_ce
    add-int/2addr v2, p3

    invoke-virtual {p2, v1, v0, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p2, p0}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_da
    :goto_da
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
