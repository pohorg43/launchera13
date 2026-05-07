.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;
.super Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;
.source ""

# interfaces
.implements Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;


# static fields
.field private static final CARD_SPACING:I = 0x32

.field private static final DEFAULTFHD_SCREEN_WIDTH:I = 0x438

.field private static final DEFAULTQHD_SCREEN_WIDTH:I = 0x5a0

.field private static final DEFAULT_SCREEN_HEIGHT:I = 0x960

.field private static final ICON_RADIUS:I = 0x26

.field private static final RECENTS_SCALE:F = 0.583333f

.field private static final SPECIAL_SCREEN_HEIGHT_FHD:I = 0x948

.field private static final SPECIAL_SCREEN_HEIGHT_QHD:I = 0xc60


# instance fields
.field private mBackIcon:Lcom/android/launcher/views/RoundImageView;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBottom:I

.field private mCalculateBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mHomeSuccessBitmap:Landroid/graphics/Bitmap;

.field private mIconRadius:I

.field private mImageRadius:I

.field private mImageView:Lcom/android/launcher/views/RoundImageView;

.field private mLeft:I

.field private mLeftImage:Lcom/android/launcher/views/RoundImageView;

.field private mOffset:I

.field private mRadius:I

.field private mRight:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSideSlipGesturesGuideMotionEvent:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$1;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mCalculateBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mCalculateBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageRadius:I

    return p0
.end method

.method public static synthetic access$400(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mIconRadius:I

    return p0
.end method

.method public static synthetic access$500(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)Lcom/android/launcher/views/RoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/RectF;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->layoutAnimView(Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleActionImage()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleCalculatorImage()V

    return-void
.end method

.method private layoutAnimView(Landroid/graphics/RectF;)V
    .registers 7

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p1

    float-to-int p1, v3

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private recycleActionImage()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher/views/RoundImageView;->setNeedRecycleBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private recycleBitmaps()V
    .registers 4

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHomeSuccessBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHomeSuccessBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleActionImage()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleCalculatorImage()V

    return-void
.end method

.method private recycleCalculatorImage()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/launcher/views/RoundImageView;->setNeedRecycleBitmap(Z)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mCalculateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mCalculateBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private startAnimation()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_14

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    goto :goto_21

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startSwitchAppAnimation()V

    goto :goto_21

    :cond_10
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startRecentsAnimation()V

    goto :goto_21

    :cond_14
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSpecialDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startHomeAlphAnimation()V

    goto :goto_21

    :cond_1e
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startHomeAnimation()V

    :goto_21
    return-void
.end method

.method private startHomeAlphAnimation()V
    .registers 24

    move-object/from16 v0, p0

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v12, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x3f2147ae  # 0.63f

    const/4 v10, 0x1

    const v11, 0x3f19999a  # 0.6f

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v3, 0x14a

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v14, 0x3fd3333333333333L  # 0.3

    const-wide/16 v16, 0x0

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v20, 0x3ff0000000000000L  # 1.0

    const/16 v22, 0x1

    move-object v13, v5

    invoke-direct/range {v13 .. v22}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v12, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v5, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/OplusBezierInterpolator;

    move-object v13, v3

    invoke-direct/range {v13 .. v22}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v5, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    new-instance v2, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;

    invoke-direct {v2, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private startHomeAnimation()V
    .registers 23

    move-object/from16 v7, p0

    iget v0, v7, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    iget-object v0, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHomeSuccessBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_38

    sget-object v0, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v1, v7, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08079f

    iget v3, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v4, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/common/util/BitmapUtils;->decodeStreamBitmapFromResourceID(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHomeSuccessBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, v7, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHomeSuccessBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_38
    iget-object v0, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_77

    iget v1, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int/2addr v1, v0

    div-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070b2f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v9, v1, v0

    add-int/2addr v0, v8

    invoke-virtual {v3, v1, v8, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_126

    :cond_77
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v8, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    const/16 v9, 0x960

    if-le v8, v9, :cond_89

    move v9, v5

    goto :goto_8a

    :cond_89
    move v9, v6

    :goto_8a
    const/16 v10, 0x948

    if-eq v8, v10, :cond_95

    const/16 v10, 0xc60

    if-ne v8, v10, :cond_93

    goto :goto_95

    :cond_93
    move v8, v6

    goto :goto_96

    :cond_95
    :goto_95
    move v8, v5

    :goto_96
    const/16 v10, 0x1e0

    if-ne v1, v10, :cond_9c

    move v10, v5

    goto :goto_9d

    :cond_9c
    move v10, v6

    :goto_9d
    const/16 v11, 0x230

    if-ne v1, v11, :cond_a3

    move v11, v5

    goto :goto_a4

    :cond_a3
    move v11, v6

    :goto_a4
    sget v12, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    const/16 v13, 0x438

    if-le v12, v13, :cond_b0

    const/16 v13, 0x5a0

    if-ge v12, v13, :cond_b0

    move v12, v5

    goto :goto_b1

    :cond_b0
    move v12, v6

    :goto_b1
    if-eqz v12, :cond_bf

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070b22

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_ca

    :cond_bf
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070b21

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :goto_ca
    sget-boolean v13, Lcom/android/common/config/FeatureOption;->isSupportResolutionSwitch:Z

    const v14, 0x7f070b24

    const v15, 0x7f070b25

    if-eqz v13, :cond_db

    if-nez v8, :cond_ec

    if-eqz v11, :cond_f1

    if-eqz v9, :cond_f1

    goto :goto_ec

    :cond_db
    const/16 v8, 0x140

    if-ne v1, v8, :cond_e3

    const v14, 0x7f070b26

    goto :goto_f1

    :cond_e3
    if-eqz v10, :cond_e8

    if-eqz v9, :cond_e8

    goto :goto_f1

    :cond_e8
    if-eqz v11, :cond_ee

    if-eqz v9, :cond_ee

    :cond_ec
    :goto_ec
    move v14, v15

    goto :goto_f1

    :cond_ee
    const v14, 0x7f070b23

    :cond_f1
    :goto_f1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v9, v12, v0

    add-int/2addr v0, v8

    invoke-virtual {v3, v12, v8, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, v7, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "startHomeAnimation: densityDpi = "

    const-string v10, ", screenHeight = "

    invoke-static {v9, v1, v10}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v9, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", iconLocationY = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "GesturesGuide"

    invoke-static {v8, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_126
    :goto_126
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    const v9, 0x3fa66666  # 1.3f

    const/16 v0, 0x19

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v11, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    sget-object v12, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    new-array v13, v4, [F

    fill-array-data v13, :array_19a

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v1, v6

    iget-object v6, v7, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    sget-object v11, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    new-array v12, v4, [F

    fill-array-data v12, :array_1a2

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v0, v0

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v0, v4, [F

    fill-array-data v0, :array_1aa

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v0, 0x14a

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v13, 0x3fd3333333333333L  # 0.3

    const-wide/16 v15, 0x0

    const-wide/high16 v17, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v19, 0x3ff0000000000000L  # 1.0

    const/16 v21, 0x1

    move-object v12, v0

    invoke-direct/range {v12 .. v21}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move v4, v9

    move-object v5, v10

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$2;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/animation/AnimatorSet;Landroid/graphics/RectF;)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    new-instance v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;

    invoke-direct {v0, v7}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;-><init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_19a
    .array-data 4
        0x3ecccccd  # 0.4f
        0x3f800000  # 1.0f
    .end array-data

    :array_1a2
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1aa
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private startRecentsAnimation()V
    .registers 32

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v2, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_11a

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v2, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_12

    goto/16 :goto_11a

    :cond_12
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget v3, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    int-to-float v4, v3

    const v5, 0x3f155550

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v6, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    int-to-float v7, v6

    mul-float/2addr v7, v5

    float-to-int v5, v7

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v3, v7

    iget-boolean v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v7, :cond_34

    iget v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mOffset:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    :cond_34
    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iget v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr v6, v7

    new-instance v7, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v3

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-direct {v7, v8, v3, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v9, 0x14a

    invoke-virtual {v7, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fd3333333333333L  # 0.3

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const/16 v20, 0x1

    move-object v11, v3

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v7, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-float v3, v4

    iget v11, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v12, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float v14, v3, v11

    int-to-float v3, v5

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v11, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr v5, v11

    int-to-float v5, v5

    div-float v16, v3, v5

    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v13, 0x3f800000  # 1.0f

    const/high16 v15, 0x3f800000  # 1.0f

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v12, v3

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v3, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v22, 0x3fd3333333333333L  # 0.3

    const-wide/16 v24, 0x0

    const-wide v26, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v28, 0x3ff0000000000000L  # 1.0

    const/16 v30, 0x1

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v30}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v3, v5}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x32

    iget v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    add-int/lit8 v11, v7, -0x32

    iget v12, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    sub-int/2addr v12, v7

    sub-int/2addr v11, v12

    sub-int/2addr v5, v11

    iget-boolean v7, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v7, :cond_d9

    sub-int v5, v1, v4

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x32

    sub-int v5, v4, v5

    sub-int/2addr v4, v1

    iget-object v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v1, v4

    sub-int/2addr v5, v1

    :cond_d9
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v5

    invoke-direct {v1, v8, v4, v8, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v4, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v12, 0x3fd3333333333333L  # 0.3

    const-wide/16 v14, 0x0

    const-wide v16, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v18, 0x3ff0000000000000L  # 1.0

    const/16 v20, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v20}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v1, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_11a
    :goto_11a
    return-void
.end method

.method private startSwitchAppAnimation()V
    .registers 30

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v2, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_13a

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v2, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_12

    goto/16 :goto_13a

    :cond_12
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v3, v0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "startSwitchAppAnimation mLeft:"

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mOffset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    const-string v6, "GesturesGuide"

    invoke-static {v4, v5, v6, v3}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v4, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int v5, v3, v4

    iget-boolean v6, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v6, :cond_4f

    neg-int v3, v3

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mOffset:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    sub-int/2addr v3, v5

    add-int/lit8 v5, v3, -0x32

    :cond_4f
    iget v3, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    neg-int v3, v3

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v5

    int-to-float v3, v3

    const/4 v6, 0x0

    invoke-direct {v4, v6, v5, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v7, 0x14a

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v10, 0x3fd3333333333333L  # 0.3

    const-wide/16 v12, 0x0

    const-wide v14, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    const/16 v18, 0x1

    move-object v9, v5

    invoke-direct/range {v9 .. v18}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    int-to-float v5, v5

    iget v9, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v10, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v12, v5, v9

    iget v5, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    int-to-float v5, v5

    iget v9, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v10, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v14, v5, v9

    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v13, 0x3f800000  # 1.0f

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v5

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v9, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v20, 0x3fd3333333333333L  # 0.3

    const-wide/16 v22, 0x0

    const-wide v24, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v26, 0x3ff0000000000000L  # 1.0

    const/16 v28, 0x1

    move-object/from16 v19, v9

    invoke-direct/range {v19 .. v28}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v5, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v5, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v9, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v11, 0x3fd3333333333333L  # 0.3

    const-wide/16 v13, 0x0

    const-wide v15, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v17, 0x3ff0000000000000L  # 1.0

    const/16 v19, 0x1

    move-object v10, v9

    invoke-direct/range {v10 .. v19}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    iget-object v4, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    add-int/lit8 v4, v1, -0x32

    iget v9, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    sub-int/2addr v9, v1

    sub-int/2addr v4, v9

    neg-int v4, v4

    iget-boolean v9, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v9, :cond_f9

    iget v4, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    add-int/lit8 v4, v4, 0x32

    sub-int/2addr v4, v1

    neg-int v4, v4

    :cond_f9
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v4

    invoke-direct {v1, v6, v4, v6, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v3, Landroid/view/animation/OplusBezierInterpolator;

    const-wide v10, 0x3fd3333333333333L  # 0.3

    const-wide/16 v12, 0x0

    const-wide v14, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v16, 0x3ff0000000000000L  # 1.0

    const/16 v18, 0x1

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Landroid/view/animation/OplusBezierInterpolator;-><init>(DDDDZ)V

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_13a
    :goto_13a
    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 6

    invoke-super {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->initViews()V

    const v0, 0x7f0a0488

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/RoundImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/RoundImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    const v0, 0x7f0a0486

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/views/RoundImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    iget v1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v3

    :goto_31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageRadius:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mIconRadius:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v1, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v3

    :goto_5d
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackIcon:Lcom/android/launcher/views/RoundImageView;

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageRadius:I

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setRoundRadius(I)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070aa2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRadius:I

    goto :goto_8e

    :cond_7f
    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070aa1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRadius:I

    :goto_8e
    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string v1, "initViews: mImageRadius = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIconRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mIconRadius:I

    const-string v2, "QuickStep"

    invoke-static {v1, p0, v2, v0}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleActionImage()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleCalculatorImage()V

    goto :goto_1f

    :cond_c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1f

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleActionImage()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/common/util/BitmapUtils;->recycleBitmap(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->onAnimationEnd(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->onResume()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleBitmaps()V

    return-void
.end method

.method public onPageFinished()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onPageFinished()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->recycleBitmaps()V

    return-void
.end method

.method public onResume()V
    .registers 6

    invoke-super {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->onResume()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2e

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

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mActionBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher/views/RoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->resetState(II)V

    return-void
.end method

.method public onSuccess()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->stopGuideAnimation()V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startAnimation()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mSideSlipGesturesGuideMotionEvent:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchMoved(FF)V
    .registers 7

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    int-to-float v3, v2

    mul-float/2addr v3, p1

    float-to-int p1, v3

    int-to-float v3, v1

    mul-float/2addr v3, p2

    float-to-int p2, v3

    iput p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mOffset:I

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, p2}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    iget-boolean v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v3, :cond_20

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    :cond_20
    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRadius:I

    invoke-virtual {p1, p2}, Lcom/android/launcher/views/RoundImageView;->setRoundRadius(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    add-int/lit8 v0, p2, -0x32

    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    sub-int/2addr v1, p2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mBottom:I

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mTop:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRight:I

    iget v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeft:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_af

    const/16 v0, 0x8

    goto :goto_b0

    :cond_af
    const/4 v0, 0x0

    :goto_b0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    iget p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mRadius:I

    invoke-virtual {p1, p0}, Lcom/android/launcher/views/RoundImageView;->setRoundRadius(I)V

    return-void
.end method

.method public resetState(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string v1, "GesturesGuide"

    const-string/jumbo v2, "resetState"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mLeftImage:Lcom/android/launcher/views/RoundImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput p2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mImageView:Lcom/android/launcher/views/RoundImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setGestureGuideListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->setGestureGuideListener(Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;)V

    new-instance p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->mSideSlipGesturesGuideMotionEvent:Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;

    invoke-virtual {p1, p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideMotionEvent;->setGestureGuideTouchListener(Lcom/android/launcher/guide/side/SideSlipGesturesTouchLister;)V

    return-void
.end method
