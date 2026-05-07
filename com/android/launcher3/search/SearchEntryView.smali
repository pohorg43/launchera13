.class public final Lcom/android/launcher3/search/SearchEntryView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchEntryView$Companion;
    }
.end annotation


# static fields
.field public static final BACKGROUND_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/search/SearchEntryView;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final Companion:Lcom/android/launcher3/search/SearchEntryView$Companion;

.field private static final MAX_ALPHA:I = 0xff


# instance fields
.field private mAnimColorNormalAlpha:I

.field private mAnimColorPressedAlpha:I

.field private mAppStartByClick:Z

.field private mBackgroundColor:I

.field private mBackgroundRadius:I

.field private mBackgroundRect:Landroid/graphics/RectF;

.field private mBgOffset:F

.field private mContentScale:F

.field private mCurrentColorAlpha:I

.field private mFillPaint:Landroid/graphics/Paint;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mIsPressing:Z

.field private mPressAnimation:Landroid/animation/ValueAnimator;

.field private mPressAnimationValue:F

.field private mTempBgHeight:I

.field private mTempBgWidth:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchEntryView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchEntryView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchEntryView;->Companion:Lcom/android/launcher3/search/SearchEntryView$Companion;

    new-instance v0, Lcom/android/launcher3/search/SearchEntryView$Companion$BACKGROUND_OFFSET$1;

    invoke-direct {v0}, Lcom/android/launcher3/search/SearchEntryView$Companion$BACKGROUND_OFFSET$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/search/SearchEntryView;->BACKGROUND_OFFSET:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/search/SearchEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/search/SearchEntryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundColor:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mContentScale:F

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimationValue:F

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorNormalAlpha:I

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorPressedAlpha:I

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mCurrentColorAlpha:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0709ab

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRadius:I

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->initBackground()V

    new-instance p1, Lcom/android/launcher/v;

    invoke-direct {p1, p0}, Lcom/android/launcher/v;-><init>(Lcom/android/launcher3/search/SearchEntryView;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lcom/android/launcher3/search/SearchEntryView;Landroid/view/View;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p0, :cond_b

    goto :goto_15

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp()V

    :goto_15
    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchEntryView;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/search/SearchEntryView;->_init_$lambda-1(Lcom/android/launcher3/search/SearchEntryView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getBgWidthOffset(Lcom/android/launcher3/search/SearchEntryView;)F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->getBgWidthOffset()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMIsPressing$p(Lcom/android/launcher3/search/SearchEntryView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsPressing:Z

    return-void
.end method

.method private final varargs animateNormal(F[Landroid/view/View;)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez v0, :cond_30

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_11

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    sget-object v3, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    aget-object v4, p2, v1

    const-wide/16 v6, 0x163

    move v5, p1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generateResumeAnimation(Landroid/view/View;FJLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/search/SearchEntryView$animateNormal$2;-><init>(Lcom/android/launcher3/search/SearchEntryView;[Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    array-length p0, p2

    :goto_26
    if-ge v1, p0, :cond_30

    aget-object v0, p2, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_30
    return-void
.end method

.method private final varargs animatePress(Landroid/animation/ValueAnimator;[Landroid/view/View;)V
    .registers 7

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_d

    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsPressing:Z

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    aget-object v2, p2, v1

    const v3, 0x3f666666  # 0.9f

    invoke-virtual {v0, v2, v3, p0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimation$OplusLauncher_OPPOPallExportAallRelease(Landroid/view/View;FLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/search/SearchEntryView$animatePress$2;

    invoke-direct {v0, p1}, Lcom/android/launcher3/search/SearchEntryView$animatePress$2;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    array-length p1, p2

    :goto_24
    if-ge v1, p1, :cond_2e

    aget-object v0, p2, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_2e
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/search/SearchEntryView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/search/SearchEntryView;->initPressAnimation$lambda-2(Lcom/android/launcher3/search/SearchEntryView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final cancelAnimation(Landroid/animation/ValueAnimator;Z)V
    .registers 5

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez p2, :cond_26

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_26
    return-void
.end method

.method private final getAnimColor()I
    .registers 4

    iget v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mCurrentColorAlpha:I

    iget v1, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundColor:I

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private final getBgWidthOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mBgOffset:F

    return p0
.end method

.method private final initBackground()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7f06065a

    goto :goto_13

    :cond_10
    const v1, 0x7f060659

    :goto_13
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorNormalAlpha:I

    mul-int/lit8 v1, v0, 0x2

    const/16 v2, 0xff

    if-le v1, v2, :cond_27

    move v1, v2

    :cond_27
    iput v1, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorPressedAlpha:I

    iput v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mCurrentColorAlpha:I

    return-void
.end method

.method private final initPressAnimation()V
    .registers 5

    sget-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    const-wide/16 v1, 0xc8

    const v3, 0x3f666666  # 0.9f

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->generatePressAnimationRecord(JF)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_10

    goto :goto_18

    :cond_10
    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/search/SearchEntryView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_18
    return-void
.end method

.method private static final initPressAnimation$lambda-2(Lcom/android/launcher3/search/SearchEntryView;Landroid/animation/ValueAnimator;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimationValue:F

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    const v2, 0x3ecccccd  # 0.4f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_45

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsNeedToDelayCancelScaleAnim:Z

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    iget p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimationValue:F

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    aput-object p0, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/search/SearchEntryView;->animateNormal(F[Landroid/view/View;)V

    :cond_45
    return-void
.end method

.method private final updateTextColor()V
    .registers 4

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06040b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getTextColor()I

    move-result v0

    :goto_1e
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    if-nez p0, :cond_2b

    goto :goto_2e

    :cond_2b
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2e
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public alphaColor(FZ)V
    .registers 5

    if-eqz p2, :cond_10

    iget p2, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorNormalAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorPressedAlpha:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p1

    goto :goto_1d

    :cond_10
    iget p2, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorPressedAlpha:I

    int-to-float v0, p2

    iget v1, p0, Lcom/android/launcher3/search/SearchEntryView;->mAnimColorNormalAlpha:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr p2, v0

    invoke-static {p2}, Li1/j;->o(F)I

    move-result p1

    :goto_1d
    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mCurrentColorAlpha:I

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p1, :cond_24

    goto :goto_2b

    :cond_24
    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->getAnimColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setBackgroundColor(I)V

    :goto_2b
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final getTempBgHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgHeight:I

    return p0
.end method

.method public final getTempBgWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgWidth:I

    return p0
.end method

.method public final isAppStartByClick()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mAppStartByClick:Z

    return p0
.end method

.method public final isPressingAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsPressing:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgWidth:I

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_33

    iget v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgHeight:I

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_48

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mBgOffset:F

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/launcher3/search/SearchEntryView;->mBgOffset:F

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_48
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->getAnimColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mBackgroundRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher3/search/SearchEntryView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mContentScale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p1, v0, v0, v2, p0}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mAppStartByClick:Z

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimation:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/search/SearchEntryView;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->initPressAnimation()V

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    aput-object p0, v3, v0

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aput-object v0, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/search/SearchEntryView;->animatePress(Landroid/animation/ValueAnimator;[Landroid/view/View;)V

    goto :goto_40

    :cond_29
    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryView;->startAnimateNormalAnim()V

    goto :goto_40

    :cond_2f
    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isPressDragging()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryView;->startAnimateNormalAnim()V

    :cond_40
    :goto_40
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onWallpaperBrightChange()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->initBackground()V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->updateTextColor()V

    return-void
.end method

.method public final setBgWidthOffset(FZ)V
    .registers 4

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mBgOffset:F

    if-eqz p2, :cond_17

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Lcom/android/launcher3/search/SearchEntryView;->mBgOffset:F

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p2, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p2, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setSearchEntryBgWidth(F)V

    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public final setContentScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mContentScale:F

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public final setIndicator(Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 3

    const-string v0, "indicator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntryView;->updateTextColor()V

    return-void
.end method

.method public setPivotX(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsPressing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mIsPressing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method public final setTempBgHeight(F)V
    .registers 2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgHeight:I

    return-void
.end method

.method public final setTempBgWidth(F)V
    .registers 2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/search/SearchEntryView;->mTempBgWidth:I

    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    return-void
.end method

.method public final startAnimateNormalAnim()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/search/SearchEntryView;->cancelAnimation(Landroid/animation/ValueAnimator;Z)V

    iget v0, p0, Lcom/android/launcher3/search/SearchEntryView;->mPressAnimationValue:F

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    aput-object p0, v2, v1

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntryView;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/search/SearchEntryView;->animateNormal(F[Landroid/view/View;)V

    return-void
.end method

.method public final updateBackground(I)V
    .registers 2

    return-void
.end method
