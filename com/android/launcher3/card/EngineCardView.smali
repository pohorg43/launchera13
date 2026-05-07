.class public abstract Lcom/android/launcher3/card/EngineCardView;
.super Lcom/android/launcher3/card/LauncherCardView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/EngineCardView$MyDragListener;,
        Lcom/android/launcher3/card/EngineCardView$Companion;
    }
.end annotation


# static fields
.field private static final CARD_ANIMATION_SCALE_START:F = 0.8f

.field public static final Companion:Lcom/android/launcher3/card/EngineCardView$Companion;

.field public static final FRAME_DELAY:I = 0x10

.field private static final INIT_ANIM_DURATION:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-Engine"


# instance fields
.field private defaultCard:Lcom/android/launcher3/card/DefaultCardView;

.field private engine:Lcom/oplus/card/helper/SmartEngine;

.field private initAnimator:Landroid/animation/AnimatorSet;

.field private isShowDefaultView:Z

.field private final mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

.field private mUseViewScreenshotOnDraw:Z

.field private mViewScreenshot:Landroid/graphics/Picture;

.field private resumeRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final shotPaint$delegate:Ly2/e;

.field private final shotPath$delegate:Ly2/e;

.field private shouldPlayCardAnimator:Z

.field private smartCardAnimEnd:Z

.field private smartView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/EngineCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/EngineCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/EngineCardView;->Companion:Lcom/android/launcher3/card/EngineCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Ly2/e;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Ly2/e;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Ly2/e;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Ly2/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/card/LauncherCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPaint$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPaint$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Ly2/e;

    sget-object p1, Lcom/android/launcher3/card/EngineCardView$shotPath$2;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$shotPath$2;

    invoke-static {p1}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Ly2/e;

    return-void
.end method

.method public static final synthetic access$setInitAnimator$p(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/AnimatorSet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static final synthetic access$setSmartCardAnimEnd$p(Lcom/android/launcher3/card/EngineCardView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->smartCardAnimEnd:Z

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/card/EngineCardView;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->refreshCardContentByUIData$lambda-0(Lcom/android/launcher3/card/EngineCardView;Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void
.end method

.method public static synthetic i()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed$lambda-1()V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda-4(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda-5(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator$lambda-7(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda-4(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda-5(Lcom/android/launcher3/card/EngineCardView;Landroid/animation/ValueAnimator;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mSwitchStateDrawParam:Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/launcher/SwitchStateRenderer$WidgetStateSwitchDrawParam;->mAnimationFraction:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private static final playSmartCardAnimator$lambda-7(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_9

    goto :goto_1c

    :cond_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1c
    return-void
.end method

.method private static final refreshCardContentByUIData$lambda-0(Lcom/android/launcher3/card/EngineCardView;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uiData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->refreshCardContentByUIData(Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void
.end method

.method private static final showLoadingIfNeed$lambda-1()V
    .registers 0

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getDefaultCard()Lcom/android/launcher3/card/DefaultCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-object p0
.end method

.method public final getEngine()Lcom/oplus/card/helper/SmartEngine;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    return-object p0
.end method

.method public getErrorCallback()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInitAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final getMDragListener()Lcom/android/launcher3/card/EngineCardView$MyDragListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    return-object p0
.end method

.method public final getMUseViewScreenshotOnDraw()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/EngineCardView;->mUseViewScreenshotOnDraw:Z

    return p0
.end method

.method public final getMViewScreenshot()Landroid/graphics/Picture;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    return-object p0
.end method

.method public final getResumeRunnableList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    return-object p0
.end method

.method public final getShotPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->shotPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method public final getShotPath()Landroid/graphics/Path;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->shotPath$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Path;

    return-object p0
.end method

.method public getSize()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public getSmartView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    return-object p0
.end method

.method public getSmartViewAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleGetViewCallback(Landroid/view/View;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_9
    const-string v2, "LauncherCardView-Engine"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6f

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "handleGetViewCallback, "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hasParent = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v1, :cond_3a

    goto :goto_42

    :cond_3a
    invoke-virtual {v1}, Lcom/oplus/card/helper/SmartEngine;->isCardCached()Z

    move-result v1

    if-ne v1, v3, :cond_42

    move v1, v3

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v4

    :goto_43
    if-eqz v1, :cond_6f

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    :cond_5d
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_68

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_69

    :cond_68
    move-object v1, v0

    :goto_69
    if-nez v1, :cond_6c

    goto :goto_6f

    :cond_6c
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    const-string v5, "mLauncher.dragController"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v5

    if-eqz v5, :cond_ae

    iget-object v5, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-nez v5, :cond_ae

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v1

    if-nez v1, :cond_ae

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->hasDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)Z

    move-result v0

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/EngineCardView$MyDragListener;->setCode(I)V

    iget-object p1, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mDragListener:Lcom/android/launcher3/card/EngineCardView$MyDragListener;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    :cond_ad
    return v4

    :cond_ae
    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v1, :cond_b3

    goto :goto_bb

    :cond_b3
    invoke-virtual {v1, p2}, Lcom/oplus/card/helper/SmartEngine;->isErrorCode(I)Z

    move-result v1

    if-ne v1, v3, :cond_bb

    move v1, v3

    goto :goto_bc

    :cond_bb
    :goto_bb
    move v1, v4

    :goto_bc
    if-eqz v1, :cond_104

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "getView from SmartEngine failed: code = "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    instance-of p1, p1, Lcom/oplus/card/helper/QuickAppSmartEngine;

    if-eqz p1, :cond_11a

    const/4 p1, -0x1

    if-ne p2, p1, :cond_11a

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p1

    if-nez p1, :cond_db

    goto :goto_e5

    :cond_db
    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    if-nez p1, :cond_e2

    goto :goto_e5

    :cond_e2
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->resetUiData()V

    :goto_e5
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p1, :cond_ea

    goto :goto_ed

    :cond_ea
    invoke-virtual {p1}, Lcom/oplus/card/helper/SmartEngine;->removeFailRetryProxy()V

    :goto_ed
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p1, :cond_f2

    goto :goto_f7

    :cond_f2
    iget-object p2, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/oplus/card/helper/SmartEngine;->releaseView(Landroid/view/View;)V

    :goto_f7
    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p1, :cond_fc

    goto :goto_101

    :cond_fc
    sget-object p2, Lcom/android/launcher3/card/EngineCardView$handleGetViewCallback$1;->INSTANCE:Lcom/android/launcher3/card/EngineCardView$handleGetViewCallback$1;

    invoke-virtual {p1, p2}, Lcom/oplus/card/helper/SmartEngine;->setCallback(Lkotlin/jvm/functions/Function2;)V

    :goto_101
    iput-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    goto :goto_11a

    :cond_104
    iget-object p2, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-eq p2, p1, :cond_11a

    if-eqz p1, :cond_11a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_11a

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->setSmartView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;)V

    return v3

    :cond_11a
    :goto_11a
    return v4
.end method

.method public initCardAfterInflate()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->showMultiLandHoldView()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->showLoadingIfNeed()V

    :cond_14
    return-void
.end method

.method public isAContainer()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isViewScreenshotValid()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public needSameScreenData()Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    instance-of v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    if-eqz v0, :cond_13

    const-string/jumbo v0, "null cannot be cast to non-null type com.oplus.card.helper.QuickAppSmartEngine"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-virtual {p0}, Lcom/oplus/card/helper/QuickAppSmartEngine;->needSameScreenData()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final obtainViewWithEngine(Lcom/oplus/card/config/domain/model/CardConfigInfo;)V
    .registers 6

    const-string v0, "cardConfigInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p1, :cond_30

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "itemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getErrorCallback()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/CardModelWrapper;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$2;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/launcher3/card/SmartEngineFactory;->createEngine(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/helper/SmartEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    :cond_30
    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p0, :cond_35

    goto :goto_39

    :cond_35
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->obtainView([B)V

    :goto_39
    return-void
.end method

.method public final obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 9

    const-string/jumbo v0, "uiData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    const-string v1, "LauncherCardView-Engine"

    if-nez v0, :cond_aa

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_aa

    :cond_1a
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    const-string v2, "itemInfo"

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getErrorCallback()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/card/CardModelWrapper;->getSeedParams()Lcom/android/launcher3/card/seed/SeedParams;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/card/EngineCardView$obtainViewWithEngine$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/launcher3/card/SmartEngineFactory;->createEngine(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/launcher3/card/seed/SeedParams;Lkotlin/jvm/functions/Function2;)Lcom/oplus/card/helper/SmartEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    :cond_45
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    const-string/jumbo v2, "obtainViewWithEngine:  mCardBounds = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v0, :cond_5e

    goto :goto_93

    :cond_5e
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    const-string v2, "mCardBounds"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/card/helper/SmartEngine;->setCardVisibleRect(Landroid/graphics/Rect;)V

    goto :goto_93

    :cond_69
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    const-string v3, "mLauncher"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/android/launcher3/card/LauncherCardUtil;->getLargeDeviceCardRectBounds(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher/Launcher;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v2, "obtainViewWithEngine: rect = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v1, :cond_90

    goto :goto_93

    :cond_90
    invoke-virtual {v1, v0}, Lcom/oplus/card/helper/SmartEngine;->setCardVisibleRect(Landroid/graphics/Rect;)V

    :cond_93
    :goto_93
    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v0, :cond_98

    goto :goto_9d

    :cond_98
    iget-object v1, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/card/helper/SmartEngine;->obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V

    :goto_9d
    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez p0, :cond_a2

    goto :goto_a9

    :cond_a2
    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/UIData;->getData()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->obtainView([B)V

    :goto_a9
    return-void

    :cond_aa
    :goto_aa
    const-string p0, "isLandscape or permission deny obtainNormalCardView return"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->mUseViewScreenshotOnDraw:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    goto :goto_17

    :cond_10
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v2, :cond_17

    move v1, v2

    :cond_17
    :goto_17
    if-eqz v1, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_24

    :cond_1f
    iget-object v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mCardBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    :goto_24
    if-nez v0, :cond_2d

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_2d

    :cond_2a
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onUpdateUIData(Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->refreshCardContentByUIData(Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public playInitAnimator()V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    if-nez v0, :cond_c

    const-string p0, "LauncherCardView-Engine"

    const-string v0, "it\'s need to play card initial animation."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    const-string v1, "mLauncher.deviceProfile"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_6a

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v4, v2, [F

    const v5, 0x3f4ccccd  # 0.8f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    if-nez v3, :cond_4a

    goto :goto_68

    :cond_4a
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    aput-object v0, v2, v5

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/EngineCardView$playInitAnimator$lambda-10$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v3, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :goto_68
    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public playSmartCardAnimator(Landroid/view/View;)V
    .registers 3

    const-string/jumbo v0, "newView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public final playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V
    .registers 9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    :cond_c
    move v0, v2

    goto :goto_15

    :cond_e
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isCardCached()Z

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    :goto_15
    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    if-nez v0, :cond_1c

    goto :goto_23

    :cond_1c
    invoke-virtual {v0}, Lcom/oplus/card/helper/SmartEngine;->isSeedCardEngine()Z

    move-result v0

    if-ne v0, v1, :cond_23

    move v2, v1

    :cond_23
    :goto_23
    if-nez v2, :cond_2d

    instance-of p2, p1, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz p2, :cond_2c

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    const-string v2, "mLauncher.dragLayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3b

    goto :goto_3f

    :cond_3b
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_3f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const-string v3, "LauncherCardView-Engine"

    if-eqz v2, :cond_80

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ltz v2, :cond_80

    :goto_4e
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/views/ListenerView;

    if-eqz v4, :cond_7b

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->logCardInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "playSmartCardAnimator: but ListenerView is showing."

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.views.ListenerView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/ListenerView;

    new-instance v1, Lcom/android/launcher/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/z;-><init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ListenerView;->addCustomCloseListener(Ljava/lang/Runnable;)V

    return-void

    :cond_7b
    if-gez v1, :cond_7e

    goto :goto_80

    :cond_7e
    move v2, v1

    goto :goto_4e

    :cond_80
    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "playSmartCardAnimator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez p1, :cond_98

    move-object v2, v1

    goto :goto_a0

    :cond_98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/card/DefaultCardView;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_f5

    new-array v0, v3, [F

    fill-array-data v0, :array_144

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v4, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v4, "alphaAnimator"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/card/EngineCardView;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p1, :cond_e0

    move-object v4, v1

    goto :goto_e4

    :cond_e0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    :goto_e4
    instance-of v5, v4, Landroid/animation/Animator;

    if-eqz v5, :cond_eb

    check-cast v4, Landroid/animation/Animator;

    goto :goto_ec

    :cond_eb
    move-object v4, v1

    :goto_ec
    if-nez v4, :cond_ef

    goto :goto_f2

    :cond_ef
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :goto_f2
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_f5
    new-array v0, v3, [F

    fill-array-data v0, :array_14c

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/common/config/a;

    invoke-direct {v4, p2, v3}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/EngineCardView;->getSmartViewAnimDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    instance-of v0, p2, Lcom/android/launcher3/card/DefaultCardView;

    if-eqz v0, :cond_11a

    sget-object v3, Lcom/android/common/config/AnimationConstant;->CURVE_OPACITY_INOUT:Landroid/view/animation/OplusBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_11f

    :cond_11a
    sget-object v3, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_11f
    if-eqz p1, :cond_129

    new-instance v3, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView$playSmartCardAnimator$$inlined$doOnEnd$2;-><init>(Lcom/android/launcher3/card/EngineCardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_129
    if-eqz v0, :cond_12e

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/card/DefaultCardView;

    :cond_12e
    if-nez v1, :cond_131

    goto :goto_134

    :cond_131
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_134
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->isSurfaceAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_142

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    :cond_142
    return-void

    nop

    :array_144
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_14c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public refreshCardContentByUIData(Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 6

    const-string/jumbo v0, "uiData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->isLandscape()Z

    move-result v0

    const-string v1, "LauncherCardView-Engine"

    if-nez v0, :cond_61

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_61

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/card/LauncherCardView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v2

    const-string v3, "itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->checkPictureAble(Lcom/android/launcher3/card/LauncherCardInfo;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "launcher is NOT resumed, waiting resume. resumeRunnableList.size = "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher3/card/EngineCardView;Lcom/oplus/card/manager/domain/model/UIData;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5d

    const-string/jumbo p0, "refreshCardContentByUIData, but parent is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->obtainViewWithEngine(Lcom/oplus/card/manager/domain/model/UIData;)V

    return-void

    :cond_61
    :goto_61
    const-string p0, "isLandscape or permission deny no need refresh uiData"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    instance-of v0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    if-eqz v0, :cond_15

    const-string/jumbo v0, "null cannot be cast to non-null type com.oplus.card.helper.QuickAppSmartEngine"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/QuickAppSmartEngine;->sendMessage(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public final setDefaultCard(Lcom/android/launcher3/card/DefaultCardView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    return-void
.end method

.method public final setEngine(Lcom/oplus/card/helper/SmartEngine;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->engine:Lcom/oplus/card/helper/SmartEngine;

    return-void
.end method

.method public setIsShowDefaultView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->isShowDefaultView:Z

    return-void
.end method

.method public final setMUseViewScreenshotOnDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mUseViewScreenshotOnDraw:Z

    return-void
.end method

.method public final setMViewScreenshot(Landroid/graphics/Picture;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->mViewScreenshot:Landroid/graphics/Picture;

    return-void
.end method

.method public final setResumeRunnableList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->resumeRunnableList:Ljava/util/List;

    return-void
.end method

.method public setScaleToFit(F)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->initAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_d

    :cond_6
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v1, 0x1

    :cond_d
    :goto_d
    if-eqz v1, :cond_12

    invoke-super {p0, p1}, Lcom/android/launcher3/card/LauncherCardView;->setScaleToFit(F)V

    :cond_12
    return-void
.end method

.method public setSmartView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    return-void
.end method

.method public setUseViewScreenshotOnDraw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/EngineCardView;->mUseViewScreenshotOnDraw:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/EngineCardView;->onVisibilityChange(I)V

    return-void
.end method

.method public showLoadingIfNeed()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->smartView:Landroid/view/View;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    if-nez v0, :cond_44

    const-string v0, "LauncherCardView-Engine"

    const-string/jumbo v1, "showLoadingIfNeed:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.card.DefaultCardView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/card/DefaultCardView;

    iget v1, p0, Lcom/android/launcher3/card/LauncherCardView;->mRadius:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->setRadius(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/android/common/util/e0;->d:Lcom/android/common/util/e0;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/DefaultCardView;->initial(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/card/EngineCardView;->defaultCard:Lcom/android/launcher3/card/DefaultCardView;

    iget-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    if-nez v1, :cond_44

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/card/EngineCardView;->shouldPlayCardAnimator:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/card/EngineCardView;->playSmartCardAnimator(Landroid/view/View;Landroid/view/View;)V

    :cond_44
    return-void
.end method
