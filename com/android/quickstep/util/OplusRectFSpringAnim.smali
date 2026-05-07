.class public final Lcom/android/quickstep/util/OplusRectFSpringAnim;
.super Lcom/android/quickstep/util/RectFSpringAnim;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;,
        Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;,
        Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

.field private static final DEFAULT_SWIPE_MAX_VELOCITY:F = 18.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_CENTER_X:Lcom/oplus/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_SCALE_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final OPLUS_RECT_Y:Lcom/oplus/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/animation/FloatPropertyCompat<",
            "Lcom/android/quickstep/util/OplusRectFSpringAnim;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TABLET_HORIZONTAL_SWIPE_MAX_VELOCITY:F = 16.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRectFSpringAnim"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private assistantAlpha:F

.field private assistantAnim:Landroid/animation/ValueAnimator;

.field private assistantAnimEnded:Z

.field private assistantScale:F

.field private isLandscape:Z

.field private mRectScaleAnim:Lcom/oplus/animation/SpringAnimation;

.field private mRectXAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

.field private mRectYAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

.field private withAssistant:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->Companion:Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_CENTER_X$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_CENTER_X$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_CENTER_X:Lcom/oplus/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_Y$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_Y:Lcom/oplus/animation/FloatPropertyCompat;

    new-instance v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;

    invoke-direct {v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$Companion$OPLUS_RECT_SCALE_PROGRESS$1;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_SCALE_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string p1, "mStartRect="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p4, "OplusRectFSpringAnim"

    invoke-static {p2, p4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    const/4 p1, 0x0

    if-nez p3, :cond_2d

    goto :goto_46

    :cond_2d
    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_40

    move p4, p3

    goto :goto_41

    :cond_40
    move p4, p1

    :goto_41
    const/4 v0, 0x3

    if-ne p2, v0, :cond_45

    move p1, p3

    :cond_45
    or-int/2addr p1, p4

    :goto_46
    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Z)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;)V

    const-string p1, "mStartRect="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mTargetRect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QuickStep"

    const-string p4, "OplusRectFSpringAnim"

    invoke-static {p2, p4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    iput-boolean p5, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->withAssistant:Z

    const/4 p1, 0x0

    if-nez p3, :cond_2f

    goto :goto_48

    :cond_2f
    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_42

    move p4, p3

    goto :goto_43

    :cond_42
    move p4, p1

    :goto_43
    const/4 p5, 0x3

    if-ne p2, p5, :cond_47

    move p1, p3

    :cond_47
    or-int/2addr p1, p4

    :goto_48
    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    return-void
.end method

.method public static final synthetic access$setAssistantAlpha$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    return-void
.end method

.method public static final synthetic access$setAssistantAnimEnded$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    return-void
.end method

.method public static final synthetic access$setAssistantScale$p(Lcom/android/quickstep/util/OplusRectFSpringAnim;F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    return-void
.end method

.method private final adjustVelocityY(F)F
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    if-eqz p0, :cond_f

    const/high16 p0, 0x41800000  # 16.0f

    goto :goto_11

    :cond_f
    const/high16 p0, 0x41900000  # 18.0f

    :goto_11
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    :goto_1e
    return p1
.end method

.method private final createAssistantScreenEnterAnim()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_38

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_f

    goto :goto_36

    :cond_f
    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sSpeedLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_INTERPOLATORS:[Landroid/view/animation/Interpolator;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v2, Lcom/oplus/quickstep/anim/OplusStaggeredWorkspaceAnim;->ANIMATION_DURATION_MS:[I

    aget v1, v2, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim$createAssistantScreenEnterAnim$lambda-8$$inlined$doOnEnd$1;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_36
    return-void

    nop

    :array_38
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final createAssistantScreenEnterAnim$lambda-8$lambda-6(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v0, 0x3f666666  # 0.9f

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    sget-object p1, Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;->TYPE_ASSIST:Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->createAssistantScreenEnterAnim$lambda-8$lambda-6(Lcom/android/quickstep/util/OplusRectFSpringAnim;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda-2(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda-4(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic h(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->start$lambda-3(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method private static final start$lambda-2(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "QuickStep"

    const-string p2, "OplusRectFSpringAnim"

    const-string p3, "mRectXAnimEnded = true"

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda-3(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "QuickStep"

    const-string p2, "OplusRectFSpringAnim"

    const-string p3, "mRectYAnimEnded = true"

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method private static final start$lambda-4(Lcom/android/quickstep/util/OplusRectFSpringAnim;Lcom/oplus/animation/DynamicAnimation;ZFF)V
    .registers 5

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method


# virtual methods
.method public doOnUpdate()V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mOnUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;

    iget-object v2, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentScaleProgress:F

    iget v4, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantScale:F

    iget v5, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAlpha:F

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/quickstep/util/RectFSpringAnim$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;FFF)V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public end()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->end()V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->end()V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/oplus/animation/SpringAnimation;

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    goto :goto_22

    :cond_1b
    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->canSkipToEnd()Z

    move-result v0

    if-ne v0, v1, :cond_22

    move v2, v1

    :cond_22
    :goto_22
    if-eqz v2, :cond_2c

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/oplus/animation/SpringAnimation;

    if-nez v0, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->skipToEnd()V

    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_31

    goto :goto_3e

    :cond_31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_3e

    :cond_35
    const-string v0, "QuickStep"

    const-string v2, "OplusRectFSpringAnim"

    const-string v3, "end: mAnimsStarted = false"

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    iput-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    iput-boolean v1, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->maybeOnEnd()V

    return-void
.end method

.method public isEnded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-eqz v0, :cond_12

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final onUpdateIfNeed(Lcom/android/quickstep/util/OplusRectFSpringAnim$TYPE;)V
    .registers 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/quickstep/util/OplusRectFSpringAnim$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    goto :goto_33

    :cond_18
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    return-void

    :cond_1d
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    :cond_25
    return-void

    :cond_26
    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectXAnimEnded:Z

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectYAnimEnded:Z

    if-eqz p1, :cond_36

    iget-boolean p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mRectScaleAnimEnded:Z

    if-nez p1, :cond_33

    goto :goto_36

    :cond_33
    :goto_33
    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onUpdate()V

    :cond_36
    :goto_36
    return-void
.end method

.method public final start(Landroid/graphics/PointF;)V
    .registers 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string/jumbo v0, "velocityPxPerMs"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v12, "OplusRectFSpringAnim"

    const-string v13, "QuickStep"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: velocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->isLandscape:Z

    invoke-static {v0, v1, v13, v12}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2c
    new-instance v7, Lcom/android/quickstep/util/g;

    const/4 v0, 0x0

    invoke-direct {v7, v10, v0}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;I)V

    new-instance v14, Lcom/android/quickstep/util/g;

    const/4 v0, 0x1

    invoke-direct {v14, v10, v0}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;I)V

    new-instance v15, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_CENTER_X:Lcom/oplus/animation/FloatPropertyCompat;

    iget v3, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentCenterX:F

    iget-object v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v0, v11, Landroid/graphics/PointF;->x:F

    const/16 v1, 0x3e8

    int-to-float v9, v1

    mul-float v5, v0, v9

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/16 v16, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;FFFFLcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;IZ)V

    iput-object v15, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    iget-object v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v0}, Lcom/android/quickstep/util/RectFSpringAnim;->getTrackedYFromRect(Landroid/graphics/RectF;)F

    move-result v4

    iget v0, v11, Landroid/graphics/PointF;->y:F

    invoke-direct {v10, v0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->adjustVelocityY(F)F

    move-result v0

    new-instance v15, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    sget-object v2, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_Y:Lcom/oplus/animation/FloatPropertyCompat;

    iget v3, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mCurrentY:F

    mul-float v5, v0, v17

    const v0, 0x3dcccccd  # 0.1f

    const v1, 0x3f666666  # 0.9f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v1

    const v1, 0x469c4000  # 20000.0f

    div-float/2addr v6, v1

    add-float/2addr v6, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v7, v14

    invoke-direct/range {v0 .. v9}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;FFFFLcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;IZ)V

    iput-object v15, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    iget-object v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_bf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get minimum visible change less than 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mStartRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x3b03126f  # 0.002f

    :cond_bf
    new-instance v2, Lcom/oplus/animation/SpringAnimation;

    sget-object v3, Lcom/android/quickstep/util/OplusRectFSpringAnim;->OPLUS_RECT_SCALE_PROGRESS:Lcom/oplus/animation/FloatPropertyCompat;

    invoke-direct {v2, v10, v3}, Lcom/oplus/animation/SpringAnimation;-><init>(Ljava/lang/Object;Lcom/oplus/animation/FloatPropertyCompat;)V

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->initSpringForce(FI)Lcom/oplus/animation/SpringForce;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oplus/animation/SpringAnimation;->setSpring(Lcom/oplus/animation/SpringForce;)Lcom/oplus/animation/SpringAnimation;

    move-result-object v1

    iget v2, v11, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/oplus/animation/SpringAnimation;->setStartVelocity(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v1

    check-cast v1, Lcom/oplus/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Lcom/oplus/animation/SpringAnimation;->setMinimumVisibleChange(F)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    new-instance v1, Lcom/android/quickstep/util/g;

    invoke-direct {v1, v10, v3}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/animation/SpringAnimation;->addEndListener(Lcom/oplus/animation/DynamicAnimation$OnAnimationEndListener;)Lcom/oplus/animation/DynamicAnimation;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/SpringAnimation;

    iput-object v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/oplus/animation/SpringAnimation;

    iget-boolean v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->withAssistant:Z

    if-eqz v0, :cond_f3

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->createAssistantScreenEnterAnim()V

    goto :goto_f6

    :cond_f3
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnimEnded:Z

    :goto_f6
    iget-object v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectXAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    if-nez v0, :cond_fb

    goto :goto_fe

    :cond_fb
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->start()V

    :goto_fe
    iget-object v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectYAnim:Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;

    if-nez v0, :cond_103

    goto :goto_106

    :cond_103
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeUpSpringAnim;->start()V

    :goto_106
    iget-object v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->mRectScaleAnim:Lcom/oplus/animation/SpringAnimation;

    if-nez v0, :cond_10b

    goto :goto_10e

    :cond_10b
    invoke-virtual {v0}, Lcom/oplus/animation/SpringAnimation;->start()V

    :goto_10e
    iget-object v0, v10, Lcom/android/quickstep/util/OplusRectFSpringAnim;->assistantAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_113

    goto :goto_116

    :cond_113
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_116
    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimsStarted:Z

    iget-object v0, v10, Lcom/android/quickstep/util/RectFSpringAnim;->mAnimatorListeners:Ljava/util/List;

    const-string v1, "mAnimatorListeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_124
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_124

    :cond_135
    return-void
.end method

.method public final updateTargetRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string/jumbo v0, "targetRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/util/RectFSpringAnim;->mTargetRect:Landroid/graphics/RectF;

    return-void
.end method
