.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationView;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterHideListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/view/menu/MenuBuilder;

.field public final b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

.field public final c:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

.field public d:Landroid/view/MenuInflater;

.field public e:Landroid/animation/Animator;

.field public f:Landroid/animation/Animator;

.field public g:I

.field public h:I

.field public i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;

.field public j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;

.field public k:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterHideListener;

.field public l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/appcompat/R$attr;->couiNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 21
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    invoke-direct {v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;-><init>()V

    iput-object v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    sget-object v4, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView:[I

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v1, v5, v4, v6, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_navigationType:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    iput v5, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:I

    new-instance v5, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenu;

    invoke-direct {v5, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenu;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v6, Lcom/coui/appcompat/bottomnavigation/COUIToolNavigationMenuView;

    invoke-direct {v6, v1}, Lcom/coui/appcompat/bottomnavigation/COUIToolNavigationMenuView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v6, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    const/4 v8, 0x3

    iput v8, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->d:I

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setPresenter(Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;)V

    invoke-virtual {v5, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    sget v8, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    sget v8, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/support/appcompat/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTextSize:I

    invoke-virtual {v4, v9, v8}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    int-to-float v8, v8

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v8

    float-to-int v8, v8

    sget v9, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviBackground:I

    iget v11, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:I

    if-nez v11, :cond_8d

    sget v11, Lcom/support/appcompat/R$drawable;->coui_bottom_tool_navigation_item_bg:I

    goto :goto_8e

    :cond_8d
    move v11, v3

    :goto_8e
    invoke-virtual {v4, v9, v11}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    sget v11, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTipsType:I

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v11

    sget v13, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviTipsNumber:I

    invoke-virtual {v4, v13, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v13

    invoke-virtual {v6, v8}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemTextSize(I)V

    invoke-static/range {p1 .. p1}, Lcom/coui/appcompat/orientationutil/COUIOrientationUtil;->a(Landroid/content/Context;)I

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a()V

    iget v8, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:I

    if-nez v8, :cond_af

    invoke-virtual {v6, v9}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemBackgroundRes(I)V

    :cond_af
    sget v8, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    const-wide/16 v14, 0x64

    if-eqz v9, :cond_14b

    invoke-virtual {v4, v8, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x1

    iput-boolean v9, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v16

    if-lez v16, :cond_ec

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    iget-object v12, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->p:Landroid/animation/Animator;

    if-nez v12, :cond_e7

    sget-object v12, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v10, [F

    fill-array-data v9, :array_1fc

    invoke-static {v6, v12, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iput-object v9, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->p:Landroid/animation/Animator;

    new-instance v12, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v12}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v9, v12}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v9, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->p:Landroid/animation/Animator;

    invoke-virtual {v9, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_e7
    iget-object v9, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->p:Landroid/animation/Animator;

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    :cond_ec
    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    invoke-virtual {v9, v8, v5}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-boolean v3, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->c:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;->updateMenuView(Z)V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_fc
    iget-object v2, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_107
    if-ge v5, v2, :cond_14b

    iget v8, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    if-ne v5, v8, :cond_148

    iget-object v8, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/MenuItem;

    if-eqz v8, :cond_148

    iget-object v9, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v9, :cond_148

    iget-object v2, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->q:Landroid/util/SparseArray;

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;

    if-nez v2, :cond_133

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;

    invoke-direct {v2, v13, v11}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;-><init>(II)V

    goto :goto_137

    :cond_133
    iput v13, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->a:I

    iput v11, v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->b:I

    :goto_137
    iget-object v9, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->q:Landroid/util/SparseArray;

    invoke-interface {v8}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    invoke-virtual {v9, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v13, v11}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c(II)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_147} :catch_14b

    goto :goto_14b

    :cond_148
    add-int/lit8 v5, v5, 0x1

    goto :goto_107

    :catch_14b
    :cond_14b
    :goto_14b
    iget-object v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    sget v5, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {v4, v5, v3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_19c

    iget v6, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:I

    if-nez v6, :cond_16a

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_16d

    :cond_16a
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_16d
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/view/View;

    sget v5, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v1, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/support/appcompat/R$dimen;->coui_navigation_shadow_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v5, -0x1

    invoke-direct {v1, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_19c
    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    sget v1, Lcom/support/appcompat/R$styleable;->COUINavigationMenuView_couiItemLayoutType:I

    invoke-virtual {v4, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemLayoutType(I)V

    invoke-virtual {v4}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v10, [F

    fill-array-data v2, :array_204

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/Animator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v10, [F

    fill-array-data v2, :array_20c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:Landroid/animation/Animator;

    invoke-virtual {v1, v14, v15}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;

    invoke-direct {v2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_1fc
    .array-data 4
        0x3e99999a  # 0.3f
        0x3f800000  # 1.0f
    .end array-data

    :array_204
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_20c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/view/MenuInflater;

    if-nez v0, :cond_f

    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/view/MenuInflater;

    :cond_f
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:I

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_tool_navigation_item_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_18
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemHeight(I)V

    return-void
.end method

.method public getDividerView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/view/View;

    return-object p0
.end method

.method public getItemBackgroundResource()I
    .registers 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getItemBackgroundRes()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getMaxItemCount()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getSelectedItemId()I
    .registers 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;

    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p1, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$SavedState;->a:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAnimationType(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_11

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setItemBackgroundResource(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemBackgroundRes(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:I

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemLayoutType(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a()V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1  # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setNeedTextAnim(Z)V

    return-void
.end method

.method public setOnAnimatorListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterHideListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterHideListener;

    return-void
.end method

.method public setOnNavigationItemReselectedListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemReselectedListener;

    return-void
.end method

.method public setOnNavigationItemSelectedListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;)V
    .registers 2
    .param p1  # Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method public setSelectedItemId(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_17
    return-void
.end method
