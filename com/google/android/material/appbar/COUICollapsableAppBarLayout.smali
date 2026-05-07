.class public Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;
.super Lcom/google/android/material/appbar/COUIDividerAppBarLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;,
        Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DEFAULT_SCROLL_FLAG:I = 0x13

.field public static final MODE_COLLAPSABLE:I = 0x0

.field public static final MODE_FIXED_COLLAPSED:I = 0x1

.field public static final MODE_FIXED_EXPANDED:I = 0x2

.field private static final MODE_STATE_KEY:Ljava/lang/String; = "MODE_STATE_KEY"

.field private static final OFFSET_STATE_KEY:Ljava/lang/String; = "OFFSET_STATE_KEY"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "SUPER_STATE_KEY"

.field private static final TAG:Ljava/lang/String; = "COUICollapsableAppBarLayout"

.field private static final TITLE_FRACTION_STATE_KEY:Ljava/lang/String; = "TITLE_FRACTION_STATE_KEY"


# instance fields
.field private mAutoExpand:Z

.field private mMode:I

.field private mNeedUpdateModeAfterOffsetChanged:Z

.field private mOffset:I

.field private mSubtitleHideEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->init(Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)I
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return p0
.end method

.method public static synthetic access$200(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    return p0
.end method

.method public static synthetic access$300()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->DEBUG:Z

    return v0
.end method

.method private adjustSubtitleIfNeed(I)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-eqz v1, :cond_4d

    if-eqz v3, :cond_4d

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p0, :cond_2f

    sub-float/2addr v1, p1

    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float v3, v2

    sub-int/2addr p0, v2

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr p0, v3

    float-to-int p0, p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_47

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_47
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4d
    return-void
.end method

.method private findCollapsingToolbarLayout()Landroid/view/View;
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v3, :cond_10

    return-object v2

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method private getExpansionFraction()F
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUICollapsableAppBarLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$styleable;->COUICollapsableAppBarLayout_mode:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUICollapsableAppBarLayout_subtitleHideEnable:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez v0, :cond_22

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    :cond_22
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isCollapsed()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isCollapsed()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private isExpanded()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private setScrollFlags(I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v3, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method private updateIconViewLocationIfNeed(F)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateIconViewLocationIfNeed()V

    :cond_12
    return-void
.end method


# virtual methods
.method public enableAutoExpand(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mAutoExpand:Z

    return-void
.end method

.method public findSubtitleContentView()Landroid/view/View;
    .registers 2

    sget v0, Lcom/support/appcompat/R$id;->coui_appbar_subtitle_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 2
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

    new-instance p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;-><init>(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$1;)V

    return-object p0
.end method

.method public getDividerScrollRange()I
    .registers 4

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0

    :cond_f
    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getMinimumHeight()I

    move-result p0

    return p0

    :cond_17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getMode()I
    .registers 1

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return p0
.end method

.method public isSubtitleHideEnable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setMode(I)V

    return-void
.end method

.method public onOffsetChanged(I)V
    .registers 6

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->onOffsetChanged(I)V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    if-ne p1, v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_14

    neg-int v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    :cond_14
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustSubtitleIfNeed(I)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findCollapsingToolbarLayout()Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v0, :cond_29

    check-cast p1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateIconViewLocationIfNeed()V

    :cond_29
    iget-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5a

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_36

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    goto :goto_5a

    :cond_36
    if-ne p1, v2, :cond_49

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getDividerScrollRange()I

    move-result v3

    neg-int v3, v3

    if-ne p1, v3, :cond_49

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    goto :goto_5a

    :cond_49
    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne p1, v0, :cond_5a

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    if-nez p1, :cond_5a

    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    iput-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :cond_5a
    :goto_5a
    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetViewState:I

    if-ne p1, v0, :cond_7f

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getDividerScrollRange()I

    move-result v0

    neg-int v0, v0

    if-ne p1, v0, :cond_7f

    iget-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_7f

    iget-object p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_7f

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_7f

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_7f
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_26

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "OFFSET_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    const-string v0, "MODE_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const/4 v0, 0x0

    const-string v1, "TITLE_FRACTION_STATE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    const-string v0, "SUPER_STATE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_26
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "SUPER_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    const-string v2, "OFFSET_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    const-string v2, "MODE_STATE_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getExpansionFraction()F

    move-result p0

    const-string v1, "TITLE_FRACTION_STATE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public refreshAppBar(Landroid/view/View;)Z
    .registers 6

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->refreshAppBar(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_27

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_27

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_27

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result p1

    if-eqz p1, :cond_27

    iget p1, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mTargetViewState:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_27

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    move p0, v1

    goto :goto_28

    :cond_27
    move p0, v3

    :goto_28
    if-nez v0, :cond_2e

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v3

    :cond_2e
    :goto_2e
    return v1
.end method

.method public refreshExpand(Landroid/view/View;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1b

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-nez p1, :cond_1b

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_1b
    return-void
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setMode(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->setDebug(Z)V

    sput-boolean p1, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->DEBUG:Z

    return-void
.end method

.method public setMode(I)V
    .registers 6

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x13

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_48

    if-eq p1, v3, :cond_2c

    if-eq p1, v1, :cond_11

    goto :goto_75

    :cond_11
    iput-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    iput v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, v2}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    goto :goto_28

    :cond_26
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_75

    :cond_2c
    iput-boolean v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    iput v2, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_42

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateIconViewLocationIfNeed(F)V

    goto :goto_44

    :cond_42
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mNeedUpdateModeAfterOffsetChanged:Z

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_75

    :cond_48
    iput-boolean v3, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->setScrollFlags(I)V

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, v3, :cond_63

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    if-lez v0, :cond_60

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    iget v3, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->onDividerChanged()V

    goto :goto_63

    :cond_60
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_63
    :goto_63
    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    if-ne v0, v1, :cond_75

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByScroll:I

    if-lez v0, :cond_75

    iget v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mScrollDyByOffset:I

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_75
    :goto_75
    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mMode:I

    return-void
.end method

.method public setSubtitleHideEnable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mSubtitleHideEnable:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->updateSubtitle()V

    :cond_9
    return-void
.end method

.method public updateSubtitle()V
    .registers 2

    iget v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->mOffset:I

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->adjustSubtitleIfNeed(I)V

    return-void
.end method
