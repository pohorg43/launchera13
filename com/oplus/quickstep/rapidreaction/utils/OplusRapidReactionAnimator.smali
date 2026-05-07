.class public final Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$Companion;,
        Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;,
        Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnEndListener;,
        Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnStartListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusRapidReactionAnimator"


# instance fields
.field private final animator:Landroid/animation/ValueAnimator;

.field private currentCenterX:F

.field private currentHeight:F

.field private final currentRect:Landroid/graphics/RectF;

.field private currentWidth:F

.field private currentY:F

.field private final onEndListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnEndListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStartListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnStartListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private startRect:Landroid/graphics/RectF;

.field private targetRect:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->Companion:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 5

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentRect:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onUpdateListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onStartListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentCenterX:F

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_64

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-string p2, "ofFloat(0f, 1f)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1a4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->INSTANCE:Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;

    invoke-virtual {p2}, Lcom/oplus/quickstep/rapidreaction/utils/AnimationUtils$Interpolator;->getGESTURE_TO_PREVIEW_WINDOW_INTERPOLATOR()Landroid/view/animation/PathInterpolator;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/android/quickstep/views/a;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/a;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;

    invoke-direct {p2, p0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;-><init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_64
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private static final _init_$lambda-1(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;Landroid/animation/ValueAnimator;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onUpdateListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentWidth:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentHeight:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentCenterX:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentY:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_a2

    const-string v0, "UpdateListener: currentCenterX = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", targetRect.centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", startRect.centerX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->startRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusRapidReactionAnimator"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a2
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentCenterX:F

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentWidth:F

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v4, v2, v3

    sub-float v4, v1, v4

    iget v5, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentY:F

    iget v6, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentHeight:F

    sub-float v6, v5, v6

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v4, v6, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onUpdateListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->currentRect:Landroid/graphics/RectF;

    invoke-interface {v1, v2, p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;->onUpdate(Landroid/graphics/RectF;F)V

    goto :goto_bf

    :cond_d1
    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->_init_$lambda-1(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getOnEndListeners$p(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onEndListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getOnStartListeners$p(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onStartListeners:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final addEndListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnEndListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final addStartListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnStartListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onStartListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onStartListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final addUpdateListener(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnUpdateListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->onUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public final end()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_d
    return-void
.end method

.method public final getAnimator()Landroid/animation/ValueAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final isStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public final start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final updateTargetRect(Landroid/graphics/RectF;)V
    .registers 3

    const-string v0, "targetRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->targetRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
