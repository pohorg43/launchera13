.class public Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final DURATION_MS:[J

.field public static final LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

.field public static final LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

.field public static final PROGRESS_END:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "SpringValueAnimator"

.field public static final sColorAnimSpeedFlag:I = 0x1


# instance fields
.field private final mAdjustRect:Landroid/graphics/RectF;

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentCenterX:F

.field private final mCurrentRect:Landroid/graphics/RectF;

.field private mCurrentY:F

.field private final mOnUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_20

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->DURATION_MS:[J

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

    return-void

    :array_20
    .array-data 8
        0x104
        0x17c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 10

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;J)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;J)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;-><init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(FLandroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    iput-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2c

    move v0, v2

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iput v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentCenterX:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppTransitionValueAnimator, startRect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", targetRect:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", startFactor:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", duration: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SpringValueAnimator"

    invoke-static {p3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000  # 1.0f

    const/4 p3, 0x2

    new-array p3, p3, [F

    aput p1, p3, v1

    aput p2, p3, v2

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x0

    cmp-long v1, p4, v3

    if-gtz v1, :cond_82

    sget-object p4, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->DURATION_MS:[J

    aget-wide p4, p4, v2

    long-to-float p4, p4

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, p4

    float-to-long p4, p1

    :cond_82
    invoke-virtual {p3, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p6, :cond_8e

    if-eqz v0, :cond_8c

    sget-object p6, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->LAUNCH_APP_OPEN:Landroid/view/animation/Interpolator;

    goto :goto_8e

    :cond_8c
    sget-object p6, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->LAUNCH_APP_CLOSE:Landroid/view/animation/Interpolator;

    :cond_8e
    :goto_8e
    invoke-virtual {p3, p6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/android/launcher/pageindicators/c;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;Z)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$1;-><init>(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;)V

    invoke-virtual {p3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->lambda$new$0(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$new$0(ZLandroid/animation/ValueAnimator;)V
    .registers 13

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iput v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentCenterX:F

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    iput v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentY:F

    iget-object v3, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentCenterX:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float v6, v0, v5

    sub-float v7, v4, v6

    add-float/2addr v4, v6

    add-float v6, v2, v1

    invoke-virtual {v3, v7, v2, v4, v6}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p1, :cond_6f

    new-instance p1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mStartRect:Landroid/graphics/RectF;

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    goto :goto_76

    :cond_6f
    new-instance p1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-direct {p1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_76
    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v6, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_bd

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v7

    if-nez v7, :cond_bd

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    cmpg-float v7, v3, v7

    if-ltz v7, :cond_b5

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    cmpg-float v7, v4, v7

    if-gez v7, :cond_bd

    :cond_b5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    :cond_bd
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentCenterX:F

    div-float v5, v3, v5

    sub-float v9, v8, v5

    add-float/2addr v8, v5

    add-float/2addr v4, p1

    invoke-virtual {v7, v9, p1, v8, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_13c

    const-string p1, "onUpdate, value:"

    const-string v4, ", bezier:"

    const-string v5, ", scale:"

    invoke-static {p1, p2, v4, p2, v5}, Lcom/android/launcher/pageindicators/e;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", trans:"

    const-string v7, ", currentX:"

    invoke-static {p1, p2, v4, p2, v7}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentCenterX:F

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", currentY:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentY:F

    const-string v7, ", currentWidth:"

    const-string v8, ", currentHeight:"

    invoke-static {p1, v4, v7, v0, v8}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v0, ", width:"

    invoke-static {p1, v1, v5, v2, v0}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    const-string v0, ", centerY:"

    const-string v1, ", current:"

    invoke-static {p1, v3, v0, v6, v1}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", targetWidth:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", adjustRect:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", targetHeight:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpringValueAnimator"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    iget-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_142
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;

    iget-object v1, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mCurrentRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAdjustRect:Landroid/graphics/RectF;

    invoke-interface {v0, v1, v2, p2}, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto :goto_142

    :cond_156
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addTransitionUpdateListener(Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator$OnUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public updateTargetRect(Landroid/graphics/RectF;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/common/AppTransitionValueAnimator;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
