.class public Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/Button;

.field public c:Landroid/widget/Button;

.field public d:Landroid/widget/Button;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_horizontal_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_padding_top:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->l:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_padding_bottom:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->m:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_vertical_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_delete_alert_dialog_divider_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_min_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->alert_dialog_item_padding_offset:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_padding_vertical:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_horizontal_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_vertical_button_divider_vertical_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_horizontal_button_divider_vertical_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_alert_dialog_button_height:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->w:I

    iget-object p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a:Landroid/content/Context;

    sget-object p3, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout_forceVertical:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:Z

    sget p2, Lcom/support/appcompat/R$styleable;->COUIButtonBarLayout_verNegButVerPaddingOffset:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/Button;)I
    .registers 2

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {p1}, Landroid/widget/Button;->isAllCaps()Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    :goto_22
    float-to-int p0, p0

    return p0

    :cond_24
    invoke-virtual {p1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    goto :goto_22

    :cond_35
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x1

    :cond_b
    return p0
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    if-nez v0, :cond_7d

    :cond_24
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    sget v0, Lcom/support/appcompat/R$id;->coui_dialog_button_divider_1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$id;->coui_dialog_button_divider_2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->g:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    :cond_7d
    return-void
.end method

.method public final d(Landroid/widget/Button;Ljava/lang/Boolean;)V
    .registers 7
    .param p1  # Landroid/widget/Button;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    iget v2, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->l:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->m:I

    invoke-virtual {p1, v0, v2, v0, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setMinHeight(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_28
    return-void
.end method

.method public getButtonCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c()V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1d

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    return v0
.end method

.method public onMeasure(II)V
    .registers 13

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c()V

    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:Z

    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v0, :cond_107

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_3f

    :cond_1b
    add-int/lit8 v7, v6, -0x1

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    mul-int/2addr v7, v8

    sub-int/2addr v0, v7

    div-int/2addr v0, v6

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->k:I

    mul-int/2addr v6, v4

    sub-int/2addr v0, v6

    iget-object v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result v7

    iget-object v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v8}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->a(Landroid/widget/Button;)I

    move-result v8

    if-gt v6, v0, :cond_41

    if-gt v7, v0, :cond_41

    if-le v8, v0, :cond_3f

    goto :goto_41

    :cond_3f
    :goto_3f
    move v0, v5

    goto :goto_42

    :cond_41
    :goto_41
    move v0, v3

    :goto_42
    if-eqz v0, :cond_46

    goto/16 :goto_107

    :cond_46
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v5

    :goto_4e
    if-eqz v3, :cond_b3

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->w:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d(Landroid/widget/Button;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->v:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0, v3}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d(Landroid/widget/Button;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d(Landroid/widget/Button;Ljava/lang/Boolean;)V

    :cond_b3
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-ne v0, v4, :cond_d7

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f3

    :cond_cc
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f3

    :cond_d7
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e9

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f3

    :cond_e9
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_f3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/16 :goto_54f

    :cond_107
    :goto_107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-ne v0, v3, :cond_10f

    move v0, v3

    goto :goto_110

    :cond_10f
    move v0, v5

    :goto_110
    if-nez v0, :cond_1e7

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x2

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v7, v8, v7, v8}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setMinHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v9, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v9, v8

    invoke-virtual {v0, v7, v9, v7, v8}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v8, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setMinHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->q:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->t:I

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v1, v3, v1, v6}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_1e7
    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:Z

    if-eqz v0, :cond_40a

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_233

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_233

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_233

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_233

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21c

    goto :goto_233

    :cond_21c
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_24a

    :cond_233
    :goto_233
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_24a
    :goto_24a
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_302

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_294

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_294

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_294

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_27b

    goto :goto_294

    :cond_27b
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_302

    :cond_294
    :goto_294
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v1, v3, v1, v6}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_302

    :cond_2ab
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2e3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2e3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2e3

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    goto :goto_2e3

    :cond_2cc
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v1, v6, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_302

    :cond_2e3
    :goto_2e3
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2ed

    move v0, v5

    goto :goto_2ef

    :cond_2ed
    iget v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:I

    :goto_2ef
    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    add-int v7, v6, v0

    invoke-virtual {v1, v3, v6, v3, v7}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_302
    :goto_302
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4b8

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_39e

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_39e

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_324

    goto/16 :goto_39e

    :cond_324
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_365

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_34c

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_34c
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_365
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_386

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v6, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v3, v6

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_386
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v4, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_39e
    :goto_39e
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3d8

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3c0

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_3c0
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_3d8
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3f8

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_3f8
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto/16 :goto_4b8

    :cond_40a
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_44a

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_43a

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_423

    goto :goto_43a

    :cond_423
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_44a

    :cond_43a
    :goto_43a
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_44a
    :goto_44a
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_49a

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_46b

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_49a

    :cond_46b
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_484

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    goto :goto_49a

    :cond_484
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_49a
    :goto_49a
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4b8

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->n:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    iget v4, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v1, v4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->r:I

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    :cond_4b8
    :goto_4b8
    iget-boolean v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:Z

    if-eqz v0, :cond_51f

    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_514

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->c:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_509

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->d:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4fe

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4fe

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4fe

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->i:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4fe

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4f3

    goto :goto_4fe

    :cond_4f3
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53b

    :cond_4fe
    :goto_4fe
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53b

    :cond_509
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53b

    :cond_514
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53b

    :cond_51f
    invoke-virtual {p0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->getButtonCount()I

    move-result v0

    if-eqz v0, :cond_531

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_53b

    :cond_531
    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_53b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->x:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_54f
    return-void
.end method

.method public setForceVertical(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->y:Z

    return-void
.end method

.method public setSingleNeuBtnPaddingBottomOffsetIfHasAboveContent(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->z:I

    return-void
.end method

.method public setVerButDividerVerMargin(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->u:I

    return-void
.end method

.method public setVerButPaddingOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->s:I

    return-void
.end method

.method public setVerButVerPadding(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->o:I

    return-void
.end method

.method public setVerNegButVerPaddingOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->p:I

    return-void
.end method

.method public setVerPaddingBottom(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->x:I

    return-void
.end method
