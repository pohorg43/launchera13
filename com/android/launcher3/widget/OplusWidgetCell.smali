.class public Lcom/android/launcher3/widget/OplusWidgetCell;
.super Lcom/android/launcher3/widget/WidgetCell;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusWidgetCell"


# instance fields
.field private mOrientation:I

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private final mScreenLandScapeMarginBottom:I

.field private final mScreenLandScapeMarginEnd:I

.field private final mScreenLandScapeMarginStart:I

.field private final mScreenLandScapeMarginTop:I

.field private final mScreenLandScapePaddingBottom:I

.field private final mScreenLandScapePaddingEnd:I

.field private final mScreenLandScapePaddingStart:I

.field private final mScreenLandScapePaddingTop:I

.field private final mScreenPortraitMarginBottom:I

.field private final mScreenPortraitMarginEnd:I

.field private final mScreenPortraitMarginStart:I

.field private final mScreenPortraitMarginTop:I

.field private final mScreenPortraitPaddingBottom:I

.field private final mScreenPortraitPaddingEnd:I

.field private final mScreenPortraitPaddingStart:I

.field private final mScreenPortraitPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/OplusWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/OplusWidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/android/launcher3/R$styleable;->AdaptiveScreenRotateStyle:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingStart:I

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingTop:I

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingEnd:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingBottom:I

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginStart:I

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginTop:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginEnd:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginBottom:I

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingStart:I

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingTop:I

    const/16 p2, 0x11

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingEnd:I

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingBottom:I

    const/16 p2, 0xe

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginStart:I

    const/16 p2, 0xf

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginTop:I

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginEnd:I

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginBottom:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/OplusWidgetCell;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/OplusWidgetCell;->lambda$applyFromCellItem$0()V

    return-void
.end method

.method private animateOnTouchStateChanged(Landroid/view/View;Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    invoke-static {p1, p2}, Lcom/android/common/config/AnimationConstant;->createPressChangedScaleAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/OplusWidgetCell;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/widget/OplusWidgetCell;->lambda$applyFromCellItem$1()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/OplusWidgetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->lambda$applyFromCellItem$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private checkOrientation(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mOrientation:I

    if-eq v0, p1, :cond_d

    iput p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mOrientation:I

    invoke-static {p1}, Lcom/android/common/util/ScreenUtils;->isLandscape(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/OplusWidgetCell;->onOrientationChanged(Z)V

    :cond_d
    return-void
.end method

.method private findFirstScreenIndexForCard(ILandroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/OplusLauncherModel;->findScreenIndexForCard(ILjava/lang/Runnable;)V

    return-void
.end method

.method private findFirstScreenIndexForWidget(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 4

    if-eqz p1, :cond_12

    if-nez p2, :cond_5

    goto :goto_12

    :cond_5
    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/OplusLauncherModel;->findScreenIndexForWidget(Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private synthetic lambda$applyFromCellItem$0()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$applyFromCellItem$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1200d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$applyFromCellItem$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher/widget/OplusWidgetImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/OplusWidgetCell;->animateOnTouchStateChanged(Landroid/view/View;Z)V

    goto :goto_18

    :cond_e
    if-eq p1, v0, :cond_13

    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    :cond_13
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetImage:Lcom/android/launcher/widget/OplusWidgetImageView;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->animateOnTouchStateChanged(Landroid/view/View;Z)V

    :cond_18
    :goto_18
    return p2
.end method

.method private updateMarginByOrientation(Z)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginStart:I

    iget v1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginTop:I

    iget v2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginEnd:I

    iget v3, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapeMarginBottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto :goto_23

    :cond_18
    iget p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginStart:I

    iget v1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginTop:I

    iget v2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginEnd:I

    iget v3, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitMarginBottom:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_23
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3e

    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateMarginByOrientation, lp error! lp = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusWidgetCell"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method private updatePaddingByOrientation(Z)V
    .registers 5

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingStart:I

    iget v0, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingTop:I

    iget v1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingEnd:I

    iget v2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenLandScapePaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_19

    :cond_e
    iget p1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingStart:I

    iget v0, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingTop:I

    iget v1, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingEnd:I

    iget v2, p0, Lcom/android/launcher3/widget/OplusWidgetCell;->mScreenPortraitPaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :goto_19
    return-void
.end method


# virtual methods
.method public applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p3  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/WidgetItem;",
            "F",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;FLjava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    iget-object p2, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object p3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/launcher3/widget/e;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/launcher3/widget/e;-><init>(Lcom/android/launcher3/widget/OplusWidgetCell;I)V

    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher3/widget/OplusWidgetCell;->findFirstScreenIndexForWidget(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/launcher3/model/WidgetItem;->cardConfigInfo:Lcom/oplus/card/config/domain/model/CardConfigInfo;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getType()I

    move-result p1

    iget-object p2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/android/launcher3/widget/e;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/android/launcher3/widget/e;-><init>(Lcom/android/launcher3/widget/OplusWidgetCell;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/widget/OplusWidgetCell;->findFirstScreenIndexForCard(ILandroid/content/Context;Ljava/lang/Runnable;)V

    :cond_23
    new-instance p1, Lcom/android/launcher3/allapps/i;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/i;-><init>(Lcom/android/launcher3/widget/OplusWidgetCell;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getWidgetDims()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/OplusWidgetCell;->checkOrientation(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/OplusWidgetCell;->checkOrientation(I)V

    return-void
.end method

.method public onOrientationChanged(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/OplusWidgetCell;->updatePaddingByOrientation(Z)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/OplusWidgetCell;->updateMarginByOrientation(Z)V

    return-void
.end method

.method public setContainerWidth()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ca1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mCellSize:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mPresetPreviewSize:I

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewWidth:I

    iput v0, p0, Lcom/android/launcher3/widget/WidgetCell;->mTargetPreviewHeight:I

    return-void
.end method
