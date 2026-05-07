.class public Lcom/coui/appcompat/toolbar/COUIActionMenuView;
.super Landroidx/appcompat/widget/ActionMenuView;
.source ""


# instance fields
.field public E:I

.field public a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field public b:Ljava/util/ArrayList;

.field public c:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroidx/appcompat/view/menu/MenuBuilder;

.field public k:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field public w:Landroid/widget/PopupWindow$OnDismissListener;

.field public x:Landroid/view/View;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_actionbar_menuview_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->overflow_button_padding_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_edge_text_menu_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_edge_icon_menu_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_icon_item_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_item_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_action_menu_text_extra_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->p:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->q:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->r:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_big_number_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->t:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_icon_top_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:I

    new-instance p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v5, Lcom/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$string;->red_dot_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->z:Ljava/lang/String;

    sget p1, Lcom/support/appcompat/R$plurals;->red_dot_with_number_description:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->E:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/graphics/Canvas;)V
    .registers 11

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_a

    if-eqz p2, :cond_8

    const/4 v0, 0x2

    goto :goto_b

    :cond_8
    move v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v2, v0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d(II)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->c(I)I

    move-result v3

    if-ne v0, v1, :cond_1e

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->p:I

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->q:I

    goto :goto_2b

    :cond_1e
    const/16 v1, 0x64

    if-ge p2, v1, :cond_27

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:I

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->r:I

    goto :goto_2b

    :cond_27
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->t:I

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->r:I

    :goto_2b
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    instance-of v6, p1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_63

    move-object v6, p1

    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_63

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    goto :goto_77

    :cond_52
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v6, p1

    int-to-float p1, v1

    sub-float/2addr v6, p1

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    int-to-float p1, p1

    add-float/2addr v6, p1

    goto :goto_8f

    :cond_63
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    :goto_77
    int-to-float v1, v2

    sub-float v1, p1, v1

    goto :goto_92

    :cond_7b
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v6, p1

    int-to-float p1, v1

    sub-float/2addr v6, p1

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    int-to-float p1, p1

    add-float/2addr v6, p1

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:I

    int-to-float p1, p1

    sub-float/2addr v6, p1

    :goto_8f
    int-to-float p1, v2

    add-float/2addr p1, v6

    move v1, v6

    :goto_92
    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:I

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    int-to-float v3, v3

    add-float/2addr v3, v2

    iput v1, v5, Landroid/graphics/RectF;->left:F

    iput v2, v5, Landroid/graphics/RectF;->top:F

    iput p1, v5, Landroid/graphics/RectF;->right:F

    iput v3, v5, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p3, v0, p2, v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;IILandroid/graphics/RectF;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 9

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const-string v0, ""

    invoke-static {p1, v0}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    move-object v0, p3

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v0, :cond_4a

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public dismissPopupMenus()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_7
    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_61

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a(Landroid/view/View;ILandroid/graphics/Canvas;)V

    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_5e

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a(Landroid/view/View;ILandroid/graphics/Canvas;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_61
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    move v0, p4

    :goto_7
    const/16 v1, 0x8

    if-ge p4, p1, :cond_1b

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_16

    goto :goto_18

    :cond_16
    add-int/lit8 v0, v0, 0x1

    :goto_18
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_1b
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iget-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    if-eqz p3, :cond_9a

    if-eqz p4, :cond_63

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_31
    if-ge p2, p1, :cond_193

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_44

    goto :goto_60

    :cond_44
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    sub-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, v5, v4, p3, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    add-int/2addr v2, p4

    sub-int/2addr p3, v2

    :goto_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    :goto_67
    if-ge p2, p1, :cond_193

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_7a

    goto :goto_97

    :cond_7a
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    add-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, p3, v4, v5, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    add-int/2addr v2, p4

    add-int/2addr v2, p3

    move p3, v2

    :goto_97
    add-int/lit8 p2, p2, 0x1

    goto :goto_67

    :cond_9a
    const/4 p3, 0x1

    if-eqz p4, :cond_119

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p3

    move v2, p3

    :goto_a3
    if-ltz p1, :cond_193

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_b6

    goto :goto_116

    :cond_b6
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p4, v5

    if-eqz v2, :cond_d0

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_cf

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_cf

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    add-int/2addr p4, v2

    :cond_cf
    move v2, p2

    :cond_d0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_108

    if-le v0, p3, :cond_108

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v5

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_102

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ff

    goto :goto_102

    :cond_ff
    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    sub-int/2addr v8, v4

    :cond_102
    :goto_102
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_116

    :cond_108
    add-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, p4, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    add-int/2addr v5, v3

    add-int/2addr v5, p4

    move p4, v5

    :goto_116
    add-int/lit8 p1, p1, -0x1

    goto :goto_a3

    :cond_119
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr p1, p3

    move v2, p3

    :goto_124
    if-ltz p1, :cond_193

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_137

    goto :goto_190

    :cond_137
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p4, v5

    if-eqz v2, :cond_151

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_150

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_150

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    sub-int/2addr p4, v2

    :cond_150
    move v2, p2

    :cond_151
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_183

    if-le v0, p3, :cond_183

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_17d

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17a

    goto :goto_17d

    :cond_17a
    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    add-int/2addr v8, v4

    :cond_17d
    :goto_17d
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_190

    :cond_183
    sub-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, p4, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    add-int/2addr v5, v3

    sub-int/2addr p4, v5

    :goto_190
    add-int/lit8 p1, p1, -0x1

    goto :goto_124

    :cond_193
    return-void
.end method

.method public onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    return-void

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v2

    if-eqz v2, :cond_24

    iput-boolean v3, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/4 v6, -0x1

    move v7, v3

    move v9, v7

    move v8, v6

    move v10, v8

    :goto_45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/16 v12, 0x8

    if-ge v7, v11, :cond_63

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v12, :cond_58

    goto :goto_60

    :cond_58
    add-int/lit8 v9, v9, 0x1

    if-ne v9, v1, :cond_5f

    move v8, v7

    move v10, v8

    goto :goto_60

    :cond_5f
    move v10, v7

    :goto_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_63
    if-eq v8, v6, :cond_a4

    iget-boolean v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    if-nez v7, :cond_a4

    if-le v9, v1, :cond_a4

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v8, :cond_a4

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_95

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_90

    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a4

    :cond_90
    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_a4

    :cond_95
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_a0

    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_a4

    :cond_a0
    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_a4
    :goto_a4
    if-eq v10, v6, :cond_df

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v8, :cond_df

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v7, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_d0

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_cb

    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_df

    :cond_cb
    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_df

    :cond_d0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_db

    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_df

    :cond_db
    iget v7, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_df
    :goto_df
    move v7, v3

    move v8, v7

    :goto_e1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_132

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    add-int/2addr v14, v8

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v14, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v16

    add-int v16, v16, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v16, v16, v14

    add-int/lit8 v14, v16, 0x0

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v3, p2

    invoke-static {v3, v14, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v9, v13, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_e1

    :cond_132
    iget-boolean v3, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:Z

    if-eqz v3, :cond_185

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_172

    move v9, v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_13f
    if-ge v4, v3, :cond_152

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v12, :cond_14c

    goto :goto_14f

    :cond_14c
    add-int/lit8 v7, v7, 0x1

    move v9, v4

    :goto_14f
    add-int/lit8 v4, v4, 0x1

    goto :goto_13f

    :cond_152
    sub-int/2addr v7, v1

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v8

    if-eq v9, v6, :cond_170

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_170

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_170

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    add-int/2addr v7, v1

    :cond_170
    move v4, v7

    goto :goto_173

    :cond_172
    const/4 v4, 0x0

    :goto_173
    if-eqz v2, :cond_185

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_185
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 13
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p1, :cond_d4

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_d4

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto/16 :goto_d4

    :cond_32
    const/4 p1, 0x0

    move v0, p1

    :goto_34
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b3

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    new-instance v10, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6b

    :cond_69
    const-string v1, ""

    :goto_6b
    move-object v5, v1

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v7

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a2

    :cond_a1
    const/4 v1, -0x1

    :goto_a2
    move v8, v1

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_b3
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/PopupWindow;->update(II)V

    :cond_d4
    :goto_d4
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->w:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 12

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1a

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    return v1

    :cond_1a
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2d
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_ac

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    new-instance v10, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_64

    :cond_62
    const-string v0, ""

    :goto_64
    move-object v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v6

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v7

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9b

    :cond_9a
    const/4 v0, -0x1

    :goto_9b
    move v8, v0

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_ac
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_c2
    return v1
.end method
