.class public Lcom/android/launcher/download/DownloadProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;,
        Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAUSE_ICON_LINE_HEIGHT_FACTOR:F = 0.288f

.field private static final DEFAULT_PAUSE_ICON_LINE_RADIUS:F = 1.0f

.field private static final DEFAULT_PAUSE_ICON_LINE_WIDTH_FACTOR:F = 0.07f

.field public static final DEFAULT_PROGRESS_TOTAL:F = 100.0f

.field private static final FINISH_MASK_ANIMA_DURATION:J = 0x1f4L

.field private static final FINISH_MASK_STROKE_WIDTH_MAX_SCALE:F = 0.85f

.field private static final INIT_CIRCLE_ANGLES:F = -90.0f

.field private static final INIT_SHOW_DURATION:J = 0xfaL

.field private static final MASK_LAYER_BACKGROUND_COLOR:I = -0x4e000000

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_CIRCLE_ANGLES:F = 360.0f

.field private static final MAX_DOWNLOAD_PROGRESS:F = 95.0f

.field private static final MAX_MASK_ALPHA:I = 0xb2

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_PROGRESS_STOKE_WIDTH:F = 1.0f

.field private static final PATH_INTERPOLATOR_PARAM_0:F = 0.0f

.field private static final PATH_INTERPOLATOR_PARAM_0_1:F = 0.1f

.field private static final PATH_INTERPOLATOR_PARAM_0_3:F = 0.3f

.field private static final PATH_INTERPOLATOR_PARAM_0_33:F = 0.33f

.field private static final PATH_INTERPOLATOR_PARAM_0_67:F = 0.67f

.field private static final PATH_INTERPOLATOR_PARAM_0_83:F = 0.83f

.field private static final PATH_INTERPOLATOR_PARAM_1:F = 1.0f

.field private static final PAUSE_DISMISS_ANIMA_DURATION:J = 0x190L

.field private static final PAUSE_SHOW_ANIMA_DURATION:J = 0x1a1L

.field private static final PROGRESS_BACKGROUND_COLOR:I = 0x4cffffff

.field private static final PROGRESS_CHANGE_ANIMA_DURATION:J = 0x10bL

.field private static final PROGRESS_CIRCLE_RADIUS_FACTOR:F = 0.28f

.field private static final PROGRESS_CIRCLE_RADIUS_SCALE_FACTOR:F = 0.7f

.field private static final PROGRESS_DISMISS_ANIMA_DURATION:J = 0x190L

.field private static final PROGRESS_FOREGROUND_COLOR:I = -0x1

.field private static final PROGRESS_SHOW_ANIMA_DURATION:J = 0x1a1L

.field private static final PROGRESS_STROKE_WIDTH_FACTOR:F = 0.107f

.field private static final PROPERTY_NAME_PROGRESS_RADIUS:Ljava/lang/String; = "progress_radius"

.field private static final PROPERTY_NAME_PROGRESS_STROKE:Ljava/lang/String; = "progress_stroke"

.field private static final SHIFT_LEFT_FOR_ALPHA:I = 0x18

.field private static final TAG:Ljava/lang/String; = "DownloadProgressDrawable"


# instance fields
.field private mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mBubbleTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProgress:F

.field private mCurrentState:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFinishMaskAnimator:Landroid/animation/ValueAnimator;

.field private mFinishMaskBitmap:Landroid/graphics/Bitmap;

.field private mFinishMaskBitmapPaint:Landroid/graphics/Paint;

.field private mFinishMaskCanvas:Landroid/graphics/Canvas;

.field private mFinishMaskContentPaint:Landroid/graphics/Paint;

.field private mIconBounds:Landroid/graphics/Rect;

.field private mIconVisibleSize:F

.field private mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private mInitDrawMask:Z

.field private mInitDrawProgress:Z

.field private mInitMaskAnimator:Landroid/animation/ValueAnimator;

.field private mInitMaskFraction:F

.field private mInitProgressAnimator:Landroid/animation/ValueAnimator;

.field private mInitProgressFraction:F

.field private mInstallAnimationListener:Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;

.field private mInvalidateDelegate:Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;

.field private mNeedInitAnim:Z

.field private mPauseIconAlpha:I

.field private mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconLineHeight:F

.field private mPauseIconLineRadius:F

.field private mPauseIconLineWidth:F

.field private mPauseIconScale:F

.field private mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconVisibleRect:Landroid/graphics/RectF;

.field private mPausePaint:Landroid/graphics/Paint;

.field private mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

.field private mProgressAlpha:I

.field private mProgressChangeAnimator:Landroid/animation/ValueAnimator;

.field private mProgressCircleRadius:F

.field private mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mProgressStrokeWidth:F

.field private mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

.field private mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

.field private mProgressTotal:F

.field private mProgressVisibleRect:Landroid/graphics/RectF;

.field private mShouldPlayStartupAnimation:Z

.field private mStartupAnimaSet:Landroid/animation/AnimatorSet;

.field private mStartupAnimator:Landroid/animation/ValueAnimator;

.field private mToPendingAnimaSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V
    .registers 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x42c80000  # 100.0f

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressFraction:F

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskFraction:F

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconScale:F

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mBubbleTextViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_42

    new-instance p2, Landroidx/core/view/a;

    invoke-direct {p2, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;)V

    iput-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInvalidateDelegate:Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;

    :cond_42
    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->updateIconVisibleSize()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p1, p3, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawProgress:Z

    iput-boolean p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawMask:Z

    iput-boolean p4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mNeedInitAnim:Z

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmapPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/PorterDuffXfermode;

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->updateAnimators()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_d5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    aput-object p0, p1, p2

    const-string p0, "construct,DrawableVisibleRect=%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallApp"

    const-string p2, "DownloadProgressDrawable"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/Animator;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->getAnimationNameForLog(Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/download/DownloadProgressDrawable;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/download/DownloadProgressDrawable;)Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInstallAnimationListener:Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawProgress:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mNeedInitAnim:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawProgress:Z

    return-void

    :cond_1d
    iget v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    if-nez v1, :cond_22

    return-void

    :cond_22
    iget v1, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    iget-object v2, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget v4, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    const v4, 0x4cffffff  # 1.3421772E8f

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    int-to-float v5, v5

    const/high16 v6, 0x437f0000  # 255.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v4

    int-to-float v4, v11

    div-float/2addr v4, v6

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v10, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    iget v5, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressFraction:F

    invoke-virtual {v9, v5, v5, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    invoke-virtual {v9, v2, v3, v1, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    cmpl-float v7, p4, v5

    if-lez v7, :cond_a6

    cmpl-float v7, p3, p4

    if-lez v7, :cond_6e

    move/from16 v5, p4

    goto :goto_75

    :cond_6e
    cmpg-float v7, p3, v5

    if-gez v7, :cond_73

    goto :goto_75

    :cond_73
    move/from16 v5, p3

    :goto_75
    const/4 v7, -0x1

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    int-to-float v7, v7

    iget v0, v0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    mul-float/2addr v0, v7

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x43b40000  # 360.0f

    div-float v5, v5, p4

    mul-float v6, v5, v0

    sub-float v4, v2, v1

    sub-float v5, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    const/high16 v14, -0x3d4c0000  # -90.0f

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    move v3, v7

    move v4, v8

    move v5, v14

    move v7, v15

    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_a6
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v9, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v9, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawFinishState(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    const/high16 v6, -0x4e000000

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    iget v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconVisibleSize:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_53

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v3, v6, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_68

    :cond_53
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_68
    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawIconMaskColor(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawMask:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mNeedInitAnim:Z

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitDrawMask:Z

    return-void

    :cond_17
    const/high16 v0, 0x43320000  # 178.0f

    iget p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskFraction:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 15

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v3, v2

    iget v4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    int-to-float v4, v4

    const/high16 v5, 0x437f0000  # 255.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconScale:F

    iget-object v4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->top:F

    add-float v7, v5, v0

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineRadius:F

    iget-object v11, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/RectF;->right:F

    sub-float v5, v7, v0

    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget v10, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineRadius:F

    move v9, v10

    move-object v11, p2

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$11(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private endAllTransitingState()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_27
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_34
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/download/DownloadProgressDrawable;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$new$0()V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getAnimationNameForLog(Landroid/animation/Animator;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_7

    const-string p0, "FinishMaskAnimator"

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, p0, :cond_e

    const-string p0, "ProgressChangeAnimator"

    return-object p0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$12(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mBubbleTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mBubbleTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updateAnimators$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$10(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconScale:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$11(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updateAnimators$12(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$13(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    const-string/jumbo v0, "progress_radius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$2(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressFraction:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$3(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskFraction:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$4(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    const-string/jumbo v0, "progress_radius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$5(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updateAnimators$6(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    const-string/jumbo v0, "progress_radius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$7(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$updateAnimators$8(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconScale:F

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$updateAnimators$9(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    if-eq v0, p1, :cond_13

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->lambda$updateAnimators$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private onProgressLevelChange(FFZ)V
    .registers 7

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_13
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    if-eqz p3, :cond_33

    iget-boolean p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mShouldPlayStartupAnimation:Z

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_4c

    :cond_2d
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4c

    :cond_33
    iget-boolean p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mShouldPlayStartupAnimation:Z

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_4c

    :cond_42
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :goto_4c
    iput-boolean v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mShouldPlayStartupAnimation:Z

    return-void
.end method

.method private stateTransitIfNeed(Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v0

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isPausedState()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const-string v3, "DownloadProgressDrawable"

    const-string v4, "InstallApp"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_ac

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v0}, Lcom/android/launcher/download/InstallState;->isPausedState(I)Z

    move-result v0

    if-nez v0, :cond_ac

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_50

    new-array v0, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v5

    iget-object v8, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const-string/jumbo v8, "state change to PAUSE, %d->%d"

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->endAllTransitingState()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-ne v3, v7, :cond_82

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_97

    :cond_82
    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_97
    if-eqz p1, :cond_a0

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1e0

    :cond_a0
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_1e0

    :cond_ac
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v0

    if-eqz v0, :cond_142

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v0}, Lcom/android/launcher/download/InstallState;->isDownloadingState(I)Z

    move-result v0

    if-nez v0, :cond_142

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e6

    new-array v0, v6, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v5

    iget-object v8, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v8}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const-string/jumbo v8, "state change to PROGRESS %d->%d"

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e6
    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->endAllTransitingState()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-ne v3, v7, :cond_118

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_12d

    :cond_118
    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_12d
    if-eqz p1, :cond_136

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1e0

    :cond_136
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto/16 :goto_1e0

    :cond_142
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isPendingState()Z

    move-result v0

    if-eqz v0, :cond_1e0

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-eq v0, v7, :cond_1e0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_178

    new-array v0, v6, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const-string/jumbo v1, "state change to PENDING %d->%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->endAllTransitingState()V

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-ne v0, v6, :cond_1af

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p1, :cond_1e0

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1e0

    :cond_1af
    if-nez v0, :cond_1e0

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p1, :cond_1e0

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_1e0
    :goto_1e0
    iget p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-ne p1, v7, :cond_1e6

    iput-boolean v7, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mShouldPlayStartupAnimation:Z

    :cond_1e6
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    return-void
.end method

.method private updateAnimators()V
    .registers 16

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3dcccccd  # 0.1f

    const v2, 0x3e99999a  # 0.3f

    const/high16 v3, 0x3f800000  # 1.0f

    const/4 v4, 0x0

    if-nez v0, :cond_28

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v2, v1, v1, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x10b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/g;

    invoke-direct {v1, p0, v4}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_28
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "DownloadProgressDrawable"

    const-wide/16 v5, 0xfa

    const/4 v2, 0x2

    if-nez v0, :cond_71

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_332

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v7}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher/download/g;

    const/4 v8, 0x4

    invoke-direct {v7, p0, v8}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAnimators: mInitProgressAnimator = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitProgressAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_b5

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v2, [F

    fill-array-data v7, :array_33a

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v5}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/launcher/download/g;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAnimators: mInitMaskAnimator = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInitMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    const v5, 0x3f333333  # 0.7f

    mul-float/2addr v5, v1

    new-array v6, v2, [F

    aput v0, v6, v4

    const/4 v7, 0x1

    aput v3, v6, v7

    const-string/jumbo v8, "progress_stroke"

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v9, v2, [F

    aput v1, v9, v4

    aput v5, v9, v7

    const-string/jumbo v10, "progress_radius"

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v12, 0x190

    const/4 v14, 0x0

    if-nez v11, :cond_105

    new-array v11, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v11, v4

    aput-object v9, v11, v7

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const v7, 0x3e99999a  # 0.3f

    const v9, 0x3dcccccd  # 0.1f

    invoke-static {v7, v14, v9, v3, v6}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher/download/g;

    const/4 v9, 0x6

    invoke-direct {v7, p0, v9}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_10f

    :cond_105
    new-array v7, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v4

    const/4 v6, 0x1

    aput-object v9, v7, v6

    invoke-virtual {v11, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_10f
    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_137

    new-array v6, v2, [I

    fill-array-data v6, :array_342

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const v7, 0x3f547ae1  # 0.83f

    const v9, 0x3e99999a  # 0.3f

    invoke-static {v9, v14, v7, v3, v6}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/launcher/download/g;

    const/4 v9, 0x7

    invoke-direct {v7, p0, v9}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_137
    new-array v6, v2, [F

    aput v3, v6, v4

    const/4 v7, 0x1

    aput v0, v6, v7

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v9, v2, [F

    aput v5, v9, v4

    aput v1, v9, v7

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x1a1

    if-nez v9, :cond_179

    new-array v9, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v9, v4

    aput-object v5, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/16 v7, 0x8

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_183

    :cond_179
    new-array v7, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v7, v4

    const/4 v6, 0x1

    aput-object v5, v7, v6

    invoke-virtual {v9, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_183
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_1ac

    new-array v5, v2, [I

    fill-array-data v5, :array_34a

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/16 v7, 0x9

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1ac
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_1d7

    new-array v5, v2, [F

    fill-array-data v5, :array_352

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/16 v7, 0xa

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1d7
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_202

    new-array v5, v2, [I

    fill-array-data v5, :array_35a

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/16 v7, 0xb

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_202
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_22b

    new-array v5, v2, [F

    fill-array-data v5, :array_362

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/16 v7, 0xc

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_22b
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_253

    new-array v5, v2, [I

    fill-array-data v5, :array_36a

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3ea8f5c3  # 0.33f

    const v7, 0x3f2b851f  # 0.67f

    invoke-static {v6, v14, v7, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    const/4 v7, 0x1

    invoke-direct {v6, p0, v7}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_253
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_25e

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    :cond_25e
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_269

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    :cond_269
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_274

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mToPendingAnimaSet:Landroid/animation/AnimatorSet;

    :cond_274
    new-array v5, v2, [F

    aput v0, v5, v4

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconVisibleSize:F

    const v7, 0x3f59999a  # 0.85f

    mul-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-static {v8, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_2ae

    new-array v6, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e99999a  # 0.3f

    invoke-static {v7, v14, v6, v3, v5}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/g;

    invoke-direct {v6, p0, v2}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_2b5

    :cond_2ae
    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_2b5
    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_2cf

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    new-array v6, v2, [Landroid/animation/Animator;

    iget-object v7, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x1

    aput-object v7, v6, v9

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_2d0

    :cond_2cf
    const/4 v9, 0x1

    :goto_2d0
    new-array v5, v2, [F

    aput v3, v5, v4

    aput v0, v5, v9

    invoke-static {v8, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v5, v2, [F

    aput v14, v5, v4

    aput v1, v5, v9

    invoke-static {v10, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_30e

    new-array v5, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v4

    aput-object v1, v5, v9

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3dcccccd  # 0.1f

    const v5, 0x3e99999a  # 0.3f

    invoke-static {v5, v14, v1, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/g;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lcom/android/launcher/download/g;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_318

    :cond_30e
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_318
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_331

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v1, v4

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_331
    return-void

    :array_332
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_33a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_342
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_34a
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_352
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_35a
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_362
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_36a
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private updateIconVisibleSize()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconVisibleSize:F

    return-void
.end method

.method private updateMetrics(Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    :cond_f
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->updateIconVisibleSize()V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mIconVisibleSize:F

    const v1, 0x3ddb22d1  # 0.107f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressStrokeWidth:F

    const v1, 0x3e8f5c29  # 0.28f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressCircleRadius:F

    const v1, 0x3e9374bc  # 0.288f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineHeight:F

    const v1, 0x3d8f5c29  # 0.07f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineWidth:F

    const/high16 v0, 0x3f800000  # 1.0f

    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineRadius:F

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->updatePauseIconVisibleRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_49
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->updateAnimators()V

    :cond_61
    :goto_61
    return-void
.end method

.method private updatePauseIconVisibleRect(Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineWidth:F

    const/high16 v3, 0x40400000  # 3.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconLineHeight:F

    iget-object v4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v4, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    cmpg-float p1, v2, v0

    const/high16 v4, 0x40000000  # 2.0f

    const/4 v5, 0x0

    if-gez p1, :cond_20

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    goto :goto_21

    :cond_20
    move v0, v5

    :goto_21
    cmpg-float p1, v3, v1

    if-gez p1, :cond_28

    sub-float/2addr v1, v3

    div-float v5, v1, v4

    :cond_28
    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v5}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_45

    :cond_43
    move v0, v1

    goto :goto_46

    :cond_45
    :goto_45
    move v0, v2

    :goto_46
    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    if-eqz v3, :cond_61

    const/16 v4, 0x64

    if-eq v3, v4, :cond_61

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mStartupAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_61

    :cond_5f
    move v3, v1

    goto :goto_62

    :cond_61
    :goto_61
    move v3, v2

    :goto_62
    iget v4, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_68

    move v1, v2

    :cond_68
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    if-eqz v0, :cond_80

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawIconMaskColor(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_b2

    :cond_80
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_af

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_91

    goto :goto_af

    :cond_91
    if-eqz v1, :cond_9c

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawIconMaskColor(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_b2

    :cond_9c
    if-eqz v3, :cond_ab

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawIconMaskColor(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_b2

    :cond_ab
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawIconMaskColor(Landroid/graphics/Canvas;)V

    goto :goto_b2

    :cond_af
    :goto_af
    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->drawFinishState(Landroid/graphics/Canvas;)V

    :goto_b2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public finishProgressAnimation(Z)V
    .registers 10

    const-string v0, "InstallApp"

    const-string v1, "DownloadProgressDrawable"

    const-string v2, "finishProgressAnimation"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_49

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    iget-object v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v6, v6, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v6}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v4

    iget v6, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v6, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v2, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    aput-object v7, v2, v6

    const-string/jumbo v6, "state change to FINISH %d->%d,curProgress=%f,needAnima=%s,info=%s"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_89

    :cond_5a
    invoke-direct {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->endAllTransitingState()V

    new-instance v0, Lcom/android/launcher/download/DownloadProgressDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/download/DownloadProgressDrawable$1;-><init>(Lcom/android/launcher/download/DownloadProgressDrawable;)V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v3, [F

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    aput v3, v2, v5

    iget v3, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_7e

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_88

    :cond_7e
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :goto_88
    return-void

    :cond_89
    :goto_89
    const-string p0, "Progress To Finish Anima is running, return"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public hasNotCompleted()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInvalidateDelegate:Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;->invalidate()V

    goto :goto_b

    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_b
    return-void
.end method

.method public isFinishAnimationRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressToFinishAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo v1, "onBoundsChange,old=%s,new=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadProgressDrawable"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->updateMetrics(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onInstallStateOrProgressChange(IZ)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v3, v2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const-string/jumbo v1, "onInstallStateOrProgressChange,progress=%d,showAnim=%s,curState=%d,installState=%s,info=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadProgressDrawable"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-direct {p0, p2}, Lcom/android/launcher/download/DownloadProgressDrawable;->stateTransitIfNeed(Z)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInfo:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isDownloadingState()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->getInstallState()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4e

    return-void

    :cond_4e
    int-to-float p1, p1

    const/high16 v0, 0x42be0000  # 95.0f

    iget v1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressTotal:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mCurrentProgress:F

    int-to-float p1, p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher/download/DownloadProgressDrawable;->onProgressLevelChange(FFZ)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mFinishMaskBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setInstallAnimationFinishCallback(Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInstallAnimationListener:Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;

    return-void
.end method

.method public setInvalidateDelegate(Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;)V
    .registers 2

    if-eqz p1, :cond_7

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable;->mInvalidateDelegate:Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;

    invoke-interface {p1}, Lcom/android/launcher/download/DownloadProgressDrawable$IInvalidateDelegate;->invalidate()V

    :cond_7
    return-void
.end method
