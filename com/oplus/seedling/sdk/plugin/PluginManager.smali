.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/plugin/PluginUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;,
        Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

.field private static final INTERNAL_SDK_INIT_TIMEOUT:J = 0x1f40L

.field private static final SECONDARY_HOME_PKG:Ljava/lang/String; = "com.oplus.secondaryhome"

.field private static final TAG:Ljava/lang/String; = "PluginManager"

.field private static final sInstance$delegate:Ly2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/e<",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entranceSdkVersionCode:Ljava/lang/Integer;

.field private hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

.field private pluginContext:Lcom/oplus/seedling/sdk/plugin/PluginContext;

.field private pluginDexClassLoader:Ldalvik/system/DexClassLoader;

.field private pluginGitCommitHash:Ljava/lang/String;

.field private pluginVersionCode:Ljava/lang/Integer;

.field private pluginVersionName:Ljava/lang/String;

.field private final seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/seedling/sdk/manager/ISeedlingManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    sget-object v0, Ly2/g;->a:Ly2/g;

    sget-object v1, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion$sInstance$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->sInstance$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-direct {v0, p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;)V

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Ly2/e;
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->sInstance$delegate:Ly2/e;

    return-object v0
.end method

.method public static final synthetic access$invokeInitSdk(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeInitSdk(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method

.method public static final synthetic access$loadInitManager(Lcom/oplus/seedling/sdk/plugin/PluginManager;)Lcom/oplus/seedling/sdk/manager/IInitManager;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showConfigMsg(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/seedling/sdk/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/seedling/sdk/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic access$updateNewConfig(Lcom/oplus/seedling/sdk/plugin/PluginManager;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->updateNewConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final doInit(Lcom/oplus/seedling/sdk/callback/InitCallback;Z)V
    .registers 10

    const-string v0, "PluginManager"

    const-string v1, "doInit begin"

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/PluginFileUtils;->loadLocalConfig()Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_13

    if-eqz p2, :cond_19

    :cond_13
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    :cond_19
    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInitSdk(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_2a

    :cond_1d
    const/16 v1, 0x3e8

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "doInit, localConfig is null, consider this is the first time to copy plugin and failed"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_2a
    return-void
.end method

.method public static synthetic doInit$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InitCallback;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInit(Lcom/oplus/seedling/sdk/callback/InitCallback;Z)V

    return-void
.end method

.method private final doInitSdk(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 14

    const-string v0, "doInitSdk"

    const-string v1, "PluginManager"

    const-string v2, "doInitSdk,begin."

    invoke-static {v1, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1001030"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->entranceSdkVersionCode:Ljava/lang/Integer;

    :try_start_15
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeExchangeVersion()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v1

    new-instance v2, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

    invoke-direct {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", SeedlingSdk version of entrance = 1.1.30, 1001030, isSupportCallback:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PluginManager"

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->setMInitCallback(Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_d6

    monitor-enter v2
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_f1

    :try_start_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lq3/q0;->a:Lq3/b0;

    sget-object v1, Lv3/q;->a:Lq3/r1;

    invoke-static {v1}, Lq3/c1;->a(Lb3/f;)Lq3/f0;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$1$1;

    invoke-direct {v9, p0, v2, p1, v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$1$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Lb3/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lq3/g;->e(Lq3/f0;Lb3/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lq3/i1;

    const-string v1, "PluginManager"

    const-string v3, "doInitSdk wait invokeInitSdk"

    invoke-static {v1, v3}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x1f40

    invoke-virtual {v2, v6, v7}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInitSdk wait invokeInitSdk end, Time consuming "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PluginManager"

    invoke-static {v3, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_43 .. :try_end_82} :catchall_d3

    :try_start_82
    monitor-exit v2

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    goto :goto_ee

    :cond_9c
    const-string v0, "PluginManager"

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess()Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInitSdk fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSdkInternalInitSuccess = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V

    const/16 v3, 0x3ea

    const-string v4, "sdk internal init fail"

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v2 .. v8}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_ee

    :catchall_d3
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_d6
    sget-object v1, Lq3/q0;->a:Lq3/b0;

    sget-object v1, Lv3/q;->a:Lq3/r1;

    new-instance v4, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;

    invoke-direct {v4, p0, v2, p1, v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Lb3/d;)V

    invoke-static {v1, v4}, Lq3/g;->f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->isInitialed$pantanal_client_release()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-interface {p1}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onSuccess()V

    :goto_ee
    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_f0
    .catchall {:try_start_82 .. :try_end_f0} :catchall_f1

    goto :goto_f6

    :catchall_f1
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_f6
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_fd

    goto :goto_104

    :cond_fd
    const-string v1, "doInitSdk error, Exception happen for doInitSdk."

    const/16 v2, 0x3ea

    invoke-direct {p0, v2, v1, p1, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    :goto_104
    return-void
.end method

.method private final gainPluginClassLoader()Ldalvik/system/DexClassLoader;
    .registers 3

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginDexClassLoader:Ldalvik/system/DexClassLoader;

    return-object v0

    :cond_b
    const-string p0, "PluginManager"

    const-string v1, "plugin class loader has inited."

    invoke-static {p0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final initPluginClassLoader()Ldalvik/system/DexClassLoader;
    .registers 7

    const-string v0, "PluginManager"

    const-string v1, "Start init class loader."

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/seedling/sdk/plugin/ReflectUtils;->hookResources(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_1f

    :cond_14
    new-instance v3, Lcom/oplus/seedling/sdk/plugin/PluginContext;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/oplus/seedling/sdk/plugin/PluginContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/seedling/sdk/plugin/PluginContext;

    :goto_1f
    new-instance v1, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;

    sget-object v2, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_PLUGIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SeedlingSdk.sAppContext.filesDir.absolutePath"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_FOLDER_SO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "SeedlingSdk.sAppContext.classLoader"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/oplus/seedling/sdk/plugin/SeedlingClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->getPluginContext()Lcom/oplus/seedling/sdk/plugin/PluginContext;

    move-result-object p0

    if-nez p0, :cond_53

    goto :goto_6f

    :cond_53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const-class v0, Landroid/view/LayoutInflater;

    const-string v2, "mFactory2"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Lcom/oplus/seedling/sdk/plugin/InflaterFactory;

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/oplus/seedling/sdk/plugin/InflaterFactory;-><init>(Landroid/view/LayoutInflater$Factory2;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6f
    return-object v1
.end method

.method private final initSdkWithUserContext(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object p2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object p2

    if-nez p2, :cond_10

    goto :goto_4d

    :cond_10
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_4d

    :cond_17
    const-string v0, "PluginManager"

    const-string v1, "initSdkWithUserContext success"

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p2, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->initSdk(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V

    goto :goto_4d

    :cond_22
    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSdkWithUserContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error, because isSupportInitWithContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pluginSdkVersionCode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x3eb

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v2 .. v8}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :goto_4d
    return-void
.end method

.method private final invokeExchangeVersion()V
    .registers 8

    const-string v0, "PluginManager"

    const-string v1, "invokeExchangeVersion"

    :try_start_4
    const-string v2, "invokeExchangeVersion, Start invoke init exchange version."

    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_12

    move-object v2, v3

    goto :goto_1a

    :cond_12
    const-string v4, "1.1.30-0dc6914"

    const-string v5, "1001030"

    invoke-interface {v2, v4, v5}, Lcom/oplus/seedling/sdk/manager/IInitManager;->exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_1a
    if-nez v2, :cond_1d

    goto :goto_73

    :cond_1d
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", plugin SeedlingSdk version name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", VersionCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->isPluginSupportFeature(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_6c

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginGitCommitHash:Ljava/lang/String;

    goto :goto_71

    :cond_6c
    const-string v2, "invokeExchangeVersion,plugin not support git commit hash or return list size < 3!"

    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_71
    sget-object v3, Ly2/p;->a:Ly2/p;

    :goto_73
    if-nez v3, :cond_80

    new-instance v3, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeExchangeVersion$1$2;

    invoke-direct {v3, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeExchangeVersion$1$2;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_4 .. :try_end_7a} :catchall_7b

    goto :goto_80

    :catchall_7b
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :cond_80
    :goto_80
    invoke-static {v3}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_87

    goto :goto_a7

    :cond_87
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Exception happen for invoke exchange version : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a7
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginGitCommitHash:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->injectPluginVersionInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final invokeInitSdk(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 8

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start invoke init sdk, pkgName:"

    invoke-static {v2, v1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/seedling/sdk/plugin/PluginContext;

    if-nez v2, :cond_18

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    :cond_18
    :try_start_18
    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getCurUserContext$pantanal_client_release()Lcom/oplus/channel/server/IUserContext;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_63

    const-string v3, "PluginManager"

    if-eqz v0, :cond_38

    :try_start_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " use userContext."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->initSdkWithUserContext(Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    goto :goto_60

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " use normal context."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v0

    if-nez v0, :cond_54

    const/4 p1, 0x0

    goto :goto_59

    :cond_54
    invoke-interface {v0, v2, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->initSdk(Landroid/content/Context;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V

    sget-object p1, Ly2/p;->a:Ly2/p;

    :goto_59
    if-nez p1, :cond_60

    const-string p1, "initSdk failed via manager is null."

    invoke-static {v3, p1}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_62
    .catchall {:try_start_20 .. :try_end_62} :catchall_63

    goto :goto_68

    :catchall_63
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_68
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6f

    goto :goto_7a

    :cond_6f
    const-string v0, " error, Exception happen for doInitSdk."

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p0, v1, v0, p2, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    :goto_7a
    return-void
.end method

.method private final invokeOnTrimMemory(I)V
    .registers 4

    const-string v0, "PluginManager"

    const-string v1, "Start invoke invokeOnTrimMemory."

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    goto :goto_14

    :cond_f
    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->onTrimMemory(I)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_14
    if-nez p0, :cond_1b

    const-string p0, "onTrimMemory invoke failed via manager is null."

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1e

    goto :goto_23

    :catchall_1e
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_23
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_2a

    goto :goto_2f

    :cond_2a
    const-string p1, "Exception happen for invoke onTrimMemory"

    invoke-static {v0, p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    return-void
.end method

.method private final invokeReleaseSdk()V
    .registers 7

    const-string v0, "PluginManager"

    const-string v1, "invokeReleaseSdk,begin,step1"

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lq3/q0;->a:Lq3/b0;

    sget-object v3, Lv3/q;->a:Lq3/r1;

    new-instance v4, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lb3/d;)V

    invoke-static {v3, v4}, Lq3/g;->f(Lb3/f;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeReleaseSdk,end,cost = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final isPluginSupportFeature(I)Z
    .registers 6

    const-string v0, "PluginManager"

    const-string v1, "isPluginSupportFeature feature:"

    invoke-static {v1, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object v2

    if-nez v2, :cond_10

    const/4 p1, 0x0

    goto :goto_18

    :cond_10
    invoke-interface {v2, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->isPluginSupportFeature(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_18
    if-nez p1, :cond_30

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", get result is null, so return false"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3e
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_45

    goto :goto_6a

    :cond_45
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginVersionCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pluginSdkVersionCode:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", maybe version is not compatible, errorMsg:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v0, p1, Ly2/j$a;

    if-eqz v0, :cond_71

    move-object p1, p0

    :cond_71
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;
    .registers 6

    const-string v0, "PluginManager"

    const-string v1, "Start load init manager."

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v2

    const-string v3, "com.oplus.seedling.framework.manager.SeedlingSdkInternal"

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "pluginDexClassLoader.loa…ACKAGE_PATH_SEEDLING_SDK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "INSTANCE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/oplus/seedling/sdk/manager/IInitManager;

    if-eqz v3, :cond_28

    check-cast v2, Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-object v1, v2

    :cond_28
    sget-object v2, Ly2/p;->a:Ly2/p;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2b

    goto :goto_30

    :catchall_2b
    move-exception v2

    invoke-static {v2}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_30
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_37

    goto :goto_5e

    :cond_37
    const-string v3, "Exception happen for loadInitManager."

    invoke-static {v0, v3, v2}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SeedlingSdk.sAppContext.packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Exception happen for loadInitManager. trace:"

    invoke-static {v4, v2}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "seedlingsdk_plugin_load_class_error"

    invoke-direct {p0, v4, v3, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    if-nez v1, :cond_65

    const-string p0, "initManager is null."

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-object v1
.end method

.method private final loadSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start load seedling manager for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginManager"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->gainPluginClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v2

    const-string v3, "com.oplus.seedling.framework.manager.SeedlingManager"

    invoke-virtual {v2, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "pluginDexClassLoader.loa…GE_PATH_SEEDLING_MANAGER)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "clazz.declaredMethods"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :cond_37
    if-ge v5, v3, :cond_62

    aget-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    const-string v7, "getInstance"

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    const-string v2, "Find the method of getInstance."

    invoke-static {v1, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-eqz v2, :cond_62

    check-cast p1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-object v0, p1

    :cond_62
    sget-object p1, Ly2/p;->a:Ly2/p;
    :try_end_64
    .catchall {:try_start_1c .. :try_end_64} :catchall_65

    goto :goto_6a

    :catchall_65
    move-exception p1

    invoke-static {p1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_6a
    invoke-static {p1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_71

    goto :goto_98

    :cond_71
    const-string v2, "Exception happen for loadSeedlingManager."

    invoke-static {v1, v2, p1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SeedlingSdk.sAppContext.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Exception happen for loadSeedlingManager. trace:"

    invoke-static {v3, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "seedlingsdk_plugin_load_class_error"

    invoke-direct {p0, v3, v2, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_98
    if-nez v0, :cond_9f

    const-string p0, "seedlingmanager is null."

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f
    return-object v0
.end method

.method private final reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V
    .registers 11

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportInitFail pkgName:"

    const-string v2, " errorMsgToEntrance:"

    invoke-static {v1, v0, v2, p2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginManager"

    if-nez p4, :cond_1a

    invoke-static {v2, v1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :cond_1a
    invoke-virtual {p4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, ", throwable.message:"

    invoke-static {v1, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/seedling/sdk/utils/CallerTraceUtil;->getCallerTrace(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    const-string v5, " trace: "

    invoke-static {v1, v5, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, p4}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_35
    const-string p4, "pkgName"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "seedlingsdk_plugin_init"

    invoke-direct {p0, p4, v0, v1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, p1, p2}, Lcom/oplus/seedling/sdk/callback/InitCallback;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 p0, 0x1

    new-array p0, p0, [Ly2/i;

    new-instance v0, Ly2/i;

    const-string v1, "packagename"

    invoke-direct {v0, v1, p2}, Ly2/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v0, p0, p2

    invoke-static {p0}, Lz2/c0;->e([Ly2/i;)Ljava/util/Map;

    move-result-object v3

    if-nez p3, :cond_14

    goto :goto_19

    :cond_14
    const-string p0, "message"

    invoke-interface {v3, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final showConfigMsg(Ljava/lang/String;Lcom/oplus/seedling/sdk/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " showConfigMsg: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PluginManager"

    invoke-static {v0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p3, :cond_1b

    :goto_19
    move-object p3, p1

    goto :goto_26

    :cond_1b
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    if-nez p3, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    :goto_26
    if-nez p2, :cond_29

    goto :goto_34

    :cond_29
    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-nez p2, :cond_30

    goto :goto_34

    :cond_30
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :goto_34
    const-string p2, "[pluginConfig]"

    invoke-direct {p0, p2, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[hostContext]"

    invoke-direct {p0, p1, p3}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    const-string p1, "[newConfig]"

    invoke-direct {p0, p1, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic showConfigMsg$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ljava/lang/String;Lcom/oplus/seedling/sdk/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    move-object p4, v0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showConfigMsg(Ljava/lang/String;Lcom/oplus/seedling/sdk/plugin/PluginContext;Landroid/content/Context;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private final showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget p0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p2, Landroid/content/res/Configuration;->uiMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSingleConfigMsg, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " densityDpi = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uiMode = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", whole config = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginManager"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateNewConfig(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNewConfig, hostPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginManager"

    invoke-static {v2, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.oplus.secondaryhome"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p1, p2, Landroid/content/res/Configuration;->densityDpi:I

    const-string p1, "updateNewConfig finish [newConfig]"

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->showSingleConfigMsg(Ljava/lang/String;Landroid/content/res/Configuration;)V

    goto :goto_39

    :cond_34
    const-string p0, "updateNewConfig, not secondaryhome, do nothing"

    invoke-static {v2, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method


# virtual methods
.method public final dispatchConfigurationChanged$pantanal_client_release(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadInitManager()Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_1c

    :cond_11
    invoke-interface {p0, p1}, Lcom/oplus/seedling/sdk/manager/IInitManager;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_14
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string p0, "PluginManager"

    const-string p1, "dispatchConfigurationChanged fail"

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public final gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 9

    const-string v0, "gainSeedlingManager, entranceType:"

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Start gain seedling manager."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-nez v1, :cond_a0

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_2d
    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    if-nez v2, :cond_85

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->loadSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v3

    if-nez v3, :cond_43

    goto :goto_83

    :cond_43
    const-string v2, "PluginManager"

    iget-object v4, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Seedling manager load success,before save to cache,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PluginManager"

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Seedling manager load success,after save to cache,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_9d

    move-object v2, v3

    :goto_83
    monitor-exit v1

    return-object v2

    :cond_85
    :try_start_85
    const-string p0, "PluginManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Seedling manager is already exist,step2."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9b
    .catchall {:try_start_85 .. :try_end_9b} :catchall_9d

    monitor-exit v1

    return-object v2

    :catchall_9d
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_a0
    const-string p0, "PluginManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Seedling manager is already exist,step1."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getPluginContext()Lcom/oplus/seedling/sdk/plugin/PluginContext;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->pluginContext:Lcom/oplus/seedling/sdk/plugin/PluginContext;

    return-object p0
.end method

.method public final init(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 9

    const-string v0, "initCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PluginManager"

    const-string v1, "Start init plugin "

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->registerPluginContextConfigChange$pantanal_client_release()V

    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/PluginFileUtils;->initPluginFiles()I

    move-result v1

    const/16 v2, 0x3f2

    if-eq v1, v2, :cond_62

    const/16 v2, 0x3f3

    if-eq v1, v2, :cond_62

    packed-switch v1, :pswitch_data_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init error, because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not exist, maybe the code is not correct"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :pswitch_38  #0x3ea
    const/16 v1, 0x3ea

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "throw exception during init plugin files"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_68

    :pswitch_46  #0x3e9
    const/16 v1, 0x3e9

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "plugin verify error"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_68

    :pswitch_54  #0x3e8
    const/16 v1, 0x3e8

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "plugin copy error"

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportInitFail$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_68

    :cond_62
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInit$default(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InitCallback;ZILjava/lang/Object;)V

    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x3e8
        :pswitch_54  #000003e8
        :pswitch_46  #000003e9
        :pswitch_38  #000003ea
    .end packed-switch
.end method

.method public onPluginUpdated()V
    .registers 1

    return-void
.end method

.method public final onTrimMemory(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeOnTrimMemory(I)V

    return-void
.end method

.method public final registerPluginContextConfigChange$pantanal_client_release()V
    .registers 4

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final release()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release begin,seedlingManagerMap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginManager"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "seedlingManagerMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    invoke-interface {v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->release()V

    goto :goto_27

    :cond_37
    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public final releaseSeedlingManager(I)V
    .registers 5

    const-string v0, "releaseSeedlingManager, entranceType:"

    invoke-static {v0, p1}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    const-string p1, "PluginManager"

    if-nez p0, :cond_18

    const/4 p0, 0x0

    goto :goto_31

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Start release seedling manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->release()V

    sget-object p0, Ly2/p;->a:Ly2/p;

    :goto_31
    if-nez p0, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", seedlingManager is null, ignore"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    return-void
.end method

.method public final reportPluginFileInitExecution(Ljava/lang/String;)V
    .registers 5

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportPluginFileInitExecution pkgName:"

    const-string v2, "[1.1.30] "

    invoke-static {v1, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PluginManager"

    invoke-static {v1, p1}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkgName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "seedlingsdk_plugin_init"

    invoke-direct {p0, v1, v0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->reportStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unregisterPluginContextConfigChange$pantanal_client_release()V
    .registers 2

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager;->hostConfigurationChangedCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$hostConfigurationChangedCallback$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
