.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;
.super Lcom/android/quickstep/util/RecentsOrientedState;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;

.field private static final DELAY:J = 0xc8L

.field private static final SMALLEST_WIDTH:I = 0x267

.field private static final TAG:Ljava/lang/String; = "OplusRecentsOrientedStateImpl"


# instance fields
.field private final forceUseDisplayRotation:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->Companion:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/BaseActivityInterface<",
            "+",
            "Lcom/android/launcher3/statemanager/BaseState<",
            "*>;+",
            "Lcom/android/launcher3/statemanager/StatefulActivity<",
            "*>;>;",
            "Ljava/util/function/IntConsumer;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V

    iput-boolean p4, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->forceUseDisplayRotation:Z

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/android/quickstep/util/b;

    invoke-direct {p4, p3, p0}, Lcom/android/quickstep/util/b;-><init>(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V

    new-instance p3, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;

    invoke-direct {p3, p0, p2, p4, p1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;-><init>(Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private static final _init_$lambda-0(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_9

    goto :goto_e

    :cond_9
    iget p1, p1, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    :goto_e
    return-void
.end method

.method public static synthetic c(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->_init_$lambda-0(Ljava/util/function/IntConsumer;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;)V

    return-void
.end method


# virtual methods
.method public final getForceUseDisplayRotation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->forceUseDisplayRotation:Z

    return p0
.end method

.method public inferRecentsActivityRotation(I)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->forceUseDisplayRotation:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_14

    :cond_b
    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_18

    :cond_12
    const/4 p1, 0x0

    goto :goto_18

    :cond_14
    :goto_14
    invoke-super {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->inferRecentsActivityRotation(I)I

    move-result p1

    :goto_18
    return p1
.end method

.method public final isGestureActive()Z
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mFlags:I

    and-int/lit16 p0, p0, 0x100

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final setSupportedByDensity()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p0, Lcom/android/quickstep/util/RecentsOrientedState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    div-int/2addr v0, v1

    const/16 v1, 0x267

    if-ge v0, v1, :cond_2c

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setFlag(IZ)Z

    return-void
.end method

.method public updateHandler()Z
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->updateHandler()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current RecentsOrientedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QuickStep"

    const-string v2, "OplusRecentsOrientedStateImpl"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
