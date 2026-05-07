.class public Lcom/android/quickstep/OplusBaseTaskAnimationManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mOpm$delegate:Ly2/e;

.field private mStartRecentsActivity:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/android/quickstep/OplusBaseTaskAnimationManager$mOpm$2;->INSTANCE:Lcom/android/quickstep/OplusBaseTaskAnimationManager$mOpm$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mOpm$delegate:Ly2/e;

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->startRecentsActivityWithCallback$lambda-3(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->inteceptPreloadRecentsAnimation$lambda-1$lambda-0(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->inteceptPreloadRecentsAnimation$lambda-2(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->inteceptPreloadRecentsAnimation$lambda-1(Landroid/content/Intent;)V

    return-void
.end method

.method private final getMOpm()Landroid/content/pm/OplusPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mOpm$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/OplusPackageManager;

    return-object p0
.end method

.method private static final inteceptPreloadRecentsAnimation$lambda-1(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/b0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/b0;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final inteceptPreloadRecentsAnimation$lambda-1$lambda-0(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private static final inteceptPreloadRecentsAnimation$lambda-2(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "$intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private final isClosedSuperFirewall()Z
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->getMOpm()Landroid/content/pm/OplusPackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/OplusPackageManager;->isClosedSuperFirewall()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    instance-of v0, p0, Ly2/j$a;

    if-eqz v0, :cond_17

    const/4 p0, 0x0

    :cond_17
    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1d

    const/4 p0, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_21
    return p0
.end method

.method private static final startRecentsActivityWithCallback$lambda-3(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 14

    const-string v0, "$callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    const-wide/16 v8, 0x8

    const-string v1, "OplusBaseTaskAnimationManager#startRecentsActivity"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTaskAnimationManager"

    const-string/jumbo v3, "startRecentsAnimation: execute start recents activity "

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    return-void
.end method


# virtual methods
.method public final cancelRecentsAniamtionIfNeed()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_25

    :cond_13
    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTaskAnimationManager"

    const-string v3, "cancelRecentsAniamtionIfNeed"

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public final hasStartRecentActivity()Z
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final inteceptPreloadRecentsAnimation(Landroid/content/Intent;)Z
    .registers 6

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->isClosedSuperFirewall()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/quickstep/b0;

    invoke-direct {v1, p1, v0}, Lcom/android/quickstep/b0;-><init>(Landroid/content/Intent;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b

    :cond_20
    sget-object p0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/b0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/quickstep/b0;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2b
    return v0
.end method

.method public final startRecentsActivityWithCallback(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 6

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/c0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/quickstep/c0;-><init>(Landroid/content/Intent;JLcom/android/quickstep/RecentsAnimationCallbacks;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mStartRecentsActivity:Ljava/lang/Runnable;

    sget-object p0, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
