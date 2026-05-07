.class public Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mBottom:I

.field private mLeft:I

.field private mRest:I

.field private mRight:I

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private isHorizon()Z
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public getPositionRight(III)I
    .registers 5

    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_14

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->getPositionRight(III)I

    move-result p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p2, p0

    return p2

    :cond_14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p0

    sub-int/2addr p3, p0

    return p3
.end method

.method public onMeasure(II)V
    .registers 10

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->isHorizon()Z

    move-result p2

    if-nez p2, :cond_a

    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mLeft:I

    iput v1, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mRight:I

    iput v1, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mTop:I

    iput v1, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mBottom:I

    iput p1, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mRest:I

    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_24
    if-ltz v2, :cond_51

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mRest:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v5

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->getPositionRight(III)I

    move-result v6

    iput v6, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mRight:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mLeft:I

    iget v5, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mTop:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mBottom:I

    iput v6, p0, Lcom/android/launcher/views/ShowCompleteLastChildLinearlayout;->mRest:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :cond_51
    if-gt v3, p1, :cond_57

    invoke-virtual {p0, v3, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_5a

    :cond_57
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_5a
    return-void
.end method
