.class public Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;
.super Lcom/android/launcher/views/RoundImageView;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveScreenRotateRoundImageView"


# instance fields
.field private mIsSquare:Z

.field private mOrientation:I

.field private mScreenLandScapeImageSrc:Landroid/graphics/drawable/Drawable;

.field private mScreenLandScapeLayoutHeight:I

.field private mScreenLandScapeLayoutWidth:I

.field private mScreenLandScapeMarginBottom:I

.field private mScreenLandScapeMarginEnd:I

.field private mScreenLandScapeMarginStart:I

.field private mScreenLandScapeMarginTop:I

.field private mScreenLandScapePaddingBottom:I

.field private mScreenLandScapePaddingEnd:I

.field private mScreenLandScapePaddingStart:I

.field private mScreenLandScapePaddingTop:I

.field private mScreenPortraitImageSrc:Landroid/graphics/drawable/Drawable;

.field private mScreenPortraitLayoutHeight:I

.field private mScreenPortraitLayoutWidth:I

.field private mScreenPortraitMarginBottom:I

.field private mScreenPortraitMarginEnd:I

.field private mScreenPortraitMarginStart:I

.field private mScreenPortraitMarginTop:I

.field private mScreenPortraitPaddingBottom:I

.field private mScreenPortraitPaddingEnd:I

.field private mScreenPortraitPaddingStart:I

.field private mScreenPortraitPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/launcher3/R$styleable;->AdaptiveScreenRotateStyle:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingStart:I

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingTop:I

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingEnd:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingBottom:I

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginStart:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginTop:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginEnd:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginBottom:I

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeLayoutWidth:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeLayoutHeight:I

    const/16 v5, 0x12

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingStart:I

    const/16 v5, 0x13

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingTop:I

    const/16 v5, 0x11

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingEnd:I

    const/16 v5, 0x10

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingBottom:I

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginStart:I

    const/16 v5, 0xf

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginTop:I

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginEnd:I

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginBottom:I

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitLayoutWidth:I

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitLayoutHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/android/launcher3/R$styleable;->AdaptiveScreenRotateImageViewStyle:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeImageSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitImageSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mIsSquare:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private checkOrientation(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mOrientation:I

    if-eq v0, p1, :cond_f

    iput p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->onOrientationChanged(Z)V

    :cond_f
    return-void
.end method

.method private updateImageByOrientation(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeImageSrc:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitImageSrc:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-virtual {p0, p1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    :goto_11
    return-void
.end method

.method private updateMarginByOrientation(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginStart:I

    iget v1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginTop:I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginEnd:I

    iget v3, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeMarginBottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_23

    :cond_18
    iget p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginStart:I

    iget v1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginTop:I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginEnd:I

    iget v3, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitMarginBottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_23
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e

    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateMarginByOrientation, lp error! lp = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveScreenRotateRoundImageView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method private updatePaddingByOrientation(Z)V
    .registers 5

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingStart:I

    iget v0, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingTop:I

    iget v1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingEnd:I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapePaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    goto :goto_19

    :cond_e
    iget p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingStart:I

    iget v0, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingTop:I

    iget v1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingEnd:I

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitPaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    :goto_19
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->checkOrientation(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->checkOrientation(I)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mOrientation:I

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const/high16 v6, 0x40000000  # 2.0f

    const/4 v7, 0x2

    if-ne v2, v7, :cond_40

    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeLayoutWidth:I

    if-ne v2, v4, :cond_1c

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_29

    :cond_1c
    if-ne v2, v3, :cond_23

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_29

    :cond_23
    if-eq v2, v5, :cond_29

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_29
    :goto_29
    iget v0, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenLandScapeLayoutHeight:I

    if-ne v0, v4, :cond_32

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6c

    :cond_32
    if-ne v0, v3, :cond_39

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6c

    :cond_39
    if-eq v0, v5, :cond_6c

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6c

    :cond_40
    iget v2, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitLayoutWidth:I

    if-ne v2, v4, :cond_49

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_56

    :cond_49
    if-ne v2, v3, :cond_50

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_56

    :cond_50
    if-eq v2, v5, :cond_56

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_56
    :goto_56
    iget v0, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mScreenPortraitLayoutHeight:I

    if-ne v0, v4, :cond_5f

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6c

    :cond_5f
    if-ne v0, v3, :cond_66

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6c

    :cond_66
    if-eq v0, v5, :cond_6c

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_6c
    :goto_6c
    invoke-super {p0, p1, p2}, Lcom/android/launcher/views/RoundImageView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->mIsSquare:Z

    if-eqz p1, :cond_84

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    if-eq p1, p2, :cond_84

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1, p1}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    :cond_84
    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->updatePaddingByOrientation(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->updateMarginByOrientation(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher/views/AdaptiveScreenRotateRoundImageView;->updateImageByOrientation(Z)V

    return-void
.end method
