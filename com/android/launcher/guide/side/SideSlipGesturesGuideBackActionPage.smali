.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;
.super Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;
.source ""


# instance fields
.field private mBackSuccess:Lcom/android/launcher/views/RoundImageView;

.field private mBackSuccessBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage$1;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccessBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccessBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;)Lcom/android/launcher/views/RoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccess:Lcom/android/launcher/views/RoundImageView;

    return-object p0
.end method

.method private recycleBitmaps()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccess:Lcom/android/launcher/views/RoundImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccessBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccessBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->initViews()V

    const v0, 0x7f0a0494

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/RoundImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccess:Lcom/android/launcher/views/RoundImageView;

    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string v1, "GesturesGuide"

    const-string/jumbo v2, "onAnimationEnd "

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mBackSuccess:Lcom/android/launcher/views/RoundImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->onResume()V

    return-void
.end method

.method public onBackPressed()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onBackPressed()V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->setSideSlipEnable(Landroid/content/Context;ZZZ)V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->stopGuideAnimation()V

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const v1, 0x7f010077

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_30

    :cond_27
    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const v1, 0x7f010078

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_30
    if-eqz v0, :cond_3a

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->onStop()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->recycleBitmaps()V

    return-void
.end method

.method public onPageFinished()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onPageFinished()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->recycleBitmaps()V

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->onResume()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0807a2

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/common/util/BitmapUtils;->decodeStreamBitmapFromResourceID(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBackActionPage;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
