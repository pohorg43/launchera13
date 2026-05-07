.class public Lcom/coui/appcompat/toolbar/COUIToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;,
        Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    }
.end annotation


# instance fields
.field public E:Ljava/lang/CharSequence;

.field public F:Ljava/lang/CharSequence;

.field public G:I

.field public H:I

.field public I:Z

.field public J:Z

.field public K:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field public L:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

.field public M:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public N:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

.field public O:Z

.field public P:Z

.field public Q:I

.field public R:[I

.field public S:F

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public final a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

.field public a0:F

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b0:F

.field public final c:[I

.field public final d:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

.field public final e:[I

.field public final f:Ljava/lang/Runnable;

.field public g:Landroidx/appcompat/widget/ActionMenuView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/ImageButton;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Ljava/lang/CharSequence;

.field public n:Landroid/widget/ImageButton;

.field public o:Landroid/view/View;

.field public p:Landroid/content/Context;

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/support/appcompat/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-direct {v0}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->c:[I

    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar$1;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->d:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->e:[I

    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/toolbar/COUIToolbar$2;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->f:Ljava/lang/Runnable;

    const v2, 0x800013

    iput v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->z:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v3, 0x0

    iput v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->S:F

    iput-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    if-eqz p2, :cond_44

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    :cond_44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/support/appcompat/R$styleable;->COUIToolbar:[I

    invoke-static {v3, p2, v4, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_titleType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->Q:I

    :cond_5c
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->r:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportSubtitleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->s:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_android_gravity:I

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->z:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->z:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportButtonGravity:I

    const/16 v3, 0x30

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleMargins:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginStart:I

    const/4 v3, -0x1

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_99

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    :cond_99
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginEnd:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_a3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    :cond_a3
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginTop:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_ad

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    :cond_ad
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitleMarginBottom:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_b7

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    :cond_b7
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportMaxButtonHeight:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->u:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetStart:I

    const/high16 v3, -0x80000000

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    sget v4, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetEnd:I

    invoke-virtual {p2, v4, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetLeft:I

    invoke-virtual {p2, v5, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v6, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportContentInsetRight:I

    invoke-virtual {p2, v6, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput-boolean v2, v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->h:Z

    if-eq v5, v3, :cond_e1

    iput v5, v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->e:I

    iput v5, v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    :cond_e1
    if-eq v6, v3, :cond_e7

    iput v6, v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->f:I

    iput v6, v0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    :cond_e7
    if-ne p3, v3, :cond_eb

    if-eq v4, v3, :cond_ee

    :cond_eb
    invoke-virtual {v0, p3, v4}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a(II)V

    :cond_ee
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportCollapseIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->l:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportCollapseContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->m:Ljava/lang/CharSequence;

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportTitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10d

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_10d
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportSubtitle:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11c

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_11c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->p:Landroid/content/Context;

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportPopupTheme:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setPopupTheme(I)V

    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportNavigationIcon:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_136

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_136
    sget p3, Lcom/support/appcompat/R$styleable;->COUIToolbar_supportNavigationContentDescription:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_145

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_145
    sget p3, Lcom/support/appcompat/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    sget v0, Lcom/support/appcompat/R$styleable;->COUIToolbar_minTitleTextSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    const/high16 v4, 0x41800000  # 16.0f

    if-eqz v3, :cond_168

    iget v3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p2, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b0:F

    goto :goto_16d

    :cond_168
    iget v0, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b0:F

    :goto_16d
    const/4 v0, 0x1

    new-array v3, v0, [I

    const v4, 0x1010095

    aput v4, v3, v2

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->r:I

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_18d

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v3, 0x41c00000  # 24.0f

    mul-float/2addr p3, v3

    float-to-int p3, p3

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a0:F

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_18d
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->Q:I

    if-ne p1, v0, :cond_1b5

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a0:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, p3, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a0:F

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b0:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {p1, p3, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b0:F

    :cond_1b5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->toolbar_normal_menu_padding_left:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->T:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->toolbar_normal_menu_padding_right:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->U:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->toolbar_center_title_padding_left:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->V:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->toolbar_overflow_menu_padding:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    sget p1, Lcom/support/appcompat/R$styleable;->COUIToolbar_titleCenter:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_200

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    :cond_200
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/toolbar/COUIToolbar;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private getMinimumHeightCompat()I
    .registers 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_27

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v4, v4, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eq v3, v4, :cond_24

    if-eqz p1, :cond_20

    const/16 v4, 0x8

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_27
    return-void
.end method


# virtual methods
.method public final addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    invoke-static {p2, v4}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_41

    sub-int/2addr v3, v1

    :goto_1d
    if-ltz v3, :cond_65

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v2, v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    if-nez v2, :cond_3e

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_3e

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_41
    :goto_41
    if-ge v2, v3, :cond_65

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v4, v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    if-nez v4, :cond_62

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget v1, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_62

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_65
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    :cond_b
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->e(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    goto :goto_18

    :cond_16
    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    :goto_18
    const/4 v1, 0x1

    iput v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_13

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    :cond_13
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4d

    if-eqz p2, :cond_36

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->U:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->V:I

    goto :goto_2e

    :cond_2c
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->T:I

    :goto_2e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_98

    :cond_36
    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz p1, :cond_3d

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->V:I

    goto :goto_3f

    :cond_3d
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->T:I

    :goto_3f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->U:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_98

    :cond_4d
    if-eqz p2, :cond_74

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    goto :goto_58

    :cond_56
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->U:I

    :goto_58
    if-eqz v1, :cond_5f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    goto :goto_68

    :cond_5f
    iget-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz p2, :cond_66

    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->V:I

    goto :goto_68

    :cond_66
    iget p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->T:I

    :goto_68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_98

    :cond_74
    if-eqz v1, :cond_7b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    goto :goto_84

    :cond_7b
    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz p1, :cond_82

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->V:I

    goto :goto_84

    :cond_82
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->T:I

    :goto_84
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-eqz v1, :cond_8f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_91

    :cond_8f
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->U:I

    :goto_91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_98
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_c

    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public collapseActionView()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->L:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_8
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_d
    return-void
.end method

.method public d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public dismissPopupMenus()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    :cond_7
    return-void
.end method

.method public e(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;
    .registers 2

    instance-of p0, p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p0, :cond_c

    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    return-object p0

    :cond_c
    instance-of p0, p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    if-eqz p0, :cond_18

    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Landroidx/appcompat/app/ActionBar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    return-object p0

    :cond_18
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_24

    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_24
    new-instance p0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public final ensureMenu()V
    .registers 4

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenuView()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->peekMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->L:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar;Lcom/coui/appcompat/toolbar/COUIToolbar$1;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->L:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    :cond_1f
    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->L:Lcom/coui/appcompat/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->p:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_2c
    return-void
.end method

.method public final ensureMenuView()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v0, :cond_4e

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    sget v1, Lcom/support/appcompat/R$id;->coui_toolbar_more_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setId(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->q:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->d:Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->M:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->N:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/ActionMenuView;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz v1, :cond_37

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3a

    :cond_37
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_3a
    const v1, 0x800005

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->b(Landroid/view/View;)V

    :cond_4e
    return-void
.end method

.method public final ensureNavButtonView()V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-nez v0, :cond_31

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/support/appcompat/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    sget v1, Lcom/support/appcompat/R$id;->coui_toolbar_back_view:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    sget v0, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :cond_31
    return-void
.end method

.method public f(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    return-void

    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    new-instance v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-direct {v2, p2}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    iput-boolean v1, v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->b:Z

    iput v0, v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    invoke-virtual {p0, p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final g(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    if-eq p1, v0, :cond_1a

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    if-eqz p0, :cond_16

    const/16 p0, 0x8

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->e(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/Toolbar$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->e(Landroid/view/ViewGroup$LayoutParams;)Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getChildHorizontalGravity(I)I
    .registers 5

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    invoke-static {p1, p0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v2, 0x5

    if-eq p1, v2, :cond_17

    if-ne p0, v0, :cond_16

    move v1, v2

    :cond_16
    return v1

    :cond_17
    return p1
.end method

.method public final getChildTop(Landroid/view/View;I)I
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_12

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_13

    :cond_12
    move p2, v1

    :goto_13
    iget v2, v0, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x10

    const/16 v4, 0x50

    const/16 v5, 0x30

    if-eq v2, v3, :cond_27

    if-eq v2, v5, :cond_27

    if-eq v2, v4, :cond_27

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->z:I

    and-int/lit8 v2, v2, 0x70

    :cond_27
    if-eq v2, v5, :cond_62

    if-eq v2, v4, :cond_53

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ge v3, v4, :cond_43

    move v3, v4

    goto :goto_51

    :cond_43
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_51

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_51
    :goto_51
    add-int/2addr p2, v3

    return p2

    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    :cond_62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method public getContentInsetEnd()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->g:Z

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    :goto_b
    return p0
.end method

.method public getContentInsetLeft()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    return p0
.end method

.method public getContentInsetRight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    return p0
.end method

.method public getContentInsetStart()I
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->g:Z

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    goto :goto_b

    :cond_9
    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    :goto_b
    return p0
.end method

.method public final getHorizontalMargins(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p1

    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public getIsTitleCenterStyle()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->q:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->F:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->E:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getVerticalMargins(Landroid/view/View;)I
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method public inflateMenu(I)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    instance-of p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz p1, :cond_13

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_13
    return-void
.end method

.method public final layoutChildLeft(Landroid/view/View;I[II)I
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, p2

    neg-int p2, v1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    aput p2, p3, v2

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int p3, v3, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p0

    invoke-virtual {p1, v3, p0, p3, p4}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p2, p0

    add-int/2addr p2, v3

    return p2
.end method

.method public final layoutChildRight(Landroid/view/View;I[II)I
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method public final measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 14

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    instance-of p6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz p6, :cond_39

    move-object p6, v0

    check-cast p6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean p6, p6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->b:Z

    if-eqz p6, :cond_39

    iget-boolean p6, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    if-eqz p6, :cond_39

    move v2, v4

    :cond_39
    if-eqz v2, :cond_4c

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result p3

    add-int/2addr p3, v6

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result p6

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    goto :goto_5d

    :cond_4c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, p6

    add-int/2addr v1, v6

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    :goto_5d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p3

    add-int/2addr p0, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_79

    return v6

    :cond_79
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v6

    return p0
.end method

.method public final measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    add-int/2addr v2, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p3

    add-int/2addr p0, p5

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000  # 2.0f

    if-eq p3, p4, :cond_4a

    if-ltz p6, :cond_4a

    if-eqz p3, :cond_46

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_46
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_4a
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->J:Z

    :cond_b
    iget-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->J:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1a

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-ne v0, v2, :cond_1a

    if-nez p1, :cond_1a

    iput-boolean v4, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->J:Z

    :cond_1a
    const/16 p1, 0xa

    if-eq v0, p1, :cond_21

    const/4 p1, 0x3

    if-ne v0, p1, :cond_23

    :cond_21
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->J:Z

    :cond_23
    return v4
.end method

.method public onLayout(ZIIII)V
    .registers 25

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int v10, v4, v7

    iget-object v11, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->c:[I

    aput v3, v11, v3

    aput v3, v11, v2

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getMinimumHeightCompat()I

    move-result v12

    iget-object v13, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_4b

    if-eqz v1, :cond_44

    iget-object v13, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v10, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    move v14, v13

    move v13, v6

    goto :goto_4d

    :cond_44
    iget-object v13, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v13, v6, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_4c

    :cond_4b
    move v13, v6

    :goto_4c
    move v14, v10

    :goto_4d
    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_64

    if-eqz v1, :cond_5e

    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v14, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    goto :goto_64

    :cond_5e
    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v15, v13, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    :cond_64
    :goto_64
    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_7b

    if-eqz v1, :cond_75

    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v13, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_7b

    :cond_75
    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v15, v14, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v14

    :cond_7b
    :goto_7b
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    aput v15, v11, v3

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v15

    sub-int/2addr v10, v14

    sub-int/2addr v15, v10

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v11, v2

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v13

    sub-int v13, v4, v13

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0, v14}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_bb

    if-eqz v1, :cond_b5

    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0, v14, v13, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_bb

    :cond_b5
    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0, v14, v10, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    :cond_bb
    :goto_bb
    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_d2

    if-eqz v1, :cond_cc

    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v14, v13, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_d2

    :cond_cc
    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v14, v10, v11, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    :cond_d2
    :goto_d2
    iget-object v14, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v14

    iget-object v15, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v15}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v15

    if-eqz v14, :cond_fa

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p3, v7

    iget-object v7, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v2

    const/4 v2, 0x0

    add-int/lit8 v3, v7, 0x0

    goto :goto_fd

    :cond_fa
    move/from16 p3, v7

    const/4 v3, 0x0

    :goto_fd
    if-eqz v15, :cond_117

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v6

    iget-object v6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v7

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v2

    add-int/2addr v3, v6

    goto :goto_119

    :cond_117
    move/from16 p4, v6

    :goto_119
    if-nez v14, :cond_128

    if-eqz v15, :cond_11e

    goto :goto_128

    :cond_11e
    move/from16 p5, v4

    move/from16 v17, v10

    move/from16 v16, v12

    move/from16 v18, v13

    goto/16 :goto_277

    :cond_128
    :goto_128
    if-eqz v14, :cond_12d

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    goto :goto_12f

    :cond_12d
    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    :goto_12f
    if-eqz v15, :cond_134

    iget-object v6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    goto :goto_136

    :cond_134
    iget-object v6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    :goto_136
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v14, :cond_14c

    iget-object v7, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-gtz v7, :cond_156

    :cond_14c
    if-eqz v15, :cond_15a

    iget-object v7, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    if-lez v7, :cond_15a

    :cond_156
    move/from16 p5, v4

    const/4 v7, 0x1

    goto :goto_15d

    :cond_15a
    move/from16 p5, v4

    const/4 v7, 0x0

    :goto_15d
    iget v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->z:I

    and-int/lit8 v4, v4, 0x70

    move/from16 v16, v12

    const/16 v12, 0x30

    if-eq v4, v12, :cond_1a5

    const/16 v12, 0x50

    if-eq v4, v12, :cond_197

    sub-int v4, v5, v8

    sub-int/2addr v4, v9

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget v12, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v17, v10

    iget v10, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    move/from16 v18, v13

    add-int v13, v12, v10

    if-ge v4, v13, :cond_180

    add-int v4, v12, v10

    goto :goto_195

    :cond_180
    sub-int/2addr v5, v9

    sub-int/2addr v5, v3

    sub-int/2addr v5, v4

    sub-int/2addr v5, v8

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    add-int/2addr v2, v3

    if-ge v5, v2, :cond_195

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_195
    :goto_195
    add-int/2addr v8, v4

    goto :goto_1b4

    :cond_197
    move/from16 v17, v10

    move/from16 v18, v13

    sub-int/2addr v5, v9

    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v2

    iget v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    sub-int/2addr v5, v2

    sub-int v8, v5, v3

    goto :goto_1b4

    :cond_1a5
    move/from16 v17, v10

    move/from16 v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v2

    iget v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    add-int v8, v3, v2

    :goto_1b4
    iget-boolean v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz v2, :cond_27d

    if-eqz v14, :cond_1c1

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_1c2

    :cond_1c1
    const/4 v1, 0x0

    :goto_1c2
    if-eqz v15, :cond_1cb

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    goto :goto_1cc

    :cond_1cb
    const/4 v2, 0x0

    :goto_1cc
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    aget v5, v3, v7

    aget v3, v3, v4

    sub-int/2addr v5, v3

    if-eqz v14, :cond_236

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v7, v6, v4

    iget-object v9, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v8

    if-ge v2, v1, :cond_22d

    if-lt v4, v5, :cond_220

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v6, 0x0

    aget v7, v4, v6

    const/4 v10, 0x1

    aget v4, v4, v10

    move v6, v7

    move v7, v4

    goto :goto_22d

    :cond_220
    const/4 v6, 0x0

    sub-int v7, v5, v4

    div-int/lit8 v7, v7, 0x2

    iget-object v10, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    aget v10, v10, v6

    add-int v6, v10, v7

    add-int v7, v6, v4

    :cond_22d
    :goto_22d
    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v8, v7, v9}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v9, v3

    :cond_236
    if-eqz v15, :cond_277

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    add-int v6, v4, v3

    iget-object v7, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v8

    if-ge v2, v1, :cond_272

    if-lt v3, v5, :cond_266

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    const/4 v3, 0x1

    aget v6, v1, v3

    goto :goto_272

    :cond_266
    const/4 v2, 0x0

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    aget v1, v1, v2

    add-int v4, v1, v5

    add-int v6, v4, v3

    :cond_272
    :goto_272
    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_277
    :goto_277
    move/from16 v10, v17

    :cond_279
    :goto_279
    move/from16 v13, v18

    goto/16 :goto_359

    :cond_27d
    if-eqz v1, :cond_2ef

    if-eqz v7, :cond_284

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    goto :goto_285

    :cond_284
    const/4 v1, 0x0

    :goto_285
    const/4 v2, 0x1

    aget v3, v11, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v13, v18, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v14, :cond_2bd

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v13, v2

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v8, v13, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    sub-int/2addr v2, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_2be

    :cond_2bd
    move v2, v13

    :goto_2be
    if-eqz v15, :cond_2e4

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v13, v1

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v1, v8, v13, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    sub-int v1, v13, v1

    goto :goto_2e5

    :cond_2e4
    move v1, v13

    :goto_2e5
    if-eqz v7, :cond_2ec

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v13, v1

    :cond_2ec
    move/from16 v10, v17

    goto :goto_359

    :cond_2ef
    if-eqz v7, :cond_2f4

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    goto :goto_2f5

    :cond_2f4
    const/4 v1, 0x0

    :goto_2f5
    const/4 v2, 0x0

    aget v3, v11, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v10, v3, v17

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v11, v2

    if-eqz v14, :cond_32b

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v10

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v8, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    add-int/2addr v2, v4

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v8, v3, v1

    goto :goto_32c

    :cond_32b
    move v2, v10

    :goto_32c
    if-eqz v15, :cond_350

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v1

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v8

    iget-object v4, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v8, v1, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    add-int/2addr v1, v3

    goto :goto_351

    :cond_350
    move v1, v10

    :goto_351
    if-eqz v7, :cond_279

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto/16 :goto_279

    :goto_359
    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    if-eqz v2, :cond_3b2

    const/4 v2, 0x0

    :goto_36a
    if-ge v2, v1, :cond_3af

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_39b

    instance-of v4, v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v4, :cond_39b

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v3, v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->b:Z

    if-eqz v3, :cond_39b

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetLeft()I

    move-result v4

    iget-object v5, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->e:[I

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    move v10, v3

    move/from16 v4, v16

    goto :goto_3aa

    :cond_39b
    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move/from16 v4, v16

    invoke-virtual {v0, v3, v10, v11, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v3

    move v10, v3

    :goto_3aa
    add-int/lit8 v2, v2, 0x1

    move/from16 v16, v4

    goto :goto_36a

    :cond_3af
    move/from16 v4, v16

    goto :goto_3c6

    :cond_3b2
    move/from16 v4, v16

    const/4 v2, 0x0

    :goto_3b5
    if-ge v2, v1, :cond_3c6

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v10, v11, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b5

    :cond_3c6
    :goto_3c6
    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->W:Z

    if-eqz v2, :cond_417

    const/4 v2, 0x0

    :goto_3d7
    if-ge v2, v1, :cond_429

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_407

    instance-of v5, v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    if-eqz v5, :cond_407

    check-cast v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v3, v3, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->b:Z

    if-eqz v3, :cond_407

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetRight()I

    move-result v5

    sub-int v5, p5, v5

    iget-object v6, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->e:[I

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    goto :goto_413

    :cond_407
    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v13, v11, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    :goto_413
    move v13, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d7

    :cond_417
    const/4 v2, 0x0

    :goto_418
    if-ge v2, v1, :cond_429

    iget-object v3, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3, v13, v11, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_418

    :cond_429
    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    aget v5, v11, v3

    aget v2, v11, v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v6, v2

    move v7, v5

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_43e
    if-ge v2, v3, :cond_471

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v12, v7

    iget v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v7, v6

    const/4 v6, 0x0

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    neg-int v12, v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    add-int/2addr v8, v14

    add-int/2addr v5, v8

    add-int/lit8 v2, v2, 0x1

    move v6, v7

    move v7, v12

    goto :goto_43e

    :cond_471
    const/4 v6, 0x0

    sub-int v1, p5, p4

    sub-int v1, v1, p3

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, p4

    div-int/lit8 v2, v5, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v5, v1

    if-ge v1, v10, :cond_481

    goto :goto_488

    :cond_481
    if-le v5, v13, :cond_487

    sub-int/2addr v5, v13

    sub-int v10, v1, v5

    goto :goto_488

    :cond_487
    move v10, v1

    :goto_488
    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v6

    :goto_48f
    if-ge v3, v1, :cond_4a0

    iget-object v2, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2, v10, v11, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_48f

    :cond_4a0
    iget-object v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 24

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v0, v10, :cond_10

    move v12, v10

    goto :goto_11

    :cond_10
    move v12, v11

    :goto_11
    iget-boolean v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz v0, :cond_2f3

    iget-object v14, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->c:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v15, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v16, v2, 0x0

    sub-int/2addr v1, v11

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v14, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7, v0, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->u:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    invoke-static {v11, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v12, v0

    move v6, v2

    goto :goto_7e

    :cond_7b
    move v1, v11

    move v6, v1

    move v12, v6

    :goto_7e
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v16, v2, v16

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v14, v15

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c6

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    move v15, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_c7

    :cond_c6
    move v15, v6

    :goto_c7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    move v5, v11

    move/from16 v20, v12

    move v12, v6

    move/from16 v6, v20

    :goto_d1
    if-ge v5, v15, :cond_123

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    if-nez v0, :cond_11b

    invoke-virtual {v7, v4}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto :goto_11b

    :cond_e8
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v18, v4

    move/from16 v4, p2

    move/from16 v19, v5

    move/from16 v5, v17

    move v10, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int v16, v16, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v18

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v6, v0

    move v12, v1

    goto :goto_11f

    :cond_11b
    :goto_11b
    move/from16 v19, v5

    move v10, v6

    move v6, v10

    :goto_11f
    add-int/lit8 v5, v19, 0x1

    const/4 v10, 0x1

    goto :goto_d1

    :cond_123
    move v10, v6

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    add-int v15, v0, v1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x2

    if-eqz v0, :cond_178

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->S:F

    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v15

    move v11, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    invoke-static {v12, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    move v6, v0

    move v5, v1

    goto :goto_17b

    :cond_178
    move v11, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_17b
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1ad

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    const/4 v3, 0x0

    add-int v11, v5, v15

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v13, v5

    move v5, v11

    move v11, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v12, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_1af

    :cond_1ad
    move v13, v5

    move v11, v6

    :goto_1af
    add-int v16, v16, v6

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int v2, v2, v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v12

    invoke-static {v0, v8, v1}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v12, 0x10

    invoke-static {v1, v9, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_1ee

    const/4 v1, 0x0

    :cond_1ee
    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1fc

    const/4 v1, 0x1

    goto :goto_1fd

    :cond_1fc
    const/4 v1, 0x0

    :goto_1fd
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget v3, v3, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v0, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    iget v4, v4, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v0, v4

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_295

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-nez v3, :cond_23b

    goto :goto_295

    :cond_23b
    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v3, v4, :cond_251

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    goto :goto_279

    :cond_251
    const/4 v4, 0x0

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_260
    iget-object v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_277

    iget-object v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_260

    :cond_277
    move v4, v3

    move v3, v5

    :goto_279
    if-eqz v1, :cond_288

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    sub-int/2addr v3, v4

    aput v3, v0, v2

    goto :goto_297

    :cond_288
    const/4 v1, 0x0

    const/4 v2, 0x1

    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v5, v0, v1

    aget v4, v0, v2

    sub-int/2addr v4, v3

    aput v4, v0, v2

    goto :goto_297

    :cond_295
    :goto_295
    move v2, v4

    const/4 v1, 0x0

    :goto_297
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    aget v3, v0, v2

    aget v0, v0, v1

    sub-int v8, v3, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/high16 v10, -0x80000000

    if-eqz v0, :cond_2c8

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    aget v4, v3, v2

    aget v2, v3, v1

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_2c8

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, p2

    move v5, v15

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    :cond_2c8
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->R:[I

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int/2addr v2, v1

    if-le v0, v2, :cond_2f2

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    add-int v5, v13, v15

    move-object/from16 v0, p0

    move/from16 v4, p2

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    :cond_2f2
    return-void

    :cond_2f3
    iget-object v10, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->c:[I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    const/4 v0, 0x1

    xor-int/lit8 v13, v11, 0x1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_33f

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->u:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    move v14, v2

    move v15, v3

    goto :goto_342

    :cond_33f
    const/4 v0, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_342
    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_381

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->u:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->n:Landroid/widget/ImageButton;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_381
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    add-int/lit8 v16, v2, 0x0

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3df

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v7, v0, v12}, Lcom/coui/appcompat/toolbar/COUIToolbar;->c(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->u:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v7, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    goto :goto_3e0

    :cond_3df
    const/4 v0, 0x0

    :goto_3e0
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v11, v2, v16

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v10, v13

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_425

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->o:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_425
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_458

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    :cond_458
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    move v13, v11

    const/4 v11, 0x0

    :goto_45e
    if-ge v11, v12, :cond_4a2

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget v0, v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;->a:I

    if-nez v0, :cond_49f

    invoke-virtual {v7, v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_475

    goto :goto_49f

    :cond_475
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v14, v0

    move v15, v1

    :cond_49f
    :goto_49f
    add-int/lit8 v11, v11, 0x1

    goto :goto_45e

    :cond_4a2
    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->x:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    add-int v11, v0, v1

    iget v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->w:I

    add-int v12, v0, v1

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_503

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    iget v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->S:F

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v16, v5

    move v5, v11

    move v9, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int v4, v1, v0

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    invoke-static {v15, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    move/from16 v17, v0

    move v6, v15

    move v15, v4

    goto :goto_50b

    :cond_503
    move v9, v6

    const/16 v16, 0x0

    move v6, v15

    move/from16 v15, v16

    move/from16 v17, v15

    :goto_50b
    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_54b

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v17, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v9, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/coui/appcompat/toolbar/COUIToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    add-int v17, v1, v17

    iget-object v0, v7, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_54c

    :cond_54b
    move v9, v6

    :goto_54c
    move/from16 v0, v17

    add-int/2addr v13, v15

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v6

    invoke-static {v0, v8, v1}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v1, v3, v2}, Landroidx/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_58f

    move/from16 v11, v16

    goto :goto_590

    :cond_58f
    move v11, v1

    :goto_590
    invoke-virtual {v7, v0, v11}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRtlPropertiesChanged(I)V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    if-eqz p0, :cond_49

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->g:Z

    if-ne v0, p1, :cond_11

    goto :goto_49

    :cond_11
    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->g:Z

    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->h:Z

    if-eqz p1, :cond_41

    const/high16 p1, -0x80000000

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->d:I

    if-eq v0, p1, :cond_20

    goto :goto_22

    :cond_20
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->e:I

    :goto_22
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->c:I

    if-eq v0, p1, :cond_29

    goto :goto_2b

    :cond_29
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->f:I

    :goto_2b
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    goto :goto_49

    :cond_2e
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->c:I

    if-eq v0, p1, :cond_33

    goto :goto_35

    :cond_33
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->e:I

    :goto_35
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->d:I

    if-eq v0, p1, :cond_3c

    goto :goto_3e

    :cond_3c
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->f:I

    :goto_3e
    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    goto :goto_49

    :cond_41
    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->e:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->f:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    :cond_49
    :goto_49
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->I:Z

    :cond_9
    iget-boolean v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->I:Z

    const/4 v3, 0x1

    if-nez v2, :cond_18

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    iput-boolean v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->I:Z

    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1f

    :cond_1d
    iput-boolean v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->I:Z

    :cond_1f
    return v3
.end method

.method public setCollapsible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->O:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->h:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_d

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->e:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a:I

    :cond_d
    if-eq p2, v0, :cond_13

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->f:I

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->b:I

    :cond_13
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a:Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/toolbar/COUIRtlSpacingHelper;->a(II)V

    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenuView()V

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->P:Z

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_18

    :cond_15
    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_18
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_24

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_11

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    :cond_11
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->g(Landroid/view/View;)V

    goto :goto_33

    :cond_24
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-eqz p0, :cond_3a

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    return-void
.end method

.method public setLogoDescription(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-nez v0, :cond_15

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    :cond_15
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->k:Landroid/widget/ImageView;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void
.end method

.method public setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->M:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->N:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setMinTitleTextSize(F)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a0:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    move p1, v0

    :cond_7
    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->b0:F

    return-void
.end method

.method public setMinimumHeight(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    :cond_9
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->g(Landroid/view/View;)V

    goto :goto_27

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    :goto_27
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureNavButtonView()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->j:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->K:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->q:I

    if-eq v0, p1, :cond_1a

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->q:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->p:Landroid/content/Context;

    goto :goto_1a

    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->p:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_b
    return-void
.end method

.method public setSearchView(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_c

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->f(Landroid/view/View;Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    if-nez v0, :cond_31

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->s:I

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_28
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->H:I

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_31
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->g(Landroid/view/View;)V

    goto :goto_53

    :cond_44
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->F:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 3

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->s:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_9
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->H:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->i:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->d()Lcom/coui/appcompat/toolbar/COUIToolbar$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->y:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v2, 0x800005

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->t:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Landroidx/appcompat/app/ActionBar$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->r:I

    if-eqz v1, :cond_41

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_41
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->G:I

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4a
    iget v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->Q:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6e

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6e
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->g(Landroid/view/View;)V

    goto :goto_90

    :cond_81
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_a5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->S:F

    :cond_a5
    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->E:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMarginStart(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->v:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4

    iput p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->r:I

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->Q:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2d

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2d
    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->a0:F

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->S:F

    :cond_3d
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->G:I

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    return-void
.end method

.method public setTitleTextViewTypeface(Landroid/graphics/Typeface;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final shouldCollapse()Z
    .registers 6

    iget-boolean v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_27

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_24

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_24

    return v1

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldLayout(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public showOverflowMenu()Z
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar;->g:Landroidx/appcompat/widget/ActionMenuView;

    instance-of v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->showOverflowMenu()Z

    move-result p0

    return p0

    :cond_b
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    move-result p0

    return p0
.end method
