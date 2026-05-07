.class public final Lcom/android/launcher3/icons/anim/OplusIconAnimators;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconAnimators;
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "OplusIconAnimators"


# instance fields
.field private final iconScaleAnimator$delegate:Ly2/e;

.field private final iconSpiritAnimator$delegate:Ly2/e;

.field private final iconViewFadeAnimator$delegate:Ly2/e;

.field private final iconViewPressAnimator$delegate:Ly2/e;

.field private final mView:Lcom/android/launcher3/BubbleTextView;

.field private final textAlphaAnimator$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->Companion:Lcom/android/launcher3/icons/anim/OplusIconAnimators$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    const-string v0, "mView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewFadeAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewFadeAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewFadeAnimator$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$textAlphaAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$textAlphaAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconScaleAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconScaleAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconViewPressAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewPressAnimator$delegate:Ly2/e;

    new-instance v0, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconSpiritAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators$iconSpiritAnimator$2;-><init>(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)V

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator$delegate:Ly2/e;

    return-void
.end method

.method public static final synthetic access$getMView$p(Lcom/android/launcher3/icons/anim/OplusIconAnimators;)Lcom/android/launcher3/BubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->mView:Lcom/android/launcher3/BubbleTextView;

    return-object p0
.end method

.method private final getIconScaleAnimator()Lcom/android/launcher3/icons/anim/IIconScaleAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconScaleAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    return-object p0
.end method

.method private final getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconSpiritAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    return-object p0
.end method

.method private final getIconViewFadeAnimator()Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewFadeAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

    return-object p0
.end method

.method private final getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->iconViewPressAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    return-object p0
.end method

.method private final getTextAlphaAnimator()Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->textAlphaAnimator$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    return-object p0
.end method


# virtual methods
.method public applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewFadeAnimator()Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/IIconViewFadeAnimator;->applyViewFadeState(ZIZLcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;)Z

    move-result p0

    return p0
.end method

.method public canDrawShadow()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result p0

    return p0
.end method

.method public cancelPointerAnim()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->cancelPointerAnim()V

    return-void
.end method

.method public cancelTextAlphaAnimator()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getTextAlphaAnimator()Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->cancelTextAlphaAnimator()V

    return-void
.end method

.method public enableBackGroundShadow()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableBackGroundShadow()Z

    move-result p0

    return p0
.end method

.method public enableHardwareLayer(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->enableHardwareLayer(Z)V

    return-void
.end method

.method public executeAfterIconDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public getBGPaint()Landroid/graphics/Paint;
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getBGPaint()Landroid/graphics/Paint;

    move-result-object p0

    const-string v0, "iconSpiritAnimator.bgPaint"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentIconArea()Landroid/graphics/RectF;
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "iconSpiritAnimator.currentIconArea"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentRect()Landroid/graphics/RectF;
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentRect()Landroid/graphics/RectF;

    move-result-object p0

    const-string v0, "iconSpiritAnimator.currentRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCurrentTranslationX()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationX()F

    move-result p0

    return p0
.end method

.method public getCurrentTranslationY()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentTranslationY()F

    move-result p0

    return p0
.end method

.method public getEventX()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventX()F

    move-result p0

    return p0
.end method

.method public getEventY()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getEventY()F

    move-result p0

    return p0
.end method

.method public getIconRadius()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getIconRadius()F

    move-result p0

    return p0
.end method

.method public getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getPointerDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    const-string v0, "iconSpiritAnimator.pointerDrawable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPressAnimationCurrentValue()F
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->getPressAnimationCurrentValue()F

    move-result p0

    return p0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/icons/touch/ITouchProcessor;

    if-eqz v0, :cond_11

    check-cast p0, Lcom/android/launcher3/icons/touch/ITouchProcessor;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    if-nez p0, :cond_16

    const/4 p0, 0x0

    goto :goto_1a

    :cond_16
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/touch/ITouchProcessor;->handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_1a
    return p0
.end method

.method public initSpiritAnimParams()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->initSpiritAnimParams()V

    return-void
.end method

.method public isEnterAnim()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isEnterAnim()Z

    move-result p0

    return p0
.end method

.method public isPointerAnimRunning()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isShadowAnimRunning()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isShadowAnimRunning()Z

    move-result p0

    return p0
.end method

.method public isSimpleExitAnim()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSimpleExitAnim()Z

    move-result p0

    return p0
.end method

.method public isSpiritAnimEnable()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result p0

    return p0
.end method

.method public onInterceptIconDraw(Landroid/graphics/Canvas;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconScaleAnimator()Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->drawCanvasScale(Landroid/graphics/Canvas;)Z

    move-result p0

    return p0
.end method

.method public playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconScaleAnimator()Lcom/android/launcher3/icons/anim/IIconScaleAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconScaleAnimator;->playIconScaleAnimation(Lcom/android/launcher3/icons/anim/IconAnimationParams;Z)V

    return-void
.end method

.method public playSpiritAnimation(ZZ)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    return-void
.end method

.method public playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getTextAlphaAnimator()Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->playTextAlphaAnimation(JLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public prepareForShadowAnim(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public recoveryIconWhenEnterToggleBar()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->recoveryIconWhenEnterToggleBar()V

    return-void
.end method

.method public resetAllFlagImmediately(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    return-void
.end method

.method public resetPressAnimStateForFloating()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForFloating()V

    return-void
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimStateForLongClick()V

    return-void
.end method

.method public resetPressAnimatorStateForTouch(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconViewPressAnimator()Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;->resetPressAnimatorStateForTouch(Z)V

    return-void
.end method

.method public setDrawShadowFlag(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    return-void
.end method

.method public setLeftLocation(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setLeftLocation(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public setTranslationTo(F)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setTranslationTo(F)V

    return-void
.end method

.method public textInVisibleAnimation()Z
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getTextAlphaAnimator()Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->textInVisibleAnimation()Z

    move-result p0

    return p0
.end method

.method public updateIconBounds()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateIconBounds()V

    return-void
.end method

.method public updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updatePainterWhenDrawRadialCircle()Landroid/graphics/Paint;

    move-result-object p0

    const-string v0, "iconSpiritAnimator.updat…terWhenDrawRadialCircle()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateVelocity(FF)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateVelocity(FF)V

    return-void
.end method

.method public upgradeTranslation(Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->upgradeTranslation(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/OplusIconAnimators;->getIconSpiritAnimator()Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result p0

    return p0
.end method
