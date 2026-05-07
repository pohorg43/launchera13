.class public final Lcom/oplus/seedling/sdk/SeedlingSdk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/SeedlingSdk$InitStatus;
    }
.end annotation


# static fields
.field private static final INIT_THREAD_NAME:Ljava/lang/String; = "seedling_sdk_init_thread"

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

.field public static final PACKAGE_NAME_UMS:Ljava/lang/String; = "com.oplus.pantanal.ums"

.field private static final TAG:Ljava/lang/String; = "SeedlingSdkInterface"

.field private static volatile curUserContext:Lcom/oplus/channel/server/IUserContext;

.field private static enableConfigurationChangeCallback:Z

.field private static volatile enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static entrancePkgName:Ljava/lang/String;

.field private static volatile initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

.field private static final interfaceDispatcher:Lq3/b0;

.field private static isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile preUserContext:Lcom/oplus/channel/server/IUserContext;

.field public static volatile sAppContext:Landroid/content/Context;

.field public static sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    const-string v1, ""

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/oplus/seedling/sdk/a;->a:Lcom/oplus/seedling/sdk/a;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newSingleThreadExecutor …_PRIORITY\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lq3/b1;

    invoke-direct {v1, v0}, Lq3/b1;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher$lambda-1(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkIfNeedReInit(Lcom/oplus/seedling/sdk/SeedlingSdk;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->checkIfNeedReInit()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$doInit(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->doInit(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public static final synthetic access$handleSaveContext(Lcom/oplus/seedling/sdk/SeedlingSdk;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final buildInitCallbackWrapper(Lcom/oplus/seedling/sdk/callback/InitCallback;)Lcom/oplus/seedling/sdk/callback/InitCallback;
    .registers 2

    new-instance p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-object p0
.end method

.method private final checkEngineType(Lcom/oplus/seedling/sdk/entity/EngineType;)V
    .registers 5

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    if-eq v0, p1, :cond_33

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init different engine type, before "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " now "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    const-string p0, "SeedlingSdkInterface"

    invoke-static {p0, v0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private final checkIfNeedReInit()Z
    .registers 7

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v0, 0x0

    const-string v1, "SeedlingSdkInterface"

    if-nez p0, :cond_d

    const-string p0, "checkIfNeedReInit,preUserContext is null,no need reinit"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_d
    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v2, -0x1

    if-nez p0, :cond_14

    move p0, v2

    goto :goto_18

    :cond_14
    invoke-interface {p0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result p0

    :goto_18
    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v3, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-interface {v3}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v2

    :goto_21
    const-string v3, "checkIfNeedReInit,preUserId:"

    if-ne p0, v2, :cond_31

    const-string v4, " == curUserId:"

    const-string v5, ",no need reinit"

    invoke-static {v3, p0, v4, v2, v5}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_31
    const-string v0, " != curUserId:"

    const-string v4, ", need reinit!"

    invoke-static {v3, p0, v0, v2, v4}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final doInit(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 5

    const-string v0, "doInit"

    invoke-direct {p0, p1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "appContext.packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->checkEngineType(Lcom/oplus/seedling/sdk/entity/EngineType;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SeedlingSdk interface start to init, entrancePkgName:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", entranceSdkVersion:1.1.30, 1001030, priority:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingSdkInterface"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->init(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method private final handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleSaveContext,initSAppContext, pkgName:"

    const-string v2, ",called from "

    invoke-static {v1, v0, v2, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", use applicationContext"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "{\n            LogUtils.i…licationContext\n        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_46

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", use appContext"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->setSAppContext$pantanal_client_release(Landroid/content/Context;)V

    return-void
.end method

.method private static final interfaceDispatcher$lambda-1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "seedling_sdk_init_thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static final isSeedlingSupport(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSeedlingSupport$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static final isSeedlingSupport(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const-string v1, "isSeedlingSupport"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSeedlingSupport$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSeedlingSupport, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSeedlingSupport:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static final isSupportFluidCloud(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportFluidCloud begin,context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$2;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static final isSupportFluidCloud(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/channel/server/IUserContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFluidCloud begin,userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$isSupportFluidCloud$3;-><init>(Lcom/oplus/channel/server/IUserContext;Lkotlin/jvm/functions/Function1;Lb3/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public static final isSupportFluidCloud(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const-string v1, "isSupportFluidCloud"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSupportFluidCloud$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportFluidCloud, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSupportFluidCloud:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static final isSupportSystemSendIntent(Landroid/content/Context;)Z
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    const-string v1, "isSupportSystemSendIntent"

    invoke-direct {v0, p0, v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->handleSaveContext(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/utils/SeedlingIntentUtil;->queryIsSystemSendIntentSupport$pantanal_client_release(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportSystemSendIntent, finally to entrancePkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isSupportSystemSendIntent:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static final isSupportTryAgain(I)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_26

    packed-switch p0, :pswitch_data_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportTryAgain, errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is invalid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :pswitch_23  #0x3e8, 0x3e9, 0x3ea, 0x7d1, 0x7d7
    const/4 v0, 0x1

    :goto_24
    :pswitch_24  #0x3eb, 0x7d2, 0x7d3, 0x7d4, 0x7d5, 0x7d6
    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x3e8
        :pswitch_23  #000003e8
        :pswitch_23  #000003e9
        :pswitch_23  #000003ea
        :pswitch_24  #000003eb
    .end packed-switch

    :pswitch_data_32
    .packed-switch 0x7d1
        :pswitch_23  #000007d1
        :pswitch_24  #000007d2
        :pswitch_24  #000007d3
        :pswitch_24  #000007d4
        :pswitch_24  #000007d5
        :pswitch_24  #000007d6
        :pswitch_23  #000007d7
    .end packed-switch
.end method


# virtual methods
.method public final gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gainSeedlingManager no callback"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "SeedlingSdkInterface"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_44

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " begin isInitialed:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object p0

    goto :goto_61

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " invoke failed, since it is not init"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_61
    return-object p0
.end method

.method public final getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public final getEnableConfigurationChangeCallback()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    return p0
.end method

.method public final getEnableInterruptCreatingCard$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getEntrancePkgName$pantanal_client_release()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public final getInitConfig()Lcom/oplus/seedling/sdk/SeedlingInitConfig;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    return-object p0
.end method

.method public final getPreUserContext()Lcom/oplus/channel/server/IUserContext;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    return-object p0
.end method

.method public final getSAppContext$pantanal_client_release()Landroid/content/Context;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sAppContext:Landroid/content/Context;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "sAppContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSEngineType$pantanal_client_release()Lcom/oplus/seedling/sdk/entity/EngineType;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "sEngineType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 6

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init seedlingsdk with config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEngineType()Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getShouldNotifyCardServiceToInit()Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEntranceAuthorityName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->requestDoInitChannelInCardService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_41

    :cond_3c
    const-string p0, "init with config,no need call card service to init."

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public final init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 10

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entranceCallBack"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->buildInitCallbackWrapper(Lcom/oplus/seedling/sdk/callback/InitCallback;)Lcom/oplus/seedling/sdk/callback/InitCallback;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SeedlingSdk begin init,engineType = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SeedlingSdkInterface"

    invoke-static {v0, p3}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    invoke-static {p3}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v0

    new-instance v3, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;

    const/4 p3, 0x0

    invoke-direct {v3, p1, p2, p0, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk$init$1;-><init>(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;Lb3/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    return-void
.end method

.method public final init(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 8

    const-string v0, "userContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start to init with userContext, pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/entity/EngineType;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public final isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final notifyConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    const-string p0, "newConfig"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyConfigurationChanged newConfig = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeedlingSdkInterface"

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->dispatchConfigurationChanged$pantanal_client_release(Landroid/content/res/Configuration;)V

    :cond_2d
    return-void
.end method

.method public final notifyInterruptLoadingCard(Z)V
    .registers 3

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyInterruptLoadingCard，enableInterrupt = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeedlingSdkInterface"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 4

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const-string v0, "SeedlingSdkInterface"

    const/4 v1, 0x2

    if-ne p0, v1, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory. level = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->onTrimMemory(I)V

    goto :goto_2e

    :cond_29
    const-string p0, "onTrimMemory invoke failed, since it is not init"

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public final release()V
    .registers 14

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " begin before compareAndSet, isInitialed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeedlingSdkInterface"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_89

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " begin launch, isInitialed:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->interfaceDispatcher:Lq3/b0;

    invoke-static {v0}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v10, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;

    const/4 v0, 0x0

    invoke-direct {v10, v2, v3, v4, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;-><init>(Ljava/lang/String;JLb3/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_65

    goto :goto_6c

    :cond_65
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getShouldNotifyCardServiceToInit()Z

    move-result v0

    if-ne v0, v6, :cond_6c

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v6, v1

    :goto_6d
    if-eqz v6, :cond_83

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->initConfig:Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    if-nez v0, :cond_78

    goto :goto_7e

    :cond_78
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingInitConfig;->getEntranceAuthorityName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_80

    :goto_7e
    const-string v0, ""

    :cond_80
    invoke-static {p0, v0}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->requestDoReleaseInCardService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_83
    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8e

    :cond_89
    const-string p0, "release fail, because has already release, just ignore"

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8e
    return-void
.end method

.method public final setCurUserContext$pantanal_client_release(Lcom/oplus/channel/server/IUserContext;)V
    .registers 2

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->curUserContext:Lcom/oplus/channel/server/IUserContext;

    return-void
.end method

.method public final setEnableConfigurationChangeCallback(Z)V
    .registers 2

    if-eqz p1, :cond_c

    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->registerPluginContextConfigChange$pantanal_client_release()V

    goto :goto_15

    :cond_c
    sget-object p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->unregisterPluginContextConfigChange$pantanal_client_release()V

    :goto_15
    sput-boolean p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableConfigurationChangeCallback:Z

    return-void
.end method

.method public final setEnableInterruptCreatingCard$pantanal_client_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setEntrancePkgName$pantanal_client_release(Ljava/lang/String;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->entrancePkgName:Ljava/lang/String;

    return-void
.end method

.method public final setInitialed$pantanal_client_release(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public final setPreUserContext(Lcom/oplus/channel/server/IUserContext;)V
    .registers 2

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->preUserContext:Lcom/oplus/channel/server/IUserContext;

    return-void
.end method

.method public final setSAppContext$pantanal_client_release(Landroid/content/Context;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->sAppContext:Landroid/content/Context;

    return-void
.end method

.method public final setSEngineType$pantanal_client_release(Lcom/oplus/seedling/sdk/entity/EngineType;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->sEngineType:Lcom/oplus/seedling/sdk/entity/EngineType;

    return-void
.end method

.method public final shouldInterruptCreatingCard()Z
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->enableInterruptCreatingCard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
