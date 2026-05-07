.class public Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;
.super Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;
.source ""


# instance fields
.field private final mDividerPaint:Landroid/graphics/Paint;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mIsRtl:Z

.field private mLastActivePage:I

.field private mScrollOffset:F

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mTabButtonSize:I


# direct methods
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

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/workprofile/PersonalWorkSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mTabButtonSize:I

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mLastActivePage:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070131

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    const v0, 0x1010429

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ed

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIsRtl:Z

    return-void
.end method

.method private getLeftTab()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIsRtl:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private setIndicatorPosition(II)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    iput p2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_f
    return-void
.end method

.method private updateIndicatorPosition()V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->getLeftTab()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/16 v2, 0x2c

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, -0x1

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget v2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    if-nez v2, :cond_48

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    goto :goto_52

    :cond_48
    iget v2, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mTabButtonSize:I

    div-int v3, v0, v2

    div-int/2addr v0, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v2, v0, v3

    :goto_52
    add-int v0, v2, v1

    goto :goto_56

    :cond_55
    move v0, v2

    :goto_56
    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method private updateIndicatorPosition(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    sub-float v6, v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v7, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mDividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateTabTextColor(I)V

    iget p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mScrollOffset:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    return-void
.end method

.method public setScroll(II)V
    .registers 3

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition(F)V

    return-void
.end method

.method public updateTabTextColor(I)V
    .registers 7

    iput p1, p0, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_36

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v0

    :goto_15
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    if-ne v1, p1, :cond_27

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f060058

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_33

    :cond_27
    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v4, 0x7f060649

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_36
    invoke-direct {p0}, Lcom/android/launcher3/workprofile/OplusPersonalWorkSlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method
