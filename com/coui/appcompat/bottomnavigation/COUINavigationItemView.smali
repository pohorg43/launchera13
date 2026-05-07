.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView$ItemView;


# static fields
.field public static final l:Landroid/view/animation/Interpolator;

.field public static final m:[I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:I

.field public c:Landroid/widget/ImageView;

.field public d:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public g:I

.field public h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field public i:Landroid/animation/ValueAnimator;

.field public j:Landroid/animation/ValueAnimator;

.field public k:Landroid/view/animation/ScaleAnimation;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const v0, 0x3ea8f5c3  # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f2b851f  # 0.67f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, v3}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->l:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->m:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->g:I

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    sget v0, Lcom/support/appcompat/R$layout;->coui_navigation_item_layout:I

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->g:I

    if-eqz v1, :cond_8

    sget v0, Lcom/support/appcompat/R$layout;->coui_navigation_item_default_layout:I

    :cond_8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    sget v1, Lcom/support/appcompat/R$id;->normalLable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$id;->tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-void
.end method

.method public final b()V
    .registers 11

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-instance v4, Landroid/animation/ValueAnimator;

    invoke-direct {v4}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->l:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xb4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    const/4 v8, 0x2

    new-array v9, v8, [F

    fill-array-data v9, :array_6e

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$1;

    invoke-direct {v9, p0, v2, v1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Landroid/animation/ArgbEvaluator;II)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    new-array v4, v8, [F

    fill-array-data v4, :array_76

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$2;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$2;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Landroid/animation/ArgbEvaluator;II)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_6e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public c(II)V
    .registers 12

    if-gez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4f

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_11

    return-void

    :cond_11
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    if-nez p1, :cond_47

    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000  # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v0, 0x190

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    const/high16 p2, 0x3f800000  # 1.0f

    const v0, 0x3ecccccd  # 0.4f

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView$3;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_47
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_88

    :cond_4f
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6a

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_64

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->cancel()V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_64
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_88

    :cond_6a
    const/4 v1, 0x2

    if-ne p2, v1, :cond_88

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Landroid/view/animation/ScaleAnimation;->cancel()V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_83
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_88
    :goto_88
    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getItemPosition()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    return p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setChecked(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a()V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->f:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1d

    sget-object p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->m:[I

    invoke-static {p1, p0}, Landroid/widget/FrameLayout;->mergeDrawableStates([I[I)[I

    :cond_1d
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    const/16 p0, 0x10

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(I)V

    :cond_14
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_b

    goto :goto_1b

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1b

    move p2, p3

    :cond_1b
    :goto_1b
    if-eqz p2, :cond_2d

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    goto :goto_43

    :cond_2d
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    :goto_43
    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p3, p1, p2, p4, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->refreshDrawableState()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 7

    if-eqz p1, :cond_26

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    new-array v2, v0, [I

    const v3, 0x10100a0

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v0

    goto :goto_1d

    :cond_1c
    const/4 v4, -0x1

    :goto_1d
    mul-int/2addr v4, v3

    aput v4, v2, v1

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_33

    :cond_26
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_33
    :goto_33
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    return-void
.end method

.method public setItemBackground(I)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_c
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->g:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a()V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->f:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setItemPosition(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    return-void
.end method

.method public setMaxTextWidth(I)V
    .registers 2

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public setShortcut(ZC)V
    .registers 3

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextSize(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    if-eqz p1, :cond_19

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_19

    :cond_d
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_20
    return-void
.end method

.method public showsIcon()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
