.class Lcom/android/launcher/guide/appguide/AppGuidePage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIME_ALPHA:I = 0xbe

.field private static final ANIMATION_TIME_CARD:I = 0x96

.field private static final ANIMATION_TIME_INDICATOR:I = 0x28

.field private static final LINE_COUNT_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppGuidePage"

.field private static final THRESHOLD_ADJUST_CARD_POSITION_IN_LANDSCAPE_SCREEN:F = 1.0f

.field private static final THRESHOLD_ADJUST_CARD_POSITION_IN_PORTRAIT_SCREEN:F = 1.5f


# instance fields
.field private mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

.field private mAnchorIconRect:Landroid/graphics/Rect;

.field private final mAnchorOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mAnimCardEndRect:Landroid/graphics/Rect;

.field private mAnimCardStartRect:Landroid/graphics/Rect;

.field private mAnimClose:Landroid/animation/Animator;

.field private mAnimIndicatorEndRect:Landroid/graphics/Rect;

.field private mAnimIndicatorStartRect:Landroid/graphics/Rect;

.field private mAnimOpen:Landroid/animation/Animator;

.field private mBtnClose:Landroid/widget/ImageButton;

.field private mCardRadius:I

.field private mCurrentLineCount:I

.field private mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

.field private final mDeferredShowRunnable:Ljava/lang/Runnable;

.field private mGuideView:Landroid/view/View;

.field private mIsShowReady:Z

.field private mIsShowing:Z

.field private mIsVisibleDefer:Z

.field private mIvIndicatorBottom:Landroid/widget/ImageView;

.field private mIvIndicatorTop:Landroid/widget/ImageView;

.field private mIvPicture:Landroid/widget/ImageView;

.field private mLastWindowSizeRect:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLlIconContainer:Landroid/widget/LinearLayout;

.field private mMultiLineMinHeight:I

.field private mOnClickAppIconListener:Landroid/view/View$OnClickListener;

.field private mOnClickCloseBtnListener:Landroid/view/View$OnClickListener;

.field private mOnClickImageCardListener:Landroid/view/View$OnClickListener;

.field private mOnClickOutsideListener:Landroid/view/View$OnClickListener;

.field private mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

.field private mOneLineMinHeight:I

.field private mSampleImg:Landroid/graphics/Bitmap;

.field private mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSummaryText:Ljava/lang/String;

.field private mTvSummary:Landroid/widget/TextView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/guide/appguide/AppGuidePage$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuidePage$1;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    new-instance v0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/guide/appguide/AppGuidePage$2;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mDeferredShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardEndRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorStartRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorEndRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLastWindowSizeRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/appguide/AppGuidePage;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->updateViewAttributes()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/android/launcher/guide/appguide/AppGuidePage;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mDeferredShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/guide/appguide/AppGuidePage;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->updateViewAttributes()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/guide/appguide/AppGuidePage;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsVisibleDefer:Z

    return p0
.end method

.method public static synthetic access$202(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsVisibleDefer:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->startOpenAnim()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->onAnimationStart(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->onAnimationEnd(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$initViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->performShow()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$updateViewAttributes$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$performShow$0()V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$initViews$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$initViews$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->lambda$initViews$3(Landroid/view/View;)V

    return-void
.end method

.method private inflateViews()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0157

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private initViews()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLlIconContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mBtnClose:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/cardview/COUICardView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a0576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mTvSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const v1, 0x7f0a02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    new-instance v1, Lcom/android/launcher/guide/appguide/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/e;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher/guide/appguide/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/e;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mBtnClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/launcher/guide/appguide/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/e;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    new-instance v1, Lcom/android/launcher/guide/appguide/e;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/e;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSummaryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mTvSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSummaryText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a3
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSampleImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_ac

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_ac
    return-void
.end method

.method private initWindowAttributes()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->createWindowAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private synthetic lambda$initViews$1(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickAppIconListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$initViews$2(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickOutsideListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$initViews$3(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickCloseBtnListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$initViews$4(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickImageCardListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$performShow$0()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->updateViewAttributes()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->startOpenAnim()V

    :cond_9
    iput-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsVisibleDefer:Z

    return-void
.end method

.method private synthetic lambda$updateViewAttributes$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private notifyDataChanged()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher/guide/appguide/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method private onAnimationEnd(Z)V
    .registers 4

    const-string/jumbo v0, "onAnimationEnd"

    const-string v1, "AppGuidePage"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

    if-eqz p0, :cond_1e

    invoke-interface {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;->onHided()V

    :cond_1e
    return-void
.end method

.method private onAnimationStart(Z)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;->onShowed()V

    :cond_f
    return-void
.end method

.method private performShow()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher/guide/appguide/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    return-void
.end method

.method private setStatusBarExpandable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_13

    const-class v1, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p0, :cond_2a

    if-eqz p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1d

    :cond_1b
    const/high16 p1, 0x10000

    :goto_1d
    :try_start_1d
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception p0

    const-string/jumbo p1, "setStatusBarExpandable failed: "

    const-string v0, "AppGuidePage"

    invoke-static {p1, p0, v0}, Lcom/android/launcher/e;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private setupIndicatorTintByImage()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSampleImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/guide/appguide/AppGuideHelper;->getImageSampleColor(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSampleImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppGuideImageSampleColor: 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppGuidePage"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startAnim(Landroid/animation/Animator;Z)V
    .registers 3

    if-nez p1, :cond_9

    invoke-direct {p0, p2}, Lcom/android/launcher/guide/appguide/AppGuidePage;->onAnimationStart(Z)V

    invoke-direct {p0, p2}, Lcom/android/launcher/guide/appguide/AppGuidePage;->onAnimationEnd(Z)V

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startCloseAnim()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimClose:Landroid/animation/Animator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->startAnim(Landroid/animation/Animator;Z)V

    return-void
.end method

.method private startOpenAnim()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimOpen:Landroid/animation/Animator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/guide/appguide/AppGuidePage;->startAnim(Landroid/animation/Animator;Z)V

    return-void
.end method

.method private updateViewAttributes()Z
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v0, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v2

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-nez v1, :cond_26

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v2, Lcom/android/launcher/guide/appguide/f;

    const/4 v4, 0x3

    invoke-direct {v2, v0, v4}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v3

    :cond_26
    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mTvSummary:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    iget v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCurrentLineCount:I

    if-eq v4, v5, :cond_46

    iput v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCurrentLineCount:I

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mTvSummary:Landroid/widget/TextView;

    if-gt v4, v2, :cond_39

    iget v3, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOneLineMinHeight:I

    goto :goto_3b

    :cond_39
    iget v3, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mMultiLineMinHeight:I

    :goto_3b
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    iget-object v0, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mDeferredShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_46
    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v4, v1, v3}, Lcom/android/launcher3/OplusBubbleTextView;->applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v2, :cond_6a

    move v4, v2

    goto :goto_6b

    :cond_6a
    move v4, v3

    :goto_6b
    iget-object v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    if-eqz v4, :cond_75

    move v6, v3

    goto :goto_7b

    :cond_75
    iget-object v6, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v6

    :goto_7b
    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v7, v6, v5, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070142

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070144

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    aget v3, v1, v3

    aget v1, v1, v2

    iget-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v8, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    iget-object v9, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    iget-object v11, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getWidth()I

    move-result v11

    iget-object v12, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getHeight()I

    move-result v12

    div-int/lit8 v13, v11, 0x2

    iget-object v14, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v7

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v8

    add-int/2addr v14, v7

    div-int/lit8 v16, v2, 0x2

    move/from16 v17, v13

    add-int v13, v16, v3

    move/from16 v16, v6

    div-int/lit8 v6, v5, 0x2

    if-eqz v4, :cond_e8

    const/high16 v18, 0x3fc00000  # 1.5f

    goto :goto_ea

    :cond_e8
    const/high16 v18, 0x3f800000  # 1.0f

    :goto_ea
    move/from16 v19, v5

    int-to-float v5, v1

    move/from16 v20, v9

    int-to-float v9, v10

    mul-float v9, v9, v18

    cmpl-float v5, v5, v9

    if-lez v5, :cond_f8

    const/4 v5, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v5, 0x0

    :goto_f9
    sub-int v9, v13, v6

    div-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_101

    const/4 v9, 0x1

    goto :goto_102

    :cond_101
    const/4 v9, 0x0

    :goto_102
    if-ge v13, v6, :cond_106

    const/4 v13, 0x1

    goto :goto_107

    :cond_106
    const/4 v13, 0x0

    :goto_107
    if-eqz v5, :cond_11e

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-int/2addr v1, v12

    sub-int v7, v1, v10

    add-int/2addr v7, v15

    move/from16 v21, v10

    goto :goto_13b

    :cond_11e
    move/from16 v18, v13

    const/4 v13, 0x4

    move/from16 v21, v10

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    sub-int v10, v1, v12

    add-int/2addr v1, v12

    iget-object v13, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v13

    add-int/2addr v7, v1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setupIndicatorTintByImage()V

    move v1, v10

    :goto_13b
    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    int-to-float v13, v15

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    int-to-float v13, v14

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v10

    iget-object v13, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mBtnClose:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    const v14, 0x800003

    if-eqz v10, :cond_15c

    move v10, v14

    goto :goto_15f

    :cond_15c
    const v10, 0x800005

    :goto_15f
    iput v10, v13, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mBtnClose:Landroid/widget/ImageButton;

    invoke-virtual {v10, v13}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v10}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v10

    sub-int/2addr v7, v10

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    int-to-float v7, v7

    invoke-virtual {v10, v7}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLlIconContainer:Landroid/widget/LinearLayout;

    int-to-float v10, v3

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setX(F)V

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v7}, Lcom/android/common/config/ScreenInfo;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v7

    sub-int/2addr v1, v7

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLlIconContainer:Landroid/widget/LinearLayout;

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setHeight(I)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLlIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_1a2

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    goto :goto_1a4

    :cond_1a2
    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    :goto_1a4
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_1b4

    const/4 v4, 0x1

    iput v4, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1c7

    :cond_1b4
    iput v14, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v11

    div-int/lit8 v4, v4, 0x2

    iget-object v8, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v8

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    :goto_1c7
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIconRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    if-eqz v9, :cond_1d8

    div-int/lit8 v9, v20, 0x2

    sub-int/2addr v6, v9

    goto :goto_209

    :cond_1d8
    const-string v6, "Screen width can\'t contain a card view"

    const-string v7, "AppGuidePage"

    if-eqz v18, :cond_1fc

    sub-int v1, v19, v16

    :goto_1e0
    add-int v9, v4, v20

    if-le v9, v1, :cond_1e6

    sub-int/2addr v4, v2

    goto :goto_1e0

    :cond_1e6
    move/from16 v8, v16

    if-lt v4, v8, :cond_1ec

    move v6, v4

    goto :goto_209

    :cond_1ec
    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v2, Lcom/android/launcher/guide/appguide/f;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0

    :cond_1fc
    move/from16 v8, v16

    sub-int v1, v1, v20

    :goto_200
    if-ge v1, v8, :cond_204

    add-int/2addr v1, v2

    goto :goto_200

    :cond_204
    add-int v9, v1, v20

    if-lt v9, v8, :cond_316

    move v6, v1

    :goto_209
    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    int-to-float v4, v6

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setX(F)V

    if-eqz v5, :cond_214

    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorTop:Landroid/widget/ImageView;

    goto :goto_216

    :cond_214
    iget-object v1, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvIndicatorBottom:Landroid/widget/ImageView;

    :goto_216
    sub-int/2addr v3, v6

    const/4 v4, 0x2

    invoke-static {v2, v11, v4, v3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v2

    add-int v3, v2, v11

    iget-object v4, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardStartRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_225

    move/from16 v6, v21

    goto :goto_226

    :cond_225
    const/4 v6, 0x0

    :goto_226
    if-eqz v5, :cond_22b

    move/from16 v7, v21

    goto :goto_22c

    :cond_22b
    const/4 v7, 0x0

    :goto_22c
    invoke-virtual {v4, v2, v6, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardEndRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move/from16 v4, v20

    move/from16 v6, v21

    invoke-virtual {v2, v3, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorStartRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_23f

    move v4, v12

    goto :goto_240

    :cond_23f
    move v4, v3

    :goto_240
    if-eqz v5, :cond_244

    move v6, v12

    goto :goto_245

    :cond_244
    move v6, v3

    :goto_245
    move/from16 v5, v17

    invoke-virtual {v2, v5, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorEndRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Lcom/android/launcher/guide/appguide/AppGuidePage$3;

    invoke-direct {v2, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage$3;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    new-instance v3, Lcom/android/launcher/guide/appguide/d;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher/guide/appguide/d;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;Landroid/view/View;)V

    new-instance v4, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCardRadius:I

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardStartRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardEndRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v9, 0x96

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget-object v11, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorStartRect:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorEndRect:Landroid/graphics/Rect;

    invoke-direct {v7, v8, v8, v11, v12}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v1, v6}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v11, 0x28

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    const/4 v7, 0x2

    new-array v13, v7, [F

    fill-array-data v13, :array_326

    invoke-static {v13}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    const-wide/16 v14, 0xbe

    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v6, v7, v13

    const/4 v6, 0x1

    aput-object v4, v7, v6

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iput-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimOpen:Landroid/animation/Animator;

    new-instance v2, Lcom/android/launcher/guide/appguide/AppGuidePage$4;

    invoke-direct {v2, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage$4;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    new-instance v4, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget v6, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCardRadius:I

    int-to-float v6, v6

    iget-object v7, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardStartRect:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimCardEndRect:Landroid/graphics/Rect;

    invoke-direct {v4, v8, v6, v7, v13}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v6, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    iget-object v9, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorStartRect:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimIndicatorEndRect:Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v9, v10}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;-><init>(FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v6, v1, v7}, Lcom/android/launcher3/anim/RevealOutlineAnimation;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_32e

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v3, v6, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iput-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnimClose:Landroid/animation/Animator;

    return v5

    :cond_316
    const/4 v1, 0x0

    invoke-static {v7, v6}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v3, Lcom/android/launcher/guide/appguide/f;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v1

    :array_326
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_32e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public getIconView()Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public getLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public getWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_11

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-object p0

    :cond_11
    return-object v0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->startCloseAnim()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setStatusBarExpandable(Z)V

    return-void
.end method

.method public hideGuideView()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    :try_start_8
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_14
    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;->onHided()V

    :cond_1b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setStatusBarExpandable(Z)V

    return-void
.end method

.method public isShowing()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p3, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLastWindowSizeRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLastWindowSizeRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    if-eqz p3, :cond_2b

    if-nez p4, :cond_19

    goto :goto_2b

    :cond_19
    if-ne p2, p3, :cond_1d

    if-eq p1, p4, :cond_2a

    :cond_1d
    iget-object p3, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLastWindowSizeRect:Landroid/graphics/Rect;

    iput p2, p3, Landroid/graphics/Rect;->right:I

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;->onSizeChanged()V

    :cond_2a
    return-void

    :cond_2b
    :goto_2b
    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLastWindowSizeRect:Landroid/graphics/Rect;

    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public performAppIconClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSelfIcon:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    :cond_7
    return-void
.end method

.method public performCloseBtnClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mBtnClose:Landroid/widget/ImageButton;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    :cond_7
    return-void
.end method

.method public performImageCardClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCvCardView:Lcom/coui/appcompat/cardview/COUICardView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_7
    return-void
.end method

.method public performOutsideClick()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_7
    return-void
.end method

.method public setAnchor(Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mAnchorIcon:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSampleImg:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIvPicture:Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mLauncher:Lcom/android/launcher/Launcher;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mWindowManager:Landroid/view/WindowManager;

    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCardRadius:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOneLineMinHeight:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07014b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mMultiLineMinHeight:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mCurrentLineCount:I

    return-void
.end method

.method public setOnClickAppIconListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickAppIconListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickCloseBtnListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickCloseBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickImageCardListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickImageCardListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnClickOutsideListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnClickOutsideListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mOnStateChangedListener:Lcom/android/launcher/guide/appguide/AppGuidePage$OnStateChangedListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mSummaryText:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mTvSummary:Landroid/widget/TextView;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public show()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowing:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->notifyDataChanged()V

    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowReady:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mGuideView:Landroid/view/View;

    new-instance v1, Lcom/android/launcher/guide/appguide/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/guide/appguide/f;-><init>(Lcom/android/launcher/guide/appguide/AppGuidePage;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_18
    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->inflateViews()V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->initViews()V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->initWindowAttributes()V

    invoke-direct {p0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->performShow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage;->mIsShowReady:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->setStatusBarExpandable(Z)V

    return-void
.end method
