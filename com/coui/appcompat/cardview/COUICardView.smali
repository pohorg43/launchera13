.class public Lcom/coui/appcompat/cardview/COUICardView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final COLOR_BACKGROUND_ATTR:[I

.field private static final IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;


# instance fields
.field private final mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

.field private mCompatPadding:Z

.field public final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field public final mShadowBounds:Landroid/graphics/Rect;

.field public mUserSetMinHeight:I

.field public mUserSetMinWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/cardview/COUICardView;->COLOR_BACKGROUND_ATTR:[I

    new-instance v0, Lcom/coui/appcompat/cardview/CardViewApi21Impl;

    invoke-direct {v0}, Lcom/coui/appcompat/cardview/CardViewApi21Impl;-><init>()V

    sput-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/appcompat/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/coui/appcompat/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/appcompat/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/coui/appcompat/cardview/COUICardView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardview/COUICardView$1;-><init>(Lcom/coui/appcompat/cardview/COUICardView;)V

    iput-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/cardview/COUICardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$001(Lcom/coui/appcompat/cardview/COUICardView;IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static synthetic access$101(Lcom/coui/appcompat/cardview/COUICardView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public static synthetic access$201(Lcom/coui/appcompat/cardview/COUICardView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUICardView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_cardBackgroundColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_13
    move-object v5, p3

    goto :goto_4f

    :cond_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->COLOR_BACKGROUND_ATTR:[I

    invoke-virtual {p3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    invoke-virtual {p3, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p3, 0x3

    new-array p3, p3, [F

    invoke-static {v0, p3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    aget p3, p3, v0

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p3, p3, v0

    if-lez p3, :cond_40

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$color;->cardview_light_background:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    goto :goto_4a

    :cond_40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$color;->cardview_dark_background:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    :goto_4a
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_13

    :goto_4f
    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_cardCornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_cardElevation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_cardMaxElevation:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUICardView_cardUseCompatPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCompatPadding:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUICardView_cardPreventCornerOverlap:I

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mPreventCornerOverlap:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUICardView_contentPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcom/support/appcompat/R$styleable;->COUICardView_contentPaddingLeft:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcom/support/appcompat/R$styleable;->COUICardView_contentPaddingTop:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcom/support/appcompat/R$styleable;->COUICardView_contentPaddingRight:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    sget v3, Lcom/support/appcompat/R$styleable;->COUICardView_contentPaddingBottom:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    cmpl-float v0, v7, p3

    if-lez v0, :cond_a7

    move v8, v7

    goto :goto_a8

    :cond_a7
    move v8, p3

    :goto_a8
    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_android_minWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinWidth:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUICardView_android_minHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object v3, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    move-object v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/coui/appcompat/cardview/CardViewImpl;->a(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .registers 2

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->f(Lcom/coui/appcompat/cardview/CardViewDelegate;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getCardElevation()F
    .registers 2

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->j(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getContentPaddingBottom()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getMaxCardElevation()F
    .registers 2

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->h(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getPreventCornerOverlap()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mPreventCornerOverlap:Z

    return p0
.end method

.method public getRadius()F
    .registers 2

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->k(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result p0

    return p0
.end method

.method public getUseCompatPadding()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCompatPadding:Z

    return p0
.end method

.method public onMeasure(II)V
    .registers 9

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    instance-of v1, v0, Lcom/coui/appcompat/cardview/CardViewApi21Impl;

    if-nez v1, :cond_50

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_13

    if-eq v1, v2, :cond_13

    goto :goto_2b

    :cond_13
    iget-object v4, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, v4}, Lcom/coui/appcompat/cardview/CardViewImpl;->e(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_34

    if-eq v1, v2, :cond_34

    goto :goto_4c

    :cond_34
    iget-object v2, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, v2}, Lcom/coui/appcompat/cardview/CardViewImpl;->g(Lcom/coui/appcompat/cardview/CardViewDelegate;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_4c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_53

    :cond_50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_53
    return-void
.end method

.method public setCardBackgroundColor(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/cardview/CardViewImpl;->i(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/cardview/CardViewImpl;->i(Lcom/coui/appcompat/cardview/CardViewDelegate;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .registers 3

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/cardview/CardViewImpl;->l(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {p1, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->n(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .registers 3

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/cardview/CardViewImpl;->c(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinHeight:I

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinWidth:I

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .registers 5

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mPreventCornerOverlap:Z

    if-eq p1, v0, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/cardview/COUICardView;->mPreventCornerOverlap:Z

    sget-object p1, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {p1, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->d(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    :cond_d
    return-void
.end method

.method public setRadius(F)V
    .registers 3

    sget-object v0, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {v0, p0, p1}, Lcom/coui/appcompat/cardview/CardViewImpl;->b(Lcom/coui/appcompat/cardview/CardViewDelegate;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCompatPadding:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCompatPadding:Z

    sget-object p1, Lcom/coui/appcompat/cardview/COUICardView;->IMPL:Lcom/coui/appcompat/cardview/CardViewImpl;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mCardViewDelegate:Lcom/coui/appcompat/cardview/CardViewDelegate;

    invoke-interface {p1, p0}, Lcom/coui/appcompat/cardview/CardViewImpl;->m(Lcom/coui/appcompat/cardview/CardViewDelegate;)V

    :cond_d
    return-void
.end method
