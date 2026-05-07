.class public Lcom/android/launcher/views/VHRecyclerPageItemLayout;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "VHRecyclerPageItemLayout"


# instance fields
.field private mIgnoreInvisibleChildWhenLayout:Z

.field private mIsRTL:Z

.field private final mScreenLandScapeDividerWidth:I

.field private final mScreenLandScapePaddingBottom:I

.field private final mScreenLandScapePaddingEnd:I

.field private final mScreenLandScapePaddingStart:I

.field private final mScreenLandScapePaddingTop:I

.field private final mScreenPortraitDividerWidth:I

.field private final mScreenPortraitPaddingBottom:I

.field private final mScreenPortraitPaddingEnd:I

.field private final mScreenPortraitPaddingStart:I

.field private final mScreenPortraitPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIsRTL:Z

    iput-boolean p4, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIgnoreInvisibleChildWhenLayout:Z

    sget-object v0, Lcom/android/launcher3/R$styleable;->VHRecyclerPageItem:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapeDividerWidth:I

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingStart:I

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingTop:I

    const/4 p3, 0x2

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingEnd:I

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingBottom:I

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitDividerWidth:I

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingStart:I

    const/16 v0, 0x9

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingTop:I

    const/4 v0, 0x7

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingEnd:I

    const/4 v0, 0x6

    invoke-virtual {p2, v0, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingBottom:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIsRTL:Z

    return-void
.end method

.method private getVisibleChildCount()I
    .registers 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_18

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_15

    :cond_13
    add-int/lit8 v2, v2, 0x1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    return v2
.end method

.method private isScreenLandScape()Z
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private layoutInScreenLandScape(IIII)V
    .registers 10

    iget-boolean p1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIgnoreInvisibleChildWhenLayout:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->getVisibleChildCount()I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_d
    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/2addr v0, p1

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapeDividerWidth:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, v0

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_2f
    if-ge p4, p1, :cond_62

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_5f

    :cond_3c
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v3

    if-nez v3, :cond_54

    sub-int v3, p3, v2

    div-int/lit8 v3, v3, 0x2

    :cond_54
    add-int/2addr v2, v3

    add-int v4, p2, v1

    invoke-virtual {v0, v3, p2, v2, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapeDividerWidth:I

    add-int/2addr v1, v0

    add-int/2addr v1, p2

    move p2, v1

    :goto_5f
    add-int/lit8 p4, p4, 0x1

    goto :goto_2f

    :cond_62
    return-void
.end method

.method private layoutInScreenPortrait(IIII)V
    .registers 10

    iget-boolean p1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIgnoreInvisibleChildWhenLayout:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->getVisibleChildCount()I

    move-result p1

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    :goto_d
    if-nez p1, :cond_10

    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    mul-int/2addr p4, p1

    sub-int p4, p2, p4

    iget v0, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitDividerWidth:I

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, v0

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    iget-boolean p1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIsRTL:Z

    if-eqz p1, :cond_31

    sub-int/2addr p2, p4

    goto :goto_32

    :cond_31
    move p2, p4

    :goto_32
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    move v0, p4

    move p4, p3

    :goto_38
    if-ge p3, p1, :cond_75

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_72

    :cond_45
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eqz v4, :cond_58

    move p4, v4

    :cond_58
    iget-boolean v4, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIsRTL:Z

    if-eqz v4, :cond_67

    sub-int v4, p2, v3

    add-int/2addr v2, p4

    invoke-virtual {v1, v4, p4, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitDividerWidth:I

    add-int/2addr v3, v1

    sub-int/2addr p2, v3

    goto :goto_72

    :cond_67
    add-int v4, v0, v3

    add-int/2addr v2, p4

    invoke-virtual {v1, v0, p4, v4, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitDividerWidth:I

    add-int/2addr v3, v1

    add-int/2addr v3, v0

    move v0, v3

    :goto_72
    add-int/lit8 p3, p3, 0x1

    goto :goto_38

    :cond_75
    return-void
.end method

.method private measureInScreenLandScape(II)V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingTop:I

    sub-int/2addr p2, v1

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingBottom:I

    sub-int/2addr p2, v1

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapeDividerWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr p2, v1

    div-int/2addr p2, v0

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingStart:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenLandScapePaddingEnd:I

    sub-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_49

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    goto :goto_46

    :cond_43
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_49
    return-void
.end method

.method private measureInScreenPortrait(II)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingStart:I

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingEnd:I

    sub-int/2addr p1, v1

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitDividerWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mScreenPortraitPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v0, :cond_41

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_41
    return-void
.end method


# virtual methods
.method public measureChildren(II)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->isScreenLandScape()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->measureInScreenLandScape(II)V

    goto :goto_d

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->measureInScreenPortrait(II)V

    :goto_d
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_13

    invoke-direct {p0}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->isScreenLandScape()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->layoutInScreenLandScape(IIII)V

    goto :goto_13

    :cond_10
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->layoutInScreenPortrait(IIII)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->measureChildren(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setIgnoreInvisibleChildWhenLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/views/VHRecyclerPageItemLayout;->mIgnoreInvisibleChildWhenLayout:Z

    return-void
.end method
