.class public final Lcom/android/launcher3/anim/IconPressAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/anim/IconPressAnimManager$Companion;,
        Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;,
        Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;,
        Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;,
        Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

.field private static final MAX_ALPHA:F = 255.0f

.field public static final PRESS_ANIMATION_THRESHOLD:F = 0.4f

.field private static final SHIFT_LEFT_FOR_ALPHA:I = 0x18

.field private static final TAG:Ljava/lang/String; = "IconPressAnimManager"


# instance fields
.field private mCurrentAnimScale:F

.field private mIconView:Landroid/view/View;

.field private mIsNeedToDelayCancelScaleAnim:Z

.field private mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

.field private mNeedSetCallBack:Z

.field private mPressAnimation:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/anim/IconPressAnimManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;Landroid/view/View;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    iput-object p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

    iput-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIconView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim$lambda-0(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMIconView$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mNeedSetCallBack:Z

    return p0
.end method

.method public static final synthetic access$setMIsNeedToDelayCancelScaleAnim$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    return-void
.end method

.method public static final synthetic access$setMNeedSetCallBack$p(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mNeedSetCallBack:Z

    return-void
.end method

.method private final cancelAnimation(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    goto :goto_e

    :cond_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-ne v0, v2, :cond_e

    move v1, v2

    :cond_e
    :goto_e
    if-eqz v1, :cond_2c

    iget-object v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    invoke-static {v0, p1}, Lcom/android/launcher3/anim/light/Utils;->isNeedToDelayCancel(Landroid/animation/ValueAnimator;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    const-string/jumbo v0, "press anim should delay or not ? "

    const-string v1, "IconPressAnimManager"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    if-nez p1, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private final createPressAnimation(Z)Landroid/animation/ValueAnimator;
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;-><init>(ZF)V

    goto :goto_17

    :cond_10
    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-direct {v0, p1, p0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;-><init>(ZF)V

    :goto_17
    return-object v0
.end method

.method private final createShadowColorFilter(ZF[F)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    aget p0, p3, p0

    aget p1, p3, v0

    invoke-static {p2, p0, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    goto :goto_15

    :cond_d
    aget p1, p3, v0

    aget p0, p3, p0

    invoke-static {p2, p1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    :goto_15
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 p2, 0x437f0000  # 255.0f

    mul-float/2addr p0, p2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static final doPressFeedbackAnim$lambda-0(Lcom/android/launcher3/anim/IconPressAnimManager;ZLandroid/animation/ValueAnimator;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.anim.IconPressAnimManager.IPressAnimation"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;

    invoke-interface {v1}, Lcom/android/launcher3/anim/IconPressAnimManager$IPressAnimation;->getShadowAlphaScope()[F

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/anim/IconPressAnimManager;->createShadowColorFilter(ZF[F)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mListener:Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;

    iget v2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    invoke-interface {v1, v2, v0}, Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;->onUpdate(FLandroid/graphics/PorterDuffColorFilter;)V

    if-eqz p1, :cond_56

    iget-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz p1, :cond_56

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float p1, v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3ecccccd  # 0.4f

    mul-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_56

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0, p1, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(ZZ)V

    :cond_56
    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_a

    if-nez p0, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    :goto_a
    return-void
.end method

.method public final doPressFeedbackAnim(ZZ)V
    .registers 11

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancelAnimation(Z)V

    :cond_5
    if-nez p1, :cond_13

    iget-boolean p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mIsNeedToDelayCancelScaleAnim:Z

    if-eqz p2, :cond_13

    const-string p0, "IconPressAnimManager"

    const-string p1, "Can not do up event animation as we have delay to cancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->createPressAnimation(Z)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance v0, Lcom/android/launcher/pageindicators/c;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/pageindicators/c;-><init>(Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_24
    iget-object p2, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez p2, :cond_29

    goto :goto_38

    :cond_29
    new-instance v7, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;

    move-object v0, v7

    move v1, p1

    move-object v2, p0

    move v3, p1

    move-object v4, p0

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$$inlined$addListener$default$1;-><init>(ZLcom/android/launcher3/anim/IconPressAnimManager;ZLcom/android/launcher3/anim/IconPressAnimManager;Lcom/android/launcher3/anim/IconPressAnimManager;Z)V

    invoke-virtual {p2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_38
    iget-object p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mPressAnimation:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_3d

    goto :goto_40

    :cond_3d
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_40
    return-void
.end method

.method public final getCurrentAnimScale()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    return p0
.end method

.method public final getResetPressDuration()J
    .registers 7

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v5

    aget v5, v5, v4

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    sub-float/2addr v5, p0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object p0

    aget p0, p0, v4

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$LightAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v0

    aget v0, v0, v3

    sub-float/2addr p0, v0

    div-float/2addr v5, p0

    invoke-static {v5, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    const-wide/16 v0, 0x32

    goto :goto_4c

    :cond_2d
    sget-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation;->Companion:Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v5

    aget v5, v5, v4

    iget p0, p0, Lcom/android/launcher3/anim/IconPressAnimManager;->mCurrentAnimScale:F

    sub-float/2addr v5, p0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object p0

    aget p0, p0, v4

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$NormalAnimation$Companion;->getSCALE_SCOPE()[F

    move-result-object v0

    aget v0, v0, v3

    sub-float/2addr p0, v0

    div-float/2addr v5, p0

    invoke-static {v5, v2, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p0

    const-wide/16 v0, 0xc8

    :goto_4c
    long-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method
