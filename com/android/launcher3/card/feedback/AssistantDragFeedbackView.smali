.class public final Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$Companion;

.field private static final DURATION:J = 0x12cL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAX_PAINT_ALPHA:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DisallowDragFeedbackView"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private drawHeight:F

.field private drawOffset:F

.field private drawTop:I

.field private drawWidth:F

.field private final mAllowDrag:Z

.field private final mHideAnimtor:Landroid/animation/ObjectAnimator;

.field private final mIsRtl:Z

.field private final mItemType:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mNeedRemoveViewWhenEnd:Z

.field private final mPaint$delegate:Ly2/e;

.field private final mRadius:I

.field private final mRemoveViewListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mRemoveViewListener$1;

.field private final mShowAnimtor:Landroid/animation/ObjectAnimator;

.field private mStatusBarHeight:I

.field private final mToastListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;

.field private final mWorkspaceScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->Companion:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;ZIZ)V
    .registers 7

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mIsRtl:Z

    iput p3, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mItemType:I

    iput-boolean p4, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mAllowDrag:Z

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    iget-object p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mWorkspaceScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070590

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mRadius:I

    sget-object p1, Ly2/g;->c:Ly2/g;

    new-instance p2, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mPaint$2;

    invoke-direct {p2, p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mPaint$2;-><init>(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)V

    invoke-static {p1, p2}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mPaint$delegate:Ly2/e;

    new-instance p1, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;-><init>(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mToastListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;

    new-instance p1, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mRemoveViewListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mRemoveViewListener$1;-><init>(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mRemoveViewListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mRemoveViewListener$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->buildAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "buildAnimator(true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mShowAnimtor:Landroid/animation/ObjectAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->buildAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "buildAnimator(false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mHideAnimtor:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->buildAnimator$lambda-2$lambda-1(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getMAllowDrag$p(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mAllowDrag:Z

    return p0
.end method

.method public static final synthetic access$getMItemType$p(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mItemType:I

    return p0
.end method

.method public static final synthetic access$getMNeedRemoveViewWhenEnd$p(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mNeedRemoveViewWhenEnd:Z

    return p0
.end method

.method private final buildAnimator(Z)Landroid/animation/ObjectAnimator;
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherAnimUtils;->PAINT_ALPHA:Landroid/util/IntProperty;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0x40

    const/4 v4, 0x0

    if-eqz p1, :cond_10

    move v5, v4

    goto :goto_11

    :cond_10
    move v5, v3

    :goto_11
    aput v5, v2, v4

    const/4 v5, 0x1

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher/batchdrag/a;

    invoke-direct {v1, p0}, Lcom/android/launcher/batchdrag/a;-><init>(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_33

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mRemoveViewListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mRemoveViewListener$1;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3c

    :cond_33
    iget-boolean p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mAllowDrag:Z

    if-nez p1, :cond_3c

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mToastListener:Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView$mToastListener$1;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method private static final buildAnimator$lambda-2$lambda-1(Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final getMPaint()Landroid/graphics/Paint;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mPaint$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final calculateLocation(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/OplusWorkspace;)V
    .registers 9

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mStatusBarHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    int-to-float v3, v2

    iget v4, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mWorkspaceScale:F

    sub-float v4, v3, v4

    mul-float/2addr v4, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher3/PagedView;->getPageSpacing()I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x3d0b4396  # 0.034f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->rint(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawOffset:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mWorkspaceScale:F

    sub-float/2addr v3, v1

    mul-float/2addr v3, p1

    const/4 p1, 0x2

    int-to-float p1, p1

    div-float/2addr v3, p1

    iget p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawOffset:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mWorkspaceScale:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawHeight:F

    const-string p1, "calculateLocation() >> workspace: pivotY="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", paddingTop="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", insets="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dragScrollZone="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDragScrollZone()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >> page: width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", drawTop="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " >> drawWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", drawHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawHeight:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", offset="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawOffset:F

    const-string p2, "DisallowDragFeedbackView"

    invoke-static {p1, p0, p2}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    return-void
.end method

.method public final getDrawHeight()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawHeight:F

    return p0
.end method

.method public final getDrawOffset()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawOffset:F

    return p0
.end method

.method public final getDrawTop()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    return p0
.end method

.method public final getDrawWidth()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    return p0
.end method

.method public final hide(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mNeedRemoveViewWhenEnd:Z

    iget-object p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mHideAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    iget-boolean p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mNeedRemoveViewWhenEnd:Z

    if-eqz p1, :cond_2c

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_24

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    if-nez p1, :cond_28

    goto :goto_3c

    :cond_28
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_3c

    :cond_2c
    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getMPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    if-nez p1, :cond_37

    return-void

    :cond_37
    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mHideAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_3c
    return-void
.end method

.method public final isTouchIn(Lcom/android/launcher3/OplusDragLayer;Lcom/android/launcher3/OplusWorkspace;[F)Z
    .registers 8

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "touchXy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    aget v1, p3, v0

    iget v2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mStatusBarHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawHeight:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gtz v1, :cond_46

    iget v1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    invoke-virtual {p2}, Lcom/android/launcher3/OplusWorkspace;->getDragScrollZone()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v1, p2

    iget-boolean p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mIsRtl:Z

    if-nez p0, :cond_39

    aget p0, p3, v2

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_46

    goto :goto_47

    :cond_39
    aget p0, p3, v2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_46

    goto :goto_47

    :cond_46
    move v0, v2

    :goto_47
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mIsRtl:Z

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_14

    :cond_12
    const/high16 v0, -0x40800000  # -1.0f

    :goto_14
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mRadius:I

    int-to-float v7, v0

    int-to-float v8, v0

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final setDrawHeight(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawHeight:F

    return-void
.end method

.method public final setDrawOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawOffset:F

    return-void
.end method

.method public final setDrawTop(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawTop:I

    return-void
.end method

.method public final setDrawWidth(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->drawWidth:F

    return-void
.end method

.method public final show()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mShowAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->getMPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_18

    :cond_13
    iget-object p0, p0, Lcom/android/launcher3/card/feedback/AssistantDragFeedbackView;->mShowAnimtor:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_18
    :goto_18
    return-void
.end method
