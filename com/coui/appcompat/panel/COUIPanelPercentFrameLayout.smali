.class public Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;
.super Lcom/coui/appcompat/grid/PercentWidthFrameLayout;
.source ""


# instance fields
.field public i:I

.field public j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->j:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_23

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIPanelPercentFrameLayout:[I

    invoke-virtual {p3, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPanelPercentFrameLayout_maxPanelHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->i:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_2f

    goto :goto_31

    :cond_2f
    const/high16 p1, 0x40000000  # 2.0f

    :goto_31
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->j:F

    return-void
.end method


# virtual methods
.method public getRatio()F
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->j:F

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_13

    :cond_11
    const/high16 v0, 0x40000000  # 2.0f

    :goto_13
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->j:F

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->i:I

    if-le v1, v2, :cond_22

    if-lez v2, :cond_22

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ge v2, v1, :cond_22

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->i:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->n(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3a

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v1, v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->onMeasure(II)V

    return-void
.end method
