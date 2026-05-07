.class public Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final CLOSE_PERSONALIZARIONS_DURATION:I = 0x15e

.field public static final CLOSE_PERSONALIZATIONS_ALPHA:Landroid/view/animation/Interpolator;

.field public static final CLOSE_PERSONALIZATIONS_SCALE:Landroid/view/animation/Interpolator;

.field public static final DURATION_MS:[J

.field public static final FOLDSCREEN_EXPANDED_CLOSE_APP:Landroid/view/animation/Interpolator;

.field public static final FOLDSCREEN_EXPANDED_DURATION_MS:[J

.field public static final FOLDSCREEN_EXPANDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

.field public static final FOLDSCREEN_FOLDED_CLOSE_APP:Landroid/view/animation/Interpolator;

.field public static final FOLDSCREEN_FOLDED_DURATION_MS:[J

.field public static final FOLDSCREEN_FOLDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

.field public static final LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

.field public static final LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

.field public static final PROGRESS_END:F = 1.0f

.field public static final TABLET_CLOSE_APP:Landroid/view/animation/Interpolator;

.field public static final TABLET_DURATION_MS:[J

.field public static final TABLET_LAUNCH_APP:Landroid/view/animation/Interpolator;

.field public static final TAG:Ljava/lang/String; = "SpringValueAnimator"


# instance fields
.field private final mAdjustRect:Landroid/graphics/RectF;

.field private mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

.field private mCurrentCenterX:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentY:F

.field private mIsOpening:Z

.field private final mOnUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_88

    sput-object v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->DURATION_MS:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_94

    sput-object v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_DURATION_MS:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_a0

    sput-object v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_DURATION_MS:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_DURATION_MS:[J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6b851f  # 0.23f

    const v2, 0x3e1996fb  # 0.14999f

    const v3, 0x3db851ec  # 0.09f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eeb851f  # 0.46f

    const v2, 0x3ed70a3d  # 0.42f

    const v5, 0x3e23d70a  # 0.16f

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v6, 0x3dcccccd  # 0.1f

    const v7, 0x3e19999a  # 0.15f

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_CLOSE_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_CLOSE_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v7, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_LAUNCH_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_CLOSE_APP:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->CLOSE_PERSONALIZATIONS_SCALE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3  # 0.33f

    const v3, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->CLOSE_PERSONALIZATIONS_ALPHA:Landroid/view/animation/Interpolator;

    return-void

    :array_88
    .array-data 8
        0x104
        0x17c
    .end array-data

    :array_94
    .array-data 8
        0x168
        0x1c2
    .end array-data

    :array_a0
    .array-data 8
        0x168
        0x17c
    .end array-data

    :array_ac
    .array-data 8
        0x168
        0x1c2
    .end array-data
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;)V
    .registers 12

    const-wide/16 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;J)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;J)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;JLandroid/view/animation/Interpolator;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mIsOpening:Z

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentCenterX:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpringValueAnimator, startRect:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", targetRect:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", startFactor:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", duration: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", speedLevel:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const-string v3, "SpringValueAnimator"

    invoke-static {v0, p3, v3}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p3, 0x2

    new-array p3, p3, [F

    aput p1, p3, v2

    const/high16 v0, 0x3f800000  # 1.0f

    aput v0, p3, v1

    invoke-static {p3}, Lcom/oplus/painteranimation/OplusValueAnimator;->ofFloat([F)Lcom/oplus/painteranimation/OplusValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    const-wide/16 v1, 0x0

    cmp-long p3, p5, v1

    if-gtz p3, :cond_83

    invoke-static {}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimDuration()J

    move-result-wide p5

    long-to-float p3, p5

    sub-float/2addr v0, p1

    mul-float/2addr v0, p3

    float-to-long p5, v0

    :cond_83
    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p7, :cond_90

    iget-boolean p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mIsOpening:Z

    invoke-static {p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;

    move-result-object p7

    :cond_90
    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-virtual {p1, p7}, Lcom/oplus/painteranimation/OplusValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    new-instance p3, Lcom/android/launcher3/w0;

    invoke-direct {p3, p0, p2}, Lcom/android/launcher3/w0;-><init>(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    new-instance p2, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$1;

    invoke-direct {p2, p0, p4}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$1;-><init>(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    const-string p1, "OpenAppOrBack"

    const-string p2, "Alpha"

    invoke-virtual {p0, p1, p2}, Lcom/oplus/painteranimation/OplusValueAnimator;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->lambda$new$0(Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static getAppLaunchAnimDuration()J
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "getAppLaunchAnimDuration, sEvaluationDuration = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpringValueAnimator"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->isEvaluationDurationValid()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-wide v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    return-wide v0

    :cond_23
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_DURATION_MS:[J

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    aget-wide v0, v0, v1

    return-wide v0

    :cond_38
    sget-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_DURATION_MS:[J

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    aget-wide v0, v0, v1

    return-wide v0

    :cond_3f
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_DURATION_MS:[J

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    aget-wide v0, v0, v1

    return-wide v0

    :cond_4c
    sget-object v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->DURATION_MS:[J

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static getAppLaunchAnimInterpolator(Z)Landroid/view/animation/Interpolator;
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p0, :cond_13

    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

    goto :goto_15

    :cond_13
    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_EXPANDED_CLOSE_APP:Landroid/view/animation/Interpolator;

    :goto_15
    return-object p0

    :cond_16
    if-eqz p0, :cond_1b

    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_LAUNCH_APP:Landroid/view/animation/Interpolator;

    goto :goto_1d

    :cond_1b
    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->FOLDSCREEN_FOLDED_CLOSE_APP:Landroid/view/animation/Interpolator;

    :goto_1d
    return-object p0

    :cond_1e
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p0, :cond_29

    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_LAUNCH_APP:Landroid/view/animation/Interpolator;

    goto :goto_2b

    :cond_29
    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->TABLET_CLOSE_APP:Landroid/view/animation/Interpolator;

    :goto_2b
    return-object p0

    :cond_2c
    if-eqz p0, :cond_31

    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

    goto :goto_33

    :cond_31
    sget-object p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

    :goto_33
    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/graphics/RectF;Landroid/animation/ValueAnimator;)V
    .registers 13

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14d

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentCenterX:F

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentY:F

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentCenterX:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float v6, v0, v5

    sub-float v7, v4, v6

    sub-float v8, v2, v1

    add-float/2addr v4, v6

    invoke-virtual {v3, v7, v8, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v6, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_b3

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_b3

    iget-object v3, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_ab

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_b3

    :cond_ab
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    :cond_b3
    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentCenterX:F

    div-float v8, v3, v5

    sub-float v9, v7, v8

    div-float/2addr v4, v5

    sub-float v5, v6, v4

    add-float/2addr v7, v8

    add-float/2addr v4, v6

    invoke-virtual {p1, v9, v5, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUpdate, value:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", bezier:"

    const-string v5, ", scale:"

    invoke-static {p1, p2, v4, p2, v5}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v4, ", trans:"

    const-string v7, ", currentX:"

    invoke-static {p1, p2, v4, p2, v7}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget v4, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentCenterX:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", currentY:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentY:F

    const-string v7, ", currentWidth:"

    const-string v8, ", currentHeight:"

    invoke-static {p1, v4, v7, v0, v8}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v0, ", width:"

    invoke-static {p1, v1, v5, v2, v0}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v0, ", centerY:"

    const-string v1, ", current:"

    invoke-static {p1, v3, v0, v6, v1}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", targetWidth:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", adjustRect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetHeight:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringValueAnimator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_139
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;

    iget-object v1, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1, v2, p2}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_139

    :cond_14d
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addTransitionUpdateListener(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$OnUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    return-object p0
.end method

.method public getAnimator(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)Landroid/animation/ValueAnimator;
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    new-instance v1, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator$2;-><init>(Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mAnimator:Lcom/oplus/painteranimation/OplusValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public updateTargetRect(Landroid/graphics/RectF;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
