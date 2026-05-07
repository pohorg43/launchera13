.class public Lcom/android/quickstep/OplusBaseRecentsAnimationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

.field private static final DISABLE_INPUT_PROXY_DELAY:J = 0x190L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusBaseRecentsAnimationController"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

.field private mFirst:Z

.field private mIgnoreDisableInputProxy:Z

.field private mWillFinishToHome:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->Companion:Lcom/android/quickstep/OplusBaseRecentsAnimationController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttController$lambda-3(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomController$lambda-1(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final finishOnePuttController$lambda-3(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishOnePuttCore(ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V

    if-nez p4, :cond_19

    goto :goto_1e

    :cond_19
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    return-void
.end method

.method private final finishOnePuttCore(ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V
    .registers 16

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsAnimationController"

    const-string v2, "finishOnePuttCore: switch to external screen"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "finishPutt"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-class v9, Landroid/graphics/Rect;

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Landroid/os/Bundle;

    const/4 v11, 0x4

    aput-object v6, v5, v11

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getTaskId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/OnePuttData;->getOption()Landroid/os/Bundle;

    move-result-object p3

    aput-object p3, v4, v11

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_68

    goto :goto_6d

    :catchall_68
    move-exception p3

    invoke-static {p3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_6d
    invoke-static {p3}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_74

    goto :goto_84

    :cond_74
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    const-string p0, "finishOnePuttCore(), e="

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_84
    return-void
.end method

.method private static final finishZoomController$lambda-1(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->finishZoomCore(ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V

    if-nez p4, :cond_19

    goto :goto_1e

    :cond_19
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, p4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    return-void
.end method

.method private final finishZoomCore(ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V
    .registers 16

    :try_start_0
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "finishZoom"

    const/4 v2, 0x7

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-class v9, Landroid/graphics/Rect;

    const/4 v10, 0x4

    aput-object v9, v3, v10

    const/4 v9, 0x5

    aput-object v4, v3, v9

    const-class v4, Landroid/os/Bundle;

    const/4 v11, 0x6

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->mAnimationController:Landroid/view/IRecentsAnimationController;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {p3}, Lcom/oplus/quickstep/rapidreaction/ZoomWindowData;->getOption()Landroid/os/Bundle;

    move-result-object p3

    aput-object p3, v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_73

    goto :goto_78

    :catchall_73
    move-exception p3

    invoke-static {p3}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_78
    invoke-static {p3}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_7f

    goto :goto_93

    :cond_7f
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->finish(ZZ)V

    const-string p0, "finishZoomCore(), e="

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseRecentsAnimationController"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_93
    return-void
.end method


# virtual methods
.method public final finishOnePuttController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/OnePuttData;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->notifyFinishedListener()V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher/filter/b;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/filter/b;-><init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/OnePuttData;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishZoomController(ZLjava/lang/Runnable;ZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;)V
    .registers 13

    const-string v0, "data"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->notifyFinishedListener()V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v7, Lcom/android/launcher/filter/b;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/filter/b;-><init>(Lcom/android/quickstep/OplusBaseRecentsAnimationController;ZZLcom/oplus/quickstep/rapidreaction/ZoomWindowData;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMFirst()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return p0
.end method

.method public final getMWillFinishToHome()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mWillFinishToHome:Z

    return p0
.end method

.method public notifyFinishedListener()V
    .registers 1

    return-void
.end method

.method public final onFinishControllerDone()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->getMController()Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;->setInputConsumerEnabled(Z)V

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRemoteRecentsAnimationRunning(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setRecentsAnimationFinishTime(J)V

    return-void
.end method

.method public final setMController(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mController:Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    return-void
.end method

.method public final setMFirst(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mFirst:Z

    return-void
.end method

.method public final setMWillFinishToHome(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationController;->mWillFinishToHome:Z

    return-void
.end method
