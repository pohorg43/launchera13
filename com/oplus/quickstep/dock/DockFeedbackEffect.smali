.class public final Lcom/oplus/quickstep/dock/DockFeedbackEffect;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dock/DockFeedbackEffect$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/oplus/quickstep/dock/DockFeedbackEffect$Companion;

.field private static final DARK_SCRIM_ALPHA:F = 0.25f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LIGHT_SCRIM_ALPHA:F = 0.12f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PRESSED_DURATON:J = 0xc8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DockFeedbackEffect"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final UP_DURATON:J = 0x154L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final PRESSED_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private dockScrimAlpha:F

.field private final mFeedbackScrimAlpha:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mPressedAnim$delegate:Ly2/e;

.field private final mScrimColor:I

.field private final mUpAnim$delegate:Ly2/e;

.field private mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dock/DockFeedbackEffect$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->Companion:Lcom/oplus/quickstep/dock/DockFeedbackEffect$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 6

    const-string v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPaint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ecccccd  # 0.4f

    const/4 v0, 0x0

    const v1, 0x3e4ccccd  # 0.2f

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->PRESSED_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/high16 p1, -0x1000000

    iput p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mScrimColor:I

    sget-object p1, Lcom/android/common/util/ThemeUtils;->Companion:Lcom/android/common/util/ThemeUtils$Companion;

    iget-object p2, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "mView.context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/common/util/ThemeUtils$Companion;->isDarkMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_42

    const/high16 p1, 0x3e800000  # 0.25f

    goto :goto_45

    :cond_42
    const p1, 0x3df5c28f  # 0.12f

    :goto_45
    iput p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mFeedbackScrimAlpha:F

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance p2, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mPressedAnim$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mPressedAnim$2;-><init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mPressedAnim$delegate:Ly2/e;

    new-instance p2, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mUpAnim$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect$mUpAnim$2;-><init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mUpAnim$delegate:Ly2/e;

    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mView:Landroid/view/View;

    new-instance p2, Lcom/android/launcher3/allapps/i;

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/i;-><init>(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_59

    const/4 p2, 0x1

    if-eq p1, p2, :cond_36

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    goto :goto_6a

    :cond_12
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_23
    iget-object p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getDockScrimAlpha()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->makeColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_6a

    :cond_36
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_47

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_47
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMUpAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMUpAnim()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6a

    :cond_59
    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p1

    if-nez p1, :cond_6a

    invoke-direct {p0}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->getMPressedAnim()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->_init_$lambda-0(Lcom/oplus/quickstep/dock/DockFeedbackEffect;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMFeedbackScrimAlpha$p(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mFeedbackScrimAlpha:F

    return p0
.end method

.method public static final synthetic access$getMPaint$p(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static final synthetic access$getMView$p(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getPRESSED_INTERPOLATOR$p(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)Landroid/view/animation/PathInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->PRESSED_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public static final synthetic access$getUP_INTERPOLATOR$p(Lcom/oplus/quickstep/dock/DockFeedbackEffect;)Landroid/view/animation/PathInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public static final synthetic access$makeColorFilter(Lcom/oplus/quickstep/dock/DockFeedbackEffect;F)Landroid/graphics/ColorFilter;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->makeColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method private final getMPressedAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mPressedAnim$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final getMUpAnim()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mUpAnim$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private final makeColorFilter(F)Landroid/graphics/ColorFilter;
    .registers 2

    iget p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->mScrimColor:I

    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDockScrimAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->dockScrimAlpha:F

    return p0
.end method

.method public final setDockScrimAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/dock/DockFeedbackEffect;->dockScrimAlpha:F

    return-void
.end method
