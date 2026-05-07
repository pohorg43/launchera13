.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;
.super Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final CAROUSEL_JSON:[Ljava/lang/String;

.field public static final DECODE_BITMAP_DELAYED_TIME:J = 0x64L

.field public static final GESTURES_ANIMATION_TIME:J = 0x14aL

.field private static final ROTATION_180:I = 0xb4


# instance fields
.field public mActionBitmap:Landroid/graphics/Bitmap;

.field private mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

.field private mGuideAnimationHeight:I

.field private mGuideAnimationWidth:I

.field private mGuideRecentAnimationHeight:I

.field private mGuideRecentAnimationWidth:I

.field public mHeight:I

.field public mIsAnimationRunning:Z

.field public mIsRtl:Z

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-string/jumbo v0, "side_gestures_left.json"

    const-string/jumbo v1, "side_gestures_right.json"

    const-string/jumbo v2, "side_gestures_home.json"

    const-string/jumbo v3, "side_gestures_recents.json"

    const-string/jumbo v4, "side_gestures_switch_app.json"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->CAROUSEL_JSON:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    iput p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    return-void
.end method

.method private setGuideAnimationLayout()V
    .registers 9

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v3, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v3, v4, :cond_6c

    if-eq v3, v7, :cond_59

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4c

    const/4 v4, 0x4

    if-eq v3, v4, :cond_40

    if-eq v3, v5, :cond_23

    move v3, v6

    goto :goto_7c

    :cond_23
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationWidth:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationHeight:I

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    div-int/2addr v3, v7

    div-int/lit8 v4, v1, 0x2

    sub-int v6, v3, v4

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070b34

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_7c

    :cond_40
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideRecentAnimationWidth:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideRecentAnimationHeight:I

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    goto :goto_57

    :cond_4c
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationHeight:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationWidth:I

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    :goto_57
    sub-int/2addr v3, v2

    goto :goto_7c

    :cond_59
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationWidth:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationHeight:I

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    sub-int/2addr v4, v2

    div-int/2addr v4, v7

    iget-boolean v7, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v7, :cond_69

    goto :goto_6a

    :cond_69
    move v6, v3

    :goto_6a
    move v3, v4

    goto :goto_7c

    :cond_6c
    iget v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationWidth:I

    iget v2, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationHeight:I

    iget v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    sub-int/2addr v3, v2

    div-int/2addr v3, v7

    iget-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v4, :cond_7c

    iget v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    sub-int v6, v4, v1

    :cond_7c
    :goto_7c
    iget-boolean v4, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v4, :cond_83

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_85

    :cond_83
    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_85
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    if-ne v0, v5, :cond_a2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    int-to-float v0, v2

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    :cond_a2
    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 4

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_26
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mHeight:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mWidth:I

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationWidth:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimationHeight:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b36

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideRecentAnimationWidth:I

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideRecentAnimationHeight:I

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->onMotionEventSuccess()V

    :cond_7
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    return-void
.end method

.method public onResume()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onResume()V

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v1, 0x1

    if-lez v0, :cond_21

    sget-object v2, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->CAROUSEL_JSON:[Ljava/lang/String;

    array-length v3, v2

    if-gt v0, v3, :cond_21

    iget-object v3, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_21
    iget-boolean v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsRtl:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_31

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const/high16 v2, 0x43340000  # 180.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_31
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->setGuideAnimationLayout()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->startGuideAnimation()V

    return-void
.end method

.method public onStop()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onStop()V

    invoke-virtual {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->stopGuideAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    return-void
.end method

.method public startGuideAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start guide animation mCurrentState:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const-string v3, "GesturesGuide"

    invoke-static {v1, v2, v3, v0}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method public stopGuideAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop guide animation mCurrentState:"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mCurrentState:I

    const-string v3, "GesturesGuide"

    invoke-static {v1, v2, v3, v0}, Lcom/android/launcher/download/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mGuideAnimation:Lcom/oplus/anim/EffectiveAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
