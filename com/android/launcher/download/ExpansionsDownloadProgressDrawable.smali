.class public Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;
.implements Lcom/android/launcher3/icons/span/SpannableStringWithPrefix$ITextAppearanceChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;
    }
.end annotation


# static fields
.field private static final CIRCLE_DEGREE:F = 360.0f

.field private static final DEFAULT_DRAWABLE_SIZE_FACTOR:F = 0.95f

.field private static final DEFAULT_MARGIN_RIGHT_FACTOR:F = 0.25f

.field private static final DEFAULT_PAUSE_ICON_LINE_HEIGHT_FACTOR:F = 0.75f

.field private static final DEFAULT_PAUSE_ICON_LINE_RADIUS:F = 1.0f

.field private static final DEFAULT_PAUSE_ICON_LINE_WIDTH_FACTOR:F = 0.19416f

.field private static final DEFAULT_PROGRESS_STORE_WIDTH_FACTOR:F = 0.25f

.field private static final DEFAULT_PROGRESS_TOTAL:F = 100.0f

.field private static final ICON_BACKGROUND_COLOR_BLACK:I = 0x33000000

.field private static final ICON_BACKGROUND_COLOR_NORMAL:I = 0x4cffffff

.field private static final ICON_FOREGROUND_COLOR_BLACK:I = 0x33000000

.field private static final ICON_FOREGROUND_COLOR_NORMAL:I = -0x1

.field private static final INIT_CIRCLE_ANGLES:F = -90.0f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_DRAWABLE_BOUNDS_SIZE:I = 0x0

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

.field private static final PROGRESS_CHANGE_ANIMA_DURATION:J = 0x10bL

.field private static final PROGRESS_CIRCLE_RADIUS_DENOMINATOR_2:F = 2.0f

.field private static final PROGRESS_CIRCLE_RADIUS_DENOMINATOR_4:F = 4.0f

.field private static final PROGRESS_CIRCLE_RADIUS_SCALE_FACTOR:F = 0.9f

.field private static final PROGRESS_DISMISS_ANIMA_DURATION:J = 0x190L

.field private static final PROGRESS_SHOW_ANIMA_DURATION:J = 0x1a1L

.field private static final PROPERTY_NAME_PROGRESS_RADIUS:Ljava/lang/String; = "progress_radius"

.field private static final PROPERTY_NAME_PROGRESS_STROKE:Ljava/lang/String; = "progress_stroke"

.field private static final TAG:Ljava/lang/String; = "ExpansionsDownloadProgressDrawable"


# instance fields
.field private mBubbleTextViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurInstallState:I

.field private mCurrentDrawableSize:I

.field private mCurrentProgress:F

.field private mDrawableSize:I

.field private mFinishAnimator:Landroid/animation/ValueAnimator;

.field private mInitInvalidate:Z

.field private final mInvariantProgressCircleRadius:F

.field private final mInvariantProgressStrokeWidth:F

.field private final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mItemTile:Ljava/lang/CharSequence;

.field private mMargin:Landroid/graphics/RectF;

.field private mPauseIconAlpha:I

.field private mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconForegroundColor:I

.field private mPauseIconLineHeight:F

.field private mPauseIconLineRadius:F

.field private mPauseIconLineWidth:F

.field private mPauseIconScale:F

.field private mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mPauseIconVisibleRect:Landroid/graphics/RectF;

.field private mPausePaint:Landroid/graphics/Paint;

.field private mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

.field private mPreProgress:F

.field private mProgressAlpha:I

.field private mProgressChangeAnimator:Landroid/animation/ValueAnimator;

.field private mProgressCircleRadius:F

.field private mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

.field private mProgressIconBackgroundColor:I

.field private mProgressIconForegroundColor:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mProgressStrokeWidth:F

.field private mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

.field private mProgressTotal:F

.field private mStartupAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 10
    .param p2  # Lcom/android/launcher3/model/data/ItemInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    const/high16 v0, 0x42c80000  # 100.0f

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressTotal:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    const v1, 0x4cffffff  # 1.3421772E8f

    iput v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconBackgroundColor:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconForegroundColor:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconScale:F

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    iput v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconForegroundColor:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mBubbleTextViewWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInitInvalidate:Z

    iget-object v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemTile:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const v4, 0x3f733333  # 0.95f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    iget-object v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    int-to-float v4, v4

    const/high16 v6, 0x3e800000  # 0.25f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v5, Landroid/graphics/RectF;->right:F

    iget-object v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v4}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5e

    iput v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    goto :goto_62

    :cond_5e
    iget v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    iput v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    :goto_62
    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->updateBounds()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_a7

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    iget v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x4

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v3}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x5

    aput-object p2, v4, v1

    const-string p2, "[init][%s]bubbleTextSize=%f,DrawableSize=%d,MarginRight=%f,playStartup=%s,item=%s"

    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "InstallApp"

    const-string v3, "ExpansionsDownloadProgressDrawable"

    invoke-static {v1, v3, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p2, :cond_c6

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/common/util/ThemeUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c0

    const p2, 0x7f13020c

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->onTextAppearanceChanged(I)V

    goto :goto_c6

    :cond_c0
    const p2, 0x7f13020b

    invoke-virtual {p0, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->onTextAppearanceChanged(I)V

    :cond_c6
    :goto_c6
    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    int-to-float v1, p2

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    iput v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressStrokeWidth:F

    const/high16 v1, 0x3f400000  # 0.75f

    int-to-float v3, p2

    mul-float/2addr v3, v1

    iput v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineHeight:F

    const v1, 0x3e46d1e1  # 0.19416f

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iput p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineWidth:F

    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineRadius:F

    iget p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    const/high16 v1, 0x40800000  # 4.0f

    div-float/2addr p2, v1

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressCircleRadius:F

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressCircleRadius:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconForegroundColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->updatePauseIconVisibleRect()V

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->initAnimators()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressStrokeWidth:F

    return p0
.end method

.method public static synthetic access$302(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    return p1
.end method

.method public static synthetic access$402(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressCircleRadius:F

    return p1
.end method

.method public static synthetic access$500(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressCircleRadius:F

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .registers 17

    move-object v0, p0

    move-object v9, p1

    move-object v8, p2

    iget v1, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    if-gtz v1, :cond_8

    return-void

    :cond_8
    iget v1, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v1

    div-float/2addr v4, v3

    iget v3, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressCircleRadius:F

    int-to-float v1, v1

    iget v5, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v1, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconBackgroundColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->getBubbleTextAlphaFactor()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    int-to-float v6, v6

    const/high16 v7, 0x437f0000  # 255.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v5

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v2, v4, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    cmpl-float v6, p4, v5

    if-lez v6, :cond_7d

    cmpl-float v6, p3, p4

    if-lez v6, :cond_4e

    move/from16 v5, p4

    goto :goto_54

    :cond_4e
    cmpg-float v6, p3, v5

    if-gez v6, :cond_53

    goto :goto_54

    :cond_53
    move v5, p3

    :goto_54
    iget v6, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconForegroundColor:I

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x43b40000  # 360.0f

    div-float v5, v5, p4

    mul-float v6, v5, v0

    sub-float v1, v2, v3

    sub-float v5, v4, v3

    add-float v7, v2, v3

    add-float/2addr v4, v3

    const/high16 v10, -0x3d4c0000  # -90.0f

    const/4 v11, 0x0

    move-object v0, p1

    move v2, v5

    move v3, v7

    move v5, v10

    move v7, v11

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_7d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 13

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    if-gtz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconForegroundColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->getBubbleTextAlphaFactor()F

    move-result v1

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconScale:F

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v3, v0

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineRadius:F

    iget-object v9, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v7, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v0

    iget v4, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    iget v8, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineRadius:F

    move v7, v8

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private endProgressPauseTransitAnimators()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1a
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private getBubbleTextAlphaFactor()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mBubbleTextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const/high16 p0, 0x3f800000  # 1.0f

    return p0

    :cond_b
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->TEXT_ALPHA_PROPERTY:Landroid/util/Property;

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mBubbleTextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private initAnimators()V
    .registers 16

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x3e99999a  # 0.3f

    const v2, 0x3dcccccd  # 0.1f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v1, v2, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x10b

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher/download/i;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;

    invoke-direct {v4, p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$2;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressCircleRadius:F

    const v4, 0x3f666666  # 0.9f

    mul-float/2addr v0, v4

    const/4 v4, 0x2

    new-array v6, v4, [F

    iget v7, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressStrokeWidth:F

    aput v7, v6, v5

    const/4 v7, 0x1

    aput v3, v6, v7

    const-string/jumbo v8, "progress_stroke"

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v9, v4, [F

    iget v10, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressCircleRadius:F

    aput v10, v9, v5

    aput v0, v9, v7

    const-string/jumbo v10, "progress_radius"

    invoke-static {v10, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    new-array v11, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v11, v5

    aput-object v9, v11, v7

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v9, 0x0

    invoke-static {v1, v9, v1, v3, v6}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x190

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/launcher/download/i;

    invoke-direct {v13, p0, v4}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v4, [I

    fill-array-data v6, :array_1be

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    const v13, 0x3f547ae1  # 0.83f

    invoke-static {v1, v9, v13, v3, v6}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/android/launcher/download/i;

    const/4 v14, 0x3

    invoke-direct {v13, p0, v14}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v4, [F

    aput v3, v6, v5

    iget v13, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressStrokeWidth:F

    aput v13, v6, v7

    invoke-static {v8, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    new-array v8, v4, [F

    aput v0, v8, v5

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInvariantProgressCircleRadius:F

    aput v0, v8, v7

    invoke-static {v10, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v8, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v8, v5

    aput-object v0, v8, v7

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v13, 0x1a1

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/4 v8, 0x4

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [I

    fill-array-data v0, :array_1c6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/4 v8, 0x5

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_1ce

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/4 v8, 0x6

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [I

    fill-array-data v0, :array_1d6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/4 v8, 0x7

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_1de

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/16 v8, 0x8

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [I

    fill-array-data v0, :array_1e6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    const v6, 0x3ea8f5c3  # 0.33f

    const v8, 0x3f2b851f  # 0.67f

    invoke-static {v6, v9, v8, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/16 v8, 0x9

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    new-array v0, v4, [I

    aput v5, v0, v5

    iget v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    aput v6, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher/download/i;

    const/16 v8, 0xa

    invoke-direct {v6, p0, v8}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [I

    iget v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    aput v4, v0, v5

    aput v5, v0, v7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1, v9, v2, v3, v0}, Lcom/android/launcher/download/h;->a(FFFFLandroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/i;

    invoke-direct {v1, p0, v7}, Lcom/android/launcher/download/i;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_1be
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1c6
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1ce
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_1d6
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1de
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_1e6
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private isPauseState(I)Z
    .registers 3

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    if-ne p1, p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private isProgressState(I)Z
    .registers 2

    if-eqz p1, :cond_c

    const/4 p0, 0x4

    if-eq p1, p0, :cond_c

    const/16 p0, 0x64

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->lambda$initAnimators$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$initAnimators$0(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentProgress:F

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initAnimators$1(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    const-string/jumbo v0, "progress_radius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressCircleRadius:F

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initAnimators$10(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->updateBounds()V

    return-void
.end method

.method private synthetic lambda$initAnimators$2(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    if-eq p1, v0, :cond_13

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initAnimators$3(Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "progress_stroke"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressStrokeWidth:F

    const-string/jumbo v0, "progress_radius"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressCircleRadius:F

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initAnimators$4(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    if-eq p1, v0, :cond_13

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initAnimators$5(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconScale:F

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initAnimators$6(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    if-eq p1, v0, :cond_13

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initAnimators$7(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconScale:F

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method private synthetic lambda$initAnimators$8(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    if-eq p1, v0, :cond_13

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconAlpha:I

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initAnimators$9(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->updateBounds()V

    return-void
.end method

.method private setState(IZ)V
    .registers 11

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "[setState]old=%d,new=%d,needAnima=%s,info=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstallApp"

    const-string v7, "ExpansionsDownloadProgressDrawable"

    invoke-static {v2, v7, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    if-ne v1, p1, :cond_31

    return-void

    :cond_31
    :try_start_31
    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isProgressState(I)Z

    move-result v1

    if-eqz v1, :cond_78

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-direct {p0, v1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isProgressState(I)Z

    move-result v1

    if-nez v1, :cond_78

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v1
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_d4

    if-eqz v1, :cond_4c

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    return-void

    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->endProgressPauseTransitAnimators()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v6

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p2, :cond_d1

    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_d1

    :cond_78
    invoke-direct {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isPauseState(I)Z

    move-result v1

    if-eqz v1, :cond_d1

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-direct {p0, v1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isPauseState(I)Z

    move-result v1

    if-nez v1, :cond_d1

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0, v3}, Lcom/android/launcher/download/InstallState;->setStartup(Z)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-nez p2, :cond_d1

    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_d1

    :cond_a4
    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->endProgressPauseTransitAnimators()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    new-array v0, v0, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressDismissAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowAlphaAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconShowScaleAnimator:Landroid/animation/ValueAnimator;

    aput-object v2, v0, v6

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p2, :cond_d1

    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->end()V
    :try_end_d1
    .catchall {:try_start_4c .. :try_end_d1} :catchall_d4

    :cond_d1
    :goto_d1
    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    return-void

    :catchall_d4
    move-exception p2

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    throw p2
.end method

.method private updateBounds()V
    .registers 4

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updatePauseIconVisibleRect()V
    .registers 8

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentDrawableSize:I

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineWidth:F

    const/high16 v2, 0x40400000  # 3.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconLineHeight:F

    iget-object v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    cmpg-float v3, v1, v4

    const/high16 v6, 0x40000000  # 2.0f

    if-gez v3, :cond_1a

    sub-float/2addr v4, v1

    div-float/2addr v4, v6

    goto :goto_1b

    :cond_1a
    move v4, v5

    :goto_1b
    cmpg-float v1, v2, v0

    if-gez v1, :cond_22

    sub-float/2addr v0, v2

    div-float v5, v0, v6

    :cond_22
    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconVisibleRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method


# virtual methods
.method public applyProgressAndState(IIZ)V
    .registers 10

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_53

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    iget v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPreProgress:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v2

    iget v4, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressTotal:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v4, 0x3

    iget v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v5, v5, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    aput-object v5, v0, v4

    const-string v4, "[applyProgressAndState]progress=%d,preProgress=%f,total=%f,state=%d,needAnima=%s,playStartup=%s,info=%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "InstallApp"

    const-string v5, "ExpansionsDownloadProgressDrawable"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    invoke-direct {p0, p2, p3}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->setState(IZ)V

    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-direct {p0, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isProgressState(I)Z

    move-result p2

    if-nez p2, :cond_62

    invoke-virtual {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->invalidateSelf()V

    return-void

    :cond_62
    iget p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentProgress:F

    iput p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPreProgress:F

    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_73

    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_73
    iget-object p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    new-array v0, v1, [F

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPreProgress:F

    aput v1, v0, v3

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressTotal:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    aput p1, v0, v2

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result p1

    if-eqz p1, :cond_a4

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {p1, v3}, Lcom/android/launcher/download/InstallState;->setStartup(Z)V

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p3, :cond_a4

    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_a4
    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p3, :cond_b0

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_b0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isStartup()Z

    move-result v0

    const-string v1, "ExpansionsDownloadProgressDrawable"

    const-string v2, "InstallApp"

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "[draw]waiting startup animation..."

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressToPauseAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseToProgressAnimaSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_3f

    :cond_3d
    move v0, v3

    goto :goto_40

    :cond_3f
    :goto_3f
    move v0, v4

    :goto_40
    iget v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-direct {p0, v5}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isProgressState(I)Z

    move-result v5

    if-nez v5, :cond_53

    iget-object v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_51

    goto :goto_53

    :cond_51
    move v5, v3

    goto :goto_54

    :cond_53
    :goto_53
    move v5, v4

    :goto_54
    iget v6, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-direct {p0, v6}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->isPauseState(I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentProgress:F

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressTotal:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_a5

    :cond_6e
    if-eqz v6, :cond_76

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_a5

    :cond_76
    if-eqz v5, :cond_82

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurrentProgress:F

    iget v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressTotal:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->drawCircleProgress(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    goto :goto_a5

    :cond_82
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_a0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemTile:Ljava/lang/CharSequence;

    aput-object v5, v0, v3

    iget v3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mCurInstallState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "[draw][%s]default draw,curState=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPausePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->drawPauseState(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_a5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mDrawableSize:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getMargin()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mMargin:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateSelf()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mBubbleTextViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mStartupAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInitInvalidate:Z

    if-eqz v1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_41

    :cond_23
    :goto_23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mInitInvalidate:Z

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-virtual {v0}, Landroid/widget/TextView;->nullLayouts()V

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_41

    :cond_36
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_41

    :cond_3e
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_41
    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mItemTile:Ljava/lang/CharSequence;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "[onBoundsChange][%s]bounds=%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallApp"

    const-string v1, "ExpansionsDownloadProgressDrawable"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    invoke-direct {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->updatePauseIconVisibleRect()V

    return-void
.end method

.method public onTextAppearanceChanged(I)V
    .registers 4

    const-string v0, "ExpansionsDownloadProgressDrawable"

    const-string v1, "InstallApp"

    packed-switch p1, :pswitch_data_32

    goto :goto_31

    :pswitch_8  #0x7f13020c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "[onTextAppearanceChanged]normal"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconForegroundColor:I

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconForegroundColor:I

    const p1, 0x4cffffff  # 1.3421772E8f

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconBackgroundColor:I

    goto :goto_31

    :pswitch_1e  #0x7f13020b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "[onTextAppearanceChanged]bright"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/high16 p1, 0x33000000

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconForegroundColor:I

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mPauseIconForegroundColor:I

    iput p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mProgressIconBackgroundColor:I

    :goto_31
    return-void

    :pswitch_data_32
    .packed-switch 0x7f13020b
        :pswitch_1e  #7f13020b
        :pswitch_8  #7f13020c
    .end packed-switch
.end method

.method public playFinishAnimationIfNeed(ZLcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_27

    :cond_11
    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;-><init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;ZLcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_27

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->mFinishAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_27
    :goto_27
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
