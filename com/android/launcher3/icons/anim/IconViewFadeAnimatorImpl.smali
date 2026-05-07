.class Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;


# static fields
.field private static final MAX_VIEW_ALPHA:F = 1.0f

.field private static final MIN_VIEW_ALPHA:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BubbleTextFadeAnimatorImpl"

.field private static final VIEW_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field public mView:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$2;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "viewAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->VIEW_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;)F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;F)F
    .registers 2

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    return p1
.end method


# virtual methods
.method public applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z
    .registers 11

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz p1, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_20
    iget p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    cmpl-float p1, p1, v0

    const-string v1, "BubbleTextFadeAnimatorImpl"

    const-string v3, "UnInstallApp"

    const/4 v4, 0x0

    if-nez p1, :cond_43

    const-string p1, "applyViewFadeState -- mAlpha: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return v4

    :cond_43
    if-eqz p3, :cond_7c

    sget-object p1, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->VIEW_ALPHA_PROPERTY:Landroid/util/Property;

    const/4 p3, 0x2

    new-array p3, p3, [F

    aput v2, p3, v4

    const/4 v2, 0x1

    aput v0, p3, v2

    invoke-static {p0, p1, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    sget-object p3, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance p2, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;

    invoke-direct {p2, p0, p4}, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl$1;-><init>(Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    const-string p0, "animation -- start: "

    invoke-static {v3, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7c
    iput v0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mAlpha:F

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewFadeAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return v4
.end method
