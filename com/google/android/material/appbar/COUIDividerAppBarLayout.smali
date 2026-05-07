.class public Lcom/google/android/material/appbar/COUIDividerAppBarLayout;
.super Lcom/google/android/material/appbar/AppBarLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;,
        Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerAppBarOnScrollChangedListener;,
        Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DIVIDER_FRACTION_STATE_KEY:Ljava/lang/String; = "DIVIDER_FRACTION_STATE_KEY"

.field private static final MAX_FRACTION:F = 1.0f

.field private static final OFFSET_DY_SCROLL_STATE_KEY:Ljava/lang/String; = "OFFSET_DY_SCROLL_STATE_KEY"

.field private static final OVERSCROLL_DY_SCROLL_STATE_KEY:Ljava/lang/String; = "OVERSCROLL_DY_SCROLL_STATE_KEY"

.field private static final SCROLL_DY_SCROLL_STATE_KEY:Ljava/lang/String; = "SCROLL_DY_SCROLL_STATE_KEY"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SUPER_STATE_KEY"

.field private static final TAG:Ljava/lang/String; = "COUIDividerAppBarLayout"


# instance fields
.field public mCollapsable:Z

.field private mDividerEndAlpha:F

.field private mDividerEndMarginHorizontal:I

.field private mDividerFraction:F

.field private mDividerStartAlpha:F

.field private mDividerStartMarginHorizontal:I

.field private mDividerView:Landroid/view/View;

.field private mHasDivider:Z

.field private mOnDividerProgressChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field public mScrollDyByOffset:I

.field public mScrollDyByOverScroll:I

.field public mScrollDyByScroll:I

.field public mTargetView:Landroidx/recyclerview/widget/RecyclerView;

.field public mTargetViewState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetViewState:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnDividerProgressChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/material/appbar/COUIDividerAppBarLayout;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->isDividerAnimEnable()Z

    move-result p0

    return p0
.end method

.method private bindListener()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1c

    :cond_11
    sget-boolean p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->DEBUG:Z

    if-eqz p0, :cond_1c

    const-string p0, "COUIDividerAppBarLayout"

    const-string v0, "Can not find RecyclerView"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method private findRecyclerView()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_21

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout_hasDivider:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout_dividerStartAlpha:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout_dividerEndAlpha:I

    iget-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_26

    move v2, v3

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout_dividerStartMarginHorizontal:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/appcompat/R$dimen;->coui_appbar_divider_expanded_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIDividerAppBarLayout_dividerEndMarginHorizontal:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/appcompat/R$dimen;->coui_appbar_divider_collapsed_margin_horizontal:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    new-instance p1, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$1;-><init>(Lcom/google/android/material/appbar/COUIDividerAppBarLayout;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance p1, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$2;-><init>(Lcom/google/android/material/appbar/COUIDividerAppBarLayout;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private isDividerAnimEnable()Z
    .registers 5

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    iget v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    if-eq v0, v3, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    :goto_14
    iget-object v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    if-eqz v3, :cond_1e

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    if-eqz p0, :cond_1e

    move p0, v2

    goto :goto_1f

    :cond_1e
    move p0, v1

    :goto_1f
    if-eqz p0, :cond_24

    if-eqz v0, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method private setDividerHorizontalMargin(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bindRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_10
    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_20

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_20
    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
            "Lcom/google/android/material/appbar/AppBarLayout;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;-><init>()V

    return-object p0
.end method

.method public getDividerEndAlpha()F
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    return p0
.end method

.method public getDividerEndMarginHorizontal()I
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    return p0
.end method

.method public getDividerScrollRange()I
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getDividerStartAlpha()F
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    return p0
.end method

.method public getDividerStartMarginHorizontal()I
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    return p0
.end method

.method public hasDivider()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Lcom/google/android/material/appbar/AppBarLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$layout;->coui_appbar_divider_layout:I

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    iget v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->refreshDivider()V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    if-eqz v2, :cond_40

    move v2, v1

    goto :goto_42

    :cond_40
    const/16 v2, 0x8

    :goto_42
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->findRecyclerView()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->bindListener()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/material/appbar/AppBarLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1f

    :cond_14
    sget-boolean p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->DEBUG:Z

    if-eqz p0, :cond_1f

    const-string p0, "COUIDividerAppBarLayout"

    const-string v0, "Can not find RecyclerView"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onDividerChanged()V
    .registers 6

    sget-boolean v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->DEBUG:Z

    if-eqz v0, :cond_25

    const-string v0, "onDividerChanged: mScrollDyByScroll = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScrollDyByOffset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScrollDyByOverScroll = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    const-string v2, "COUIDividerAppBarLayout"

    invoke-static {v0, v1, v2}, Landroidx/fragment/app/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_25
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    add-int/2addr v0, v1

    if-ltz v0, :cond_7a

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->isDividerAnimEnable()Z

    move-result v1

    if-eqz v1, :cond_7a

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->getDividerScrollRange()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_49

    iput v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    goto :goto_53

    :cond_49
    int-to-float v0, v0

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    :goto_53
    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    iget v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    iget v4, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->setDividerHorizontalMargin(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnDividerProgressChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;

    if-eqz v0, :cond_7a

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    cmpl-float v1, v1, p0

    if-eqz v1, :cond_7a

    invoke-interface {v0, p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;->onDividerProgressChanged(F)V

    :cond_7a
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2c

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "OFFSET_DY_SCROLL_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    const-string v0, "SCROLL_DY_SCROLL_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    const-string v0, "OVERSCROLL_DY_SCROLL_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    const-string v0, "DIVIDER_FRACTION_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    const-string v0, "SUPER_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "SUPER_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    const-string v2, "OFFSET_DY_SCROLL_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    const-string v2, "SCROLL_DY_SCROLL_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    const-string v2, "OVERSCROLL_DY_SCROLL_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    const-string v1, "DIVIDER_FRACTION_STATE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public refreshAppBar(Landroid/view/View;)Z
    .registers 4

    instance-of v0, p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    check-cast p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    goto :goto_14

    :cond_c
    instance-of v0, p1, Lcom/coui/appcompat/scrollview/COUINestedScrollView;

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    :goto_14
    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    if-ne p1, v0, :cond_19

    return v1

    :cond_19
    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    const/4 p0, 0x1

    return p0

    :cond_1d
    return v1
.end method

.method public refreshDivider()V
    .registers 6

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    iget v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    iget v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v3, v4}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->setDividerHorizontalMargin(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnDividerProgressChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;

    if-eqz v0, :cond_37

    iget p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerFraction:F

    invoke-interface {v0, p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;->onDividerProgressChanged(F)V

    :cond_37
    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOverScroll:I

    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    sput-boolean p1, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->DEBUG:Z

    return-void
.end method

.method public setDividerEndAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndAlpha:F

    return-void
.end method

.method public setDividerEndMarginHorizontal(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerEndMarginHorizontal:I

    return-void
.end method

.method public setDividerStartAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartAlpha:F

    return-void
.end method

.method public setDividerStartMarginHorizontal(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerStartMarginHorizontal:I

    return-void
.end method

.method public setHasDivider(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mHasDivider:Z

    iget-object p0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mDividerView:Landroid/view/View;

    if-eqz p0, :cond_f

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method public setOnDividerProgressChangedListener(Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mOnDividerProgressChangedListener:Lcom/google/android/material/appbar/COUIDividerAppBarLayout$OnDividerProgressChangedListener;

    return-void
.end method
