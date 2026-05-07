.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;
    }
.end annotation


# instance fields
.field public a:Landroid/transition/TransitionSet;

.field public b:Landroid/view/View$OnClickListener;

.field public c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

.field public d:Landroid/content/res/ColorStateList;

.field public e:Landroid/content/res/ColorStateList;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[I

.field public o:Z

.field public p:Landroid/animation/Animator;

.field public q:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

.field public s:Landroidx/appcompat/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->j:I

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->o:Z

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_navigation_item_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    new-instance p2, Landroid/transition/TransitionSet;

    invoke-direct {p2}, Landroid/transition/TransitionSet;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:Landroid/transition/TransitionSet;

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {p2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:Landroid/transition/TransitionSet;

    invoke-virtual {p2, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:Landroid/transition/TransitionSet;

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:Landroid/transition/TransitionSet;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUITextScale;

    invoke-direct {p2}, Lcom/coui/appcompat/bottomnavigation/COUITextScale;-><init>()V

    invoke-virtual {p1, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;)V

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:Landroid/view/View$OnClickListener;

    const/4 p1, 0x5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    sget p3, Lcom/support/appcompat/R$attr;->COUINavigationViewStyle:I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->j:I

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->o:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->q:Landroid/util/SparseArray;

    return-void
.end method

.method private getNewItem()Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:I

    invoke-direct {v0, v1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_f
    const/4 v1, 0x0

    if-nez v0, :cond_1a

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    return-void

    :cond_1a
    new-array v2, v0, [Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iput-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    move v2, v1

    :goto_1f
    if-ge v2, v0, :cond_73

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v4, 0x5

    if-lt v2, v4, :cond_31

    goto :goto_73

    :cond_31
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getNewItem()Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    move-result-object v4

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    aput-object v4, v5, v2

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->l:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    iget v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->k:I

    invoke-virtual {v4, v5}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setItemBackground(I)V

    invoke-virtual {v4, v3, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setItemPosition(I)V

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->q:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;

    if-eqz v3, :cond_6d

    iget v5, v3, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->a:I

    iget v3, v3, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$ItemTipBean;->b:I

    invoke-virtual {v4, v5, v3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c(II)V

    :cond_6d
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_73
    :goto_73
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->i:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->k:I

    return p0
.end method

.method public getItemLayoutType()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getSelectedItemId()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->h:I

    return p0
.end method

.method public getWindowAnimations()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->s:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$2;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    move p3, p2

    move v0, p3

    :goto_9
    if-ge p3, p1, :cond_3a

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    goto :goto_37

    :cond_18
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b()Z

    move-result v2

    if-eqz v2, :cond_2a

    sub-int v2, p4, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_32

    :cond_2a
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, p2, v2, p5}, Landroid/view/View;->layout(IIII)V

    :goto_32
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    :goto_37
    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_3a
    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x1

    if-nez p2, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, p2

    :goto_1b
    div-int v3, p1, v3

    mul-int v4, v3, p2

    sub-int/2addr p1, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_22
    if-ge v5, p2, :cond_34

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    aput v3, v6, v5

    if-lez p1, :cond_31

    aget v7, v6, v5

    add-int/2addr v7, v2

    aput v7, v6, v5

    add-int/lit8 p1, p1, -0x1

    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_34
    move p1, v4

    move v3, p1

    :goto_36
    if-ge p1, p2, :cond_d1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_46

    goto/16 :goto_cd

    :cond_46
    if-ne p2, v2, :cond_5e

    iget v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    invoke-virtual {v5, v6, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_be

    :cond_5e
    if-nez p1, :cond_86

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_68

    move v6, v4

    goto :goto_6a

    :cond_68
    iget v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    :goto_6a
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_73

    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    goto :goto_74

    :cond_73
    move v7, v4

    :goto_74
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_be

    :cond_86
    add-int/lit8 v6, p2, -0x1

    if-ne p1, v6, :cond_b0

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_93

    iget v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    goto :goto_94

    :cond_93
    move v6, v4

    :goto_94
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b()Z

    move-result v7

    if-eqz v7, :cond_9c

    move v7, v4

    goto :goto_9e

    :cond_9c
    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    :goto_9e
    invoke-virtual {v5, v6, v4, v7, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    aget v6, v6, p1

    iget v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->m:I

    add-int/2addr v6, v7

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    goto :goto_be

    :cond_b0
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->n:[I

    aget v6, v6, p1

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->measure(II)V

    :goto_be
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    :goto_cd
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_36

    :cond_d1
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v3, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    invoke-static {p2, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->e:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->k:I

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public setItemHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    return-void
.end method

.method public setItemLayoutType(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setItemLayoutType(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public setItemTextSize(I)V
    .registers 5

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->l:I

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:[Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-nez p0, :cond_7

    return-void

    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public setNeedTextAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->o:Z

    return-void
.end method

.method public setPresenter(Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->r:Lcom/coui/appcompat/bottomnavigation/COUINavigationPresenter;

    return-void
.end method
