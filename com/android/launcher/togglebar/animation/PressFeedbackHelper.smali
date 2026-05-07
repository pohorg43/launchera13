.class public final Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_DURATION:J = 0xc8L

.field private static final DEFAULT_PRESS_FEEDBACK_ANIMATION_START_VALUE:F = 1.0f

.field public static final INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

.field public static final PERCENT:F = 0.4f

.field public static final PRESS_ANIM_MIN_SCALE:F = 0.9f

.field private static final PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    invoke-direct {v0}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->INSTANCE:Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final generatePressAnimation$OplusLauncher_OPPOPallExportAallRelease(Landroid/view/View;FLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;
    .registers 5

    const-string p0, "callback"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    new-instance v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generatePressAnimation$pressFeedbackAnimation$1;-><init>(Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;FFF)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    sget-object p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given view is empty. Please provide a valid view."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final generatePressAnimationRecord(JF)Landroid/animation/ValueAnimator;
    .registers 6

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p0, v0

    const/4 v0, 0x1

    aput p3, p0, v0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p1, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string/jumbo p1, "pressAnimationRecord"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final generateResumeAnimation(Landroid/view/View;FJLcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;)Landroid/view/animation/ScaleAnimation;
    .registers 7

    const-string p0, "callback"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    new-instance v0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generateResumeAnimation$pressFeedbackToNormalAnimation$1;

    invoke-direct {v0, p5, p2, p0, p1}, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$generateResumeAnimation$pressFeedbackToNormalAnimation$1;-><init>(Lcom/android/launcher/togglebar/animation/PressFeedbackHelper$AlphaColorCallback;FFF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    sget-object p0, Lcom/android/launcher/togglebar/animation/PressFeedbackHelper;->PRESS_FEEDBACK_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given view is empty. Please provide a valid view."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
