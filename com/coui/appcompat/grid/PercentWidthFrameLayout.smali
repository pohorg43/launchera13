.class public Lcom/coui/appcompat/grid/PercentWidthFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->b:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->c:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->g:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->h:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_gridNumber:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->a:I

    sget v0, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_specialFlag:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->f:I

    sget v0, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_percentIndentEnabled:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->c:Z

    sget p3, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_percentMode:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_underParent:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->g:Z

    sget p3, Lcom/support/appcompat/R$styleable;->PercentWidthFrameLayout_resetPadding:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->h:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->d:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->e:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5c
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->c:Z

    if-eqz v0, :cond_da

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->a:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    if-lez v1, :cond_b2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_b2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gt v3, v4, :cond_b2

    iget v3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->b:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6b

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coui/appcompat/grid/COUIPercentUtils;->b(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coui/appcompat/grid/COUIPercentUtils;->a(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->g:Z

    const/high16 v2, 0x40000000  # 2.0f

    if-eqz v1, :cond_66

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-lez p1, :cond_66

    if-eq v1, v2, :cond_62

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_66

    :cond_62
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_66
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_da

    :cond_6b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coui/appcompat/grid/COUIPercentUtils;->b(Landroid/content/Context;)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v0, v1, v4, v5, v6}, Lcom/coui/appcompat/grid/COUIPercentUtils;->a(FIIILandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-gtz v3, :cond_92

    if-nez v3, :cond_da

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->h:Z

    if-eqz v0, :cond_da

    :cond_92
    :goto_92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_da

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v3, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    :cond_b2
    iget v0, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->b:I

    if-nez v0, :cond_da

    :goto_b6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_da

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->d:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->e:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    :cond_da
    :goto_da
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setPercentIndentEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/PercentWidthFrameLayout;->c:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
