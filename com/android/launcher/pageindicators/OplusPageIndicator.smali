.class public Lcom/android/launcher/pageindicators/OplusPageIndicator;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/android/launcher3/pageindicators/PageIndicator;
.implements Lcom/android/launcher3/SystemWindowInsettable;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher/IPropertyAnimation;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# static fields
.field private static final ALPHA_0:F = 0.0f

.field private static final ALPHA_1:F = 1.0f

.field private static final ALPHA_MAX:I = 0xff

.field private static final BEHINDANIMATOR_DURATION:J = 0x78L

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_BACKGROUND:I = -0x7f680835

.field private static final DEBUG_NORMAL:Z = false

.field private static final MAX_SUPPORT_PAGE_COUNT:I = 0x10

.field private static final MIN_CONTENT_SCALE:F = 0.85f

.field private static final NUM_4:I = 0x4

.field private static final NUM_5:I = 0x5

.field private static final SHOWEXITANIMATOR_DURATION:J = 0xc8L

.field private static final STROKE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OplusPageIndicator"

.field private static final TEXT_FORMAT_COUNT:I = 0xc


# instance fields
.field private mActiveBrightColor:I

.field private mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveLeft:F

.field private mActivePage:I

.field private mActiveRight:F

.field private mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

.field private mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mAssistPaint:Landroid/graphics/Paint;

.field private mAutoPlay:Z

.field private mBackgroundColor:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBright:Z

.field private mBrightColor:I

.field private mCalculatePages:I

.field private mCanvasScaleX:F

.field private mDotPaint:Landroid/graphics/Paint;

.field private mDrawIndicatorWithNumberFormat:Z

.field private mDrawablePaint:Landroid/graphics/Paint;

.field private mDuration:I

.field private mIndicatorAnim:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

.field private mIndicatorItemHeight:I

.field private mIndicatorItemSpacing:I

.field private mIndicatorItemWidth:I

.field private mInterpolation:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsFirst:Z

.field private mIsFolderHost:Z

.field private mIsPathIndicator:Z

.field private mIsRtl:Z

.field private mIsSupportAssistIndicator:Z

.field private mLastActivePage:I

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private mNeedAnimate:Z

.field private mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field public mNumPages:I

.field private mNumberFormat:Ljava/text/NumberFormat;

.field private mNumberTextPaint:Landroid/text/TextPaint;

.field private mPageChanged:Z

.field private mRadius:F

.field private mRectInWindow:Landroid/graphics/Rect;

.field private mScrolled:Z

.field private mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

.field private mSearchEntryBgWidth:I

.field public mSelectIndicatorColor:I

.field private mShowAssistScreenPoint:Z

.field private mShowBackground:Z

.field private mShowExitAnimator:Landroid/animation/ValueAnimator;

.field private mSlideLeftToRight:Z

.field private mStartTime:J

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mTextFormatWidth:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrackAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTrackRectF:Landroid/graphics/RectF;

.field public mUnSelectIndicatorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCanvasScaleX:F

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    iput p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextFormatWidth:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSize(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06040c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06040b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberFormat:Ljava/text/NumberFormat;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    sget-boolean p3, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p3, :cond_a5

    const p3, -0x7f680835

    invoke-virtual {p0, p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    :cond_a5
    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_d8

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-direct {p3, p1, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const p3, 0x7f0709ab

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    new-instance p2, Lcom/android/launcher3/search/SearchEntry;

    invoke-direct {p2, p1, p0}, Lcom/android/launcher3/search/SearchEntry;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    new-instance p2, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;Lcom/android/launcher/Launcher;)V

    iput-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorAnim:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

    return-void

    nop

    :array_d8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/pageindicators/OplusPageIndicator;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    return p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/pageindicators/OplusPageIndicator;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/pageindicators/OplusPageIndicator;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    return p0
.end method

.method private autoPlay()V
    .registers 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    if-lt v0, v1, :cond_1f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_1f
    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/high16 v2, 0x437f0000  # 255.0f

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_47

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_47
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_51

    mul-float v3, v0, v2

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_51
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_64

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_64

    :cond_5b
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_64

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_64
    :goto_64
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private autoPlayNumber()V
    .registers 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    if-lt v0, v1, :cond_f

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    :cond_f
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/pageindicators/OplusPageIndicator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private calculateFinalPostion(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    return-void
.end method

.method private calculateParam()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    return-void
.end method

.method private calculateParam(Z)V
    .registers 3

    if-nez p1, :cond_18

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_10
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_18
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveLeft:F

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveRight:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_24
    return-void
.end method

.method private calculateUseTextFormat(I)V
    .registers 3

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const/16 v0, 0xc

    if-le p1, v0, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    return-void
.end method

.method private computeExpandedOffset(FIIII)F
    .registers 8

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p3

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    const/high16 v1, 0x40000000  # 2.0f

    if-ltz p0, :cond_21

    if-nez v0, :cond_11

    return p1

    :cond_11
    add-int/lit8 p4, p4, -0x28

    div-int/lit8 p4, p4, 0xa

    const/high16 p0, 0x41a00000  # 20.0f

    rsub-int/lit8 p1, p3, 0xb

    mul-int/2addr p1, p4

    int-to-float p1, p1

    div-float/2addr p1, v1

    add-float/2addr p1, p0

    mul-int/2addr p4, p2

    int-to-float p0, p4

    add-float/2addr p1, p0

    return p1

    :cond_21
    if-nez v0, :cond_24

    return p1

    :cond_24
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/2addr p0, p5

    div-int/2addr p0, v0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p1, p0

    return p1
.end method

.method private drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_40

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    if-eqz v3, :cond_1c

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v4

    goto :goto_22

    :cond_1c
    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v4, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v4

    :goto_22
    invoke-direct {p0, v4, v2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v5

    sub-float/2addr v5, v4

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget-boolean v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v6, :cond_35

    if-nez v2, :cond_35

    invoke-direct {p0, p1, v5}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAssistIndicator(Landroid/graphics/Canvas;F)V

    goto :goto_38

    :cond_35
    invoke-direct {p0, p1, v5, v2, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V

    :goto_38
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_40
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawSelectorIndicator(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_4a

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    :cond_4a
    return-void
.end method

.method private drawAssistIndicator(Landroid/graphics/Canvas;F)V
    .registers 9

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x40c00000  # 6.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    float-to-int v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, -0x1

    :goto_11
    const/4 v3, 0x1

    if-gt v2, v3, :cond_38

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput p2, v3, Landroid/graphics/RectF;->left:F

    int-to-float v4, v1

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v4

    iput v5, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iput v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x40000000  # 2.0f

    div-float v4, v0, v4

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_38
    return-void
.end method

.method private drawBackgroundIfNeeded(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0xff

    goto :goto_16

    :cond_e
    move v0, v1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundAlpha()I

    move-result v0

    :goto_16
    if-lez v0, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    if-eq v3, v2, :cond_24

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowBackground:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    :cond_24
    if-lez v0, :cond_68

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getBackgroundPadding()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    :cond_41
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    add-int v3, v2, v1

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_68
    return-void
.end method

.method private drawBitmapIndicator(Landroid/graphics/Canvas;)V
    .registers 14

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-nez v0, :cond_aa

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v0, :cond_a3

    add-int/lit8 v4, v0, -0x1

    if-ne v3, v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    if-eqz v4, :cond_25

    invoke-virtual {p0, v3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v5

    goto :goto_2b

    :cond_25
    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v5, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v5

    :goto_2b
    invoke-direct {p0, v5, v3, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v6

    sub-float/2addr v6, v5

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v5

    float-to-int v5, v6

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ne v3, v6, :cond_3c

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    :cond_3c
    iget-boolean v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v6, :cond_45

    if-nez v3, :cond_45

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_47

    :cond_45
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_47
    iget-object v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v7, v4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    move-result v4

    const/16 v7, 0xff

    if-ne v4, v7, :cond_5b

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    add-int/2addr v8, v1

    invoke-virtual {v6, v5, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_76

    :cond_5b
    iget v8, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    mul-int v9, v4, v8

    div-int/2addr v9, v7

    iget v10, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    mul-int v11, v4, v10

    div-int/2addr v11, v7

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v5

    div-int/lit8 v7, v9, 0x2

    sub-int/2addr v8, v7

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    div-int/lit8 v7, v11, 0x2

    sub-int/2addr v10, v7

    add-int/2addr v9, v8

    add-int/2addr v11, v10

    invoke-virtual {v6, v8, v10, v9, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_76
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    int-to-float v6, v5

    invoke-virtual {v4, v3, v6}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->putPageLeft(IF)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v4, v3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    move-result v4

    if-eqz v4, :cond_9f

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    add-int/2addr v7, v1

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_a3
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_aa

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    :cond_aa
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCanvasScaleX:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawNumberFormatIndicator(Landroid/graphics/Canvas;)V

    goto :goto_29

    :cond_1b
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawAnimateBitmapIndicator(Landroid/graphics/Canvas;)V

    goto :goto_29

    :cond_26
    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBitmapIndicator(Landroid/graphics/Canvas;)V

    :goto_29
    return-void
.end method

.method private drawNumberFormatIndicator(Landroid/graphics/Canvas;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFormatNumberText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz p1, :cond_43

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlayNumber()V

    :cond_43
    return-void
.end method

.method private drawSelectorIndicator(Landroid/graphics/Canvas;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {v1, v2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getLeft(I)F

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getEndxByPosition(FII)F

    move-result v0

    sub-float/2addr v0, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolation:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :cond_24
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnSelectorIndicator(Landroid/graphics/Canvas;FIZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1, p3}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getPageSwitchAlpha(I)I

    move-result p3

    if-eqz p3, :cond_31

    iget p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float v1, p2, p4

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, p4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getAlpha()I

    move-result p4

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float/2addr p2, p3

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_58

    :cond_31
    iget-object p3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v1, p4}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getAnimAlpha(Z)I

    move-result p4

    int-to-float p4, p4

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p4, v1

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p3

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    add-float/2addr p2, v1

    int-to-float v0, v0

    mul-float/2addr v1, p4

    iget-object p4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_58
    return-void
.end method

.method private getEndxByPosition(FII)F
    .registers 12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    iget v7, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->computeExpandedOffset(FIIII)F

    move-result p0

    return p0
.end method

.method private getFormatNumberText()Ljava/lang/String;
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v1, v1, 0x1

    :goto_9
    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_10
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    :goto_12
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberFormat:Ljava/text/NumberFormat;

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPageIndex(Landroid/view/MotionEvent;)I
    .registers 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v0, :cond_1d

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    :cond_1d
    const/4 v1, 0x1

    if-gt p1, v3, :cond_21

    goto :goto_35

    :cond_21
    move v0, v1

    :goto_22
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-ge v0, v2, :cond_35

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v2, v4

    if-lt p1, v3, :cond_31

    if-gt p1, v2, :cond_31

    goto :goto_35

    :cond_31
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_22

    :cond_35
    :goto_35
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    add-int/lit8 p1, p0, -0x1

    if-le v0, p1, :cond_3d

    add-int/lit8 v0, p0, -0x1

    :cond_3d
    return v0
.end method

.method private initIndicatorPaint(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_29

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    :cond_29
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_40

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    :cond_40
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_57

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    :cond_57
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8a

    :cond_69
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_75

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    :cond_75
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_80

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    :cond_80
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :goto_8a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsShadowLayer(Z)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePaintsColor()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_9b

    const p1, 0x7f06065a

    goto :goto_9e

    :cond_9b
    const p1, 0x7f060659

    :goto_9e
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    return-void
.end method

.method private synthetic lambda$onPageBeginTransition$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onPageEndTransition$0(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startTrackAnimation()V
    .registers 7

    const-string v0, "OplusPageIndicator"

    const-string/jumbo v1, "startTrackAnimation "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_65

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_6c

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x78

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;

    invoke-direct {v4, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$1;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v0, [F

    fill-array-data v4, :array_74

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;

    invoke-direct {v2, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$2;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;

    invoke-direct {v3, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$3;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v4, v0, v1

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_65
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_6c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_74
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private stopTrackAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_f
    return-void
.end method

.method private updatePaintsColor()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_d

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    goto :goto_f

    :cond_d
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    :goto_f
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_19

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveBrightColor:I

    goto :goto_1b

    :cond_19
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_25

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    goto :goto_27

    :cond_25
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    :goto_27
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2a
    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_31

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBrightColor:I

    goto :goto_33

    :cond_31
    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    :goto_33
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private updatePaintsShadowLayer(Z)V
    .registers 2

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_1b

    :cond_16
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    :goto_1b
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    goto :goto_3f

    :cond_21
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    goto :goto_3a

    :cond_35
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawablePaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    :goto_3a
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updatePaintShadowLayer(Landroid/graphics/Paint;)V

    :goto_3f
    return-void
.end method

.method private updatePortraitBottomMargin(ILcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;)I
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v1, :cond_21

    iget-boolean p2, p2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p2, :cond_21

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-nez p2, :cond_21

    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p2

    iget p3, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p3, p2

    iput p3, p4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr p1, p2

    :cond_21
    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p2, :cond_52

    sget-object p2, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result p3

    if-eqz p3, :cond_52

    invoke-virtual {p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_52

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2, p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBottomSearchHeight(Landroid/content/Context;)I

    move-result p0

    add-int/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bottomMargin = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OplusPageIndicator"

    const-string p3, "BottomSearchManager"

    invoke-static {p2, p3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    return p1
.end method

.method private updateTrackRectF(FF)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTrackRectF:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Landroid/graphics/RectF;->left:F

    iput p2, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public cancelPressDragging()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->cancelPressDragging()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntryView;->isPressingAnim()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryView;->startAnimateNormalAnim()V

    :cond_22
    return-void
.end method

.method public cancelShowExitAnimator()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public getCalculatePages()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    return p0
.end method

.method public getLeftByPosition(I)F
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v1, p0

    mul-int/2addr v1, p1

    add-int/2addr v1, v0

    int-to-float p0, v1

    return p0
.end method

.method public getRealWidth()I
    .registers 3

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_10

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextFormatWidth:I

    if-lez v0, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0

    :cond_10
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidth(I)I

    move-result p0

    return p0
.end method

.method public getSearchEntry()Lcom/android/launcher3/search/SearchEntry;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    return-object p0
.end method

.method public getSwitchTargetPage(Landroid/view/MotionEvent;)I
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getPageIndex(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    return v0

    :cond_8
    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v1, :cond_12

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_12
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v2, :cond_19

    add-int/lit8 v2, p1, -0x1

    goto :goto_1a

    :cond_19
    move v2, p1

    :goto_1a
    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eqz v1, :cond_27

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    sub-int/2addr v1, p1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    xor-int/lit8 p0, p0, 0x1

    sub-int p1, v1, p0

    :cond_27
    if-eq v3, p1, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public getTargetWidth(I)I
    .registers 4

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public getTextColor()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    return p0
.end method

.method public getTypedValue(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/R$styleable;->OplusPageIndicator:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSelectIndicatorColor:I

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mUnSelectIndicatorColor:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f050024

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050023

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p1, :cond_3b

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3b

    :cond_39
    move p1, v0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move p1, v2

    :goto_3c
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-nez p2, :cond_49

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_49

    :cond_47
    move p1, v0

    goto :goto_4a

    :cond_49
    :goto_49
    move p1, v2

    :goto_4a
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v0

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v2

    const-string p0, "getTypedValue,usePathIndicator : %s, mIsPathIndicator: %s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusPageIndicator"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initSearchEntryView()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->initViewIfNeeded()V

    return-void
.end method

.method public isFolderHost()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    return p0
.end method

.method public isInView(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_25
    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isPressDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p0

    return p0
.end method

.method public isSearchEntryEnable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->registerStateChangeListener()V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->registerObserver()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->unregisterStateChangeListener()V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->unRegisterObserver()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawBackgroundIfNeeded(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->drawContent(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRectInWindow:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    aget v0, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePivot()V

    :cond_28
    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateUseTextFormat(I)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getDrawPageNum()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTargetWidth(I)I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-eqz v0, :cond_95

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result p2

    if-eqz p2, :cond_35

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ae9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3f

    :cond_35
    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorNumberTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_3f
    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFormatNumberText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextFormatWidth:I

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-eqz p2, :cond_82

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result p2

    if-eqz p2, :cond_7a

    const p2, 0x7f070d7c

    goto :goto_7d

    :cond_7a
    const p2, 0x7f070d75

    :goto_7d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_92

    :cond_82
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    add-int/2addr p1, p2

    :goto_92
    move p2, p1

    move p1, v0

    goto :goto_ae

    :cond_95
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_a2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_ae

    :cond_a2
    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v0

    :goto_ae
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam(Z)V

    return-void
.end method

.method public onPageBeginTransition()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher/pageindicators/a;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher/pageindicators/a;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2f
    return-void
.end method

.method public onPageEndTransition()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/pageindicators/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/pageindicators/a;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowExitAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3b
    return-void
.end method

.method public onWallpaperBrightnessChanged()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBright:Z

    if-ne v1, v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->initIndicatorPaint(Z)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry;->onWallpaperBrightChanged()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public pauseAnimations()V
    .registers 1

    return-void
.end method

.method public requireAnimate()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public resetBgPadding()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->resetBgPadding()V

    return-void
.end method

.method public resetSearchEntryState()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCanvasScaleX:F

    return-void
.end method

.method public setActiveMarker(I)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, v1, :cond_6f

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_66

    :cond_1b
    if-eq v0, p1, :cond_1f

    move p1, v2

    goto :goto_20

    :cond_1f
    move p1, v3

    :goto_20
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    if-eqz v1, :cond_5e

    if-eqz p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPageChangeAnimating()Z

    move-result p1

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz p1, :cond_49

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-le v0, p1, :cond_4f

    goto :goto_4d

    :cond_49
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ge v0, p1, :cond_4f

    :goto_4d
    move p1, v2

    goto :goto_50

    :cond_4f
    move p1, v3

    :goto_50
    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSlideLeftToRight:Z

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-direct {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateFinalPostion(I)V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->stopTrackAnimation()V

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->startTrackAnimation()V

    goto :goto_66

    :cond_5e
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFirst:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->calculateParam()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_66
    iput-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-ne v0, p1, :cond_7b

    iput-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    goto :goto_7b

    :cond_6f
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_7b
    :goto_7b
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-eq p1, v0, :cond_92

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->isPressDragging()Z

    move-result p1

    if-eqz p1, :cond_92

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLastActivePage:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startDragSwitchPageAnim(II)V

    :cond_92
    return-void
.end method

.method public setAlphaIfNeeded(FZ)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_11

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorAlphaAnim(F)V

    goto :goto_23

    :cond_11
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->getIndicatorAlphaAnim()Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/config/AnimationConstant;->isAnimatorRunning(Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_23
    return-void
.end method

.method public setAnimAlpha(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_23

    :cond_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_23
    :goto_23
    return-void
.end method

.method public setAnimScaleX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleX(F)V

    :cond_9
    return-void
.end method

.method public setAnimScaleY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleY(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransX(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationX(F)V

    :cond_9
    return-void
.end method

.method public setAnimTransY(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationY(F)V

    :cond_9
    return-void
.end method

.method public setAnimVisibility(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->requireAnimate()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    :cond_20
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    :goto_23
    return-void
.end method

.method public setAnimate(Z)V
    .registers 4

    const-string/jumbo v0, "setAnimate,animate :"

    const-string v1, "OplusPageIndicator"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentActiveMarker()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    :goto_b
    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setActiveMarker(I)V

    return-void
.end method

.method public setFolderHost(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public setMarkersCount(I)V
    .registers 5

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCalculatePages:I

    iget v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-ltz p1, :cond_d

    iget-boolean v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result p1

    if-nez p1, :cond_23

    const-string/jumbo p1, "setMarkersCount oldNumPages= "

    const-string v1, "; mNumPages = "

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/d;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const-string v2, "OplusPageIndicator"

    invoke-static {p1, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_23
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    if-eq v0, p1, :cond_5d

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p1}, Lcom/android/launcher3/search/SearchEntry;->getView()Lcom/android/launcher3/search/SearchEntryView;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/search/SearchEntryView;->setBgWidthOffset(FZ)V

    :cond_3a
    iget p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const/16 v1, 0xc

    if-le p1, v1, :cond_59

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumberTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getFormatNumberText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mTextFormatWidth:I

    :cond_59
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_60

    :cond_5d
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :goto_60
    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsFolderHost:Z

    if-nez p1, :cond_6f

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-nez p1, :cond_6f

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->onPageNumChanged(II)Z

    :cond_6f
    return-void
.end method

.method public setPivotX(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setPivotX(F)V

    :cond_a
    return-void
.end method

.method public setPivotY(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setPivotY(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setPivotY(F)V

    :cond_a
    return-void
.end method

.method public setScaleX(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setScaleX(F)V

    :cond_a
    return-void
.end method

.method public setScaleY(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setScaleY(F)V

    :cond_a
    return-void
.end method

.method public setScroll(II)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDrawIndicatorWithNumberFormat:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_93

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNeedAnimate:Z

    if-nez v0, :cond_e

    goto/16 :goto_93

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mScrolled:Z

    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v2, :cond_19

    add-int/lit8 v1, v1, -0x1

    :cond_19
    if-le v1, v0, :cond_21

    if-lez p2, :cond_21

    add-int/lit8 v2, v1, -0x1

    div-int/2addr p2, v2

    goto :goto_29

    :cond_21
    iget-object p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    :goto_29
    iget-boolean v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsRtl:Z

    if-eqz v2, :cond_32

    sub-int/2addr v1, v0

    div-int v3, p1, p2

    sub-int/2addr v1, v3

    goto :goto_34

    :cond_32
    div-int v1, p1, p2

    :goto_34
    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    if-eqz v3, :cond_3a

    add-int/lit8 v1, v1, 0x1

    :cond_3a
    if-ltz p1, :cond_48

    if-eqz v2, :cond_43

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-gt v1, v2, :cond_48

    goto :goto_49

    :cond_43
    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    if-lt v1, v2, :cond_48

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    iget v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActivePage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getLeftByPosition(I)F

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mPageChanged:Z

    if-nez v3, :cond_93

    rem-int/2addr p1, p2

    if-eqz v0, :cond_6b

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float p2, p2

    add-float/2addr p2, v2

    int-to-float p1, p1

    add-float/2addr p2, p1

    invoke-direct {p0, v2, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    goto :goto_90

    :cond_6b
    if-lez p1, :cond_81

    const/high16 v0, 0x3f800000  # 1.0f

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    sub-float/2addr v0, p1

    int-to-float p1, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    sub-float p1, v2, p1

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float p2, p2

    add-float/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    goto :goto_90

    :cond_81
    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    add-float/2addr p1, v2

    iget p2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    int-to-float p2, p2

    add-float/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateTrackRectF(FF)V

    :goto_90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_93
    :goto_93
    return-void
.end method

.method public setSearchEntryBgWidth(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getRealWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3f59999a  # 0.85f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mCanvasScaleX:F

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntryBgWidth:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setShouldAutoHide(Z)V
    .registers 2

    return-void
.end method

.method public setShowAssistScreenPoint(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mShowAssistScreenPoint:Z

    return-void
.end method

.method public setSize(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorSpacingPx:I

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorWidthPx:I

    iget-object v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/OplusInvariantDeviceProfile;->indicatorHeightPx:I

    if-nez p1, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    if-ne v0, v3, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    if-ne v1, v3, :cond_2c

    iget v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    if-eq v2, v3, :cond_78

    :cond_2c
    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemSpacing:I

    iput v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemWidth:I

    iput v2, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorItemHeight:I

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsPathIndicator:Z

    if-eqz v0, :cond_3d

    int-to-float v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mRadius:F

    goto :goto_73

    :cond_3d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNormalIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0805cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mActiveIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIsSupportAssistIndicator:Z

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_73

    :cond_69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAssistIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_73
    if-nez p1, :cond_78

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_78
    return-void
.end method

.method public setTranslationX(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setTranslationX(F)V

    :cond_a
    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->setTranslationY(F)V

    :cond_a
    return-void
.end method

.method public setWindowInsets(Landroid/graphics/Rect;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    const v2, 0x7f070d7c

    goto :goto_1d

    :cond_1a
    const v2, 0x7f070d75

    :goto_1d
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    const/4 v5, 0x0

    if-eqz v3, :cond_5c

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_57

    :cond_55
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_57
    const/4 p1, -0x2

    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto/16 :goto_1da

    :cond_5c
    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v6}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/Launcher;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_f8

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, p1, v5, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_c5

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/config/ScreenInfo;->isNavBarHidden(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9e

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070239

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_b2

    :cond_9e
    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070238

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    :goto_b2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/config/ScreenInfo;->isNavBarHidden(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto/16 :goto_1d8

    :cond_bc
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v0

    add-int/2addr p1, v0

    goto/16 :goto_1d8

    :cond_c5
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, p1, v5, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705c6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/android/launcher3/OplusDeviceProfile;->getWorkspaceInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    sget-boolean v0, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v0, :cond_ef

    goto :goto_f5

    :cond_ef
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v5

    :goto_f5
    add-int/2addr p1, v5

    goto/16 :goto_1d8

    :cond_f8
    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v4, v5, :cond_117

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v4

    if-nez v4, :cond_117

    invoke-virtual {v6}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher/pagepreview/PagePreviewManager;->getPagePreviewLpSize(Z)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    add-float/2addr v1, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    goto/16 :goto_1d8

    :cond_117
    iget-object v3, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070746

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d71

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070d7d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p0, v1, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v1

    if-eqz v1, :cond_186

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070742

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070743

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    add-int/2addr v7, v8

    sget-boolean v8, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v8, :cond_181

    add-int/2addr v6, v3

    goto :goto_184

    :cond_181
    add-int/2addr v1, v5

    add-int v6, v1, v4

    :goto_184
    add-int/2addr v7, v6

    goto :goto_1d4

    :cond_186
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v1, :cond_1ba

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v5, v6, :cond_1ba

    iget-object v1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v1, v8}, Lcom/android/common/config/ScreenInfo;->getRealNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/launcher3/OplusDeviceProfile;->injectBuildDeviceProfileContext(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWindowInsets: windowInsets.bottom=0 but getNavigationMode!=NO_BUTTON new bottom="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusPageIndicator"

    invoke-static {v6, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ba
    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    add-int/2addr v5, v1

    sget-boolean v1, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz v1, :cond_1c2

    goto :goto_1c6

    :cond_1c2
    iget v1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mHotseatMarginBottomPx:I

    add-int v3, v1, v4

    :goto_1c6
    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070d7a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v7, v5, v1

    :goto_1d4
    invoke-direct {p0, v7, v0, p1, v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updatePortraitBottomMargin(ILcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Landroid/widget/FrameLayout$LayoutParams;)I

    move-result p1

    :goto_1d8
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_1da
    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/search/SearchEntry;->setWindowInsets(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public skipAnimationsToEnd()V
    .registers 1

    return-void
.end method

.method public startAnimation(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;

    invoke-direct {v0, p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator$4;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V

    iput-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mInterpolator:Landroid/view/animation/Interpolator;

    :cond_b
    iput p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mStartTime:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAutoPlay:Z

    invoke-direct {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->autoPlay()V

    return-void
.end method

.method public startDragWorkspace(Z)V
    .registers 4

    const-string v0, "Start drag workspace, swipeLeft = "

    const-string v1, "OplusPageIndicator"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mSearchEntry:Lcom/android/launcher3/search/SearchEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/search/SearchEntry;->doReplaceAnimation(ZZ)V

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mIndicatorAnim:Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pageindicators/IndicatorTransitionAnimation;->start(Z)V

    return-void
.end method

.method public startPressDragging()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mAnimHelper:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startPressDragging()V

    return-void
.end method

.method public supportQuickDrag()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mNumPages:I

    const/16 v0, 0xc

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public updateBackground(I)V
    .registers 2

    return-void
.end method

.method public updateInsetForChildrenMode()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/InsettableFrameLayout;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setWindowInsets(Landroid/graphics/Rect;)V

    :cond_f
    return-void
.end method

.method public updatePivot()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->setPivotToScaleWithSelf(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher/pageindicators/OplusPageIndicator;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setPivotY(F)V

    goto :goto_4a

    :cond_2a
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c94

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setPivotY(F)V

    :cond_4a
    :goto_4a
    return-void
.end method
