.class public Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/AttributeSet;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->IgnoreWindowInsetsFrameLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsLeft:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    sget v0, Lcom/support/appcompat/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    sget v0, Lcom/support/appcompat/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsRight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    sget v0, Lcom/support/appcompat/R$styleable;->IgnoreWindowInsetsFrameLayout_ignoreWindowInsetsBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_34
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_12

    :cond_7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->e:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_12
    iget-boolean v2, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_23

    :cond_18
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->f:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_23
    iget-boolean v3, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    if-eqz v3, :cond_29

    move v3, v1

    goto :goto_34

    :cond_29
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->g:I

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_34
    iget-boolean v4, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    if-eqz v4, :cond_3a

    move v4, v1

    goto :goto_45

    :cond_3a
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->h:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_45
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iput v1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->e:I

    iput v1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->f:I

    iput v1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->g:I

    iput v1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->h:I

    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoreWindowInsetsBottom(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->d:Z

    return-void
.end method

.method public setIgnoreWindowInsetsLeft(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->a:Z

    return-void
.end method

.method public setIgnoreWindowInsetsRight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->c:Z

    return-void
.end method

.method public setIgnoreWindowInsetsTop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->b:Z

    return-void
.end method

.method public setWindowInsetsBottomOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->h:I

    return-void
.end method

.method public setWindowInsetsLeftOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->e:I

    return-void
.end method

.method public setWindowInsetsRightOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->g:I

    return-void
.end method

.method public setWindowInsetsTopOffset(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;->f:I

    return-void
.end method
