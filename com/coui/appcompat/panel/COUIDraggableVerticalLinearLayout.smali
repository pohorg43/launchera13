.class public Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Z

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$attr;->couiDraggableVerticalLinearLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->e:F

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->f:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->g:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->h:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->i:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_panel_drag_view_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_drag_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->setDragViewByTypeArray(Landroid/content/res/TypedArray;)V

    if-eqz p2, :cond_59

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getElevation()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->e:F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->f:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->g:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->h:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->i:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setDragViewByTypeArray(Landroid/content/res/TypedArray;)V
    .registers 6

    if-eqz p1, :cond_5b

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_hasShadowNinePatchDrawable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->b:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewIcon:I

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_drag_view:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUIDraggableVerticalLinearLayout_dragViewTintColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$color;->coui_panel_drag_view_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3c
    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->b:Z

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5b

    :cond_4e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method public getDragView()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method public setDragViewDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    if-eqz p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public setDragViewDrawableTintColor(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    iget v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->d:I

    if-eq v1, p1, :cond_14

    iput p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->d:I

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->a:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method public setHasShadowNinePatchDrawable(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->b:Z

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$drawable;->coui_panel_bg_with_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    goto :goto_33

    :cond_16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->f:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->g:I

    iget v1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->h:I

    iget v2, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->i:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget p1, p0, Lcom/coui/appcompat/panel/COUIDraggableVerticalLinearLayout;->e:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    :goto_33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
