.class public Lcom/oplus/backup/sdk/component/BRPluginService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;,
        Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;,
        Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;,
        Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;
    }
.end annotation


# static fields
.field public static final DEBUG_SYNC_THREAD:Z = true

.field public static final TAG:Ljava/lang/String; = "BRPluginService"


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mAsyncThread:Landroid/os/HandlerThread;

.field private mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

.field private mBRPlugin:Ljava/lang/Object;

.field private mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

.field private mBinder:Landroid/os/IBinder;

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mHandler:Landroid/os/Handler;

.field private mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

.field private mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

.field private mMessenger:Landroid/os/Messenger;

.field private mPluginClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSendMessenger:Landroid/os/Messenger;

.field private mSyncHandler:Landroid/os/Handler;

.field private mSyncThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/backup/sdk/component/BRPluginService;ILandroid/os/Bundle;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/backup/sdk/component/BRPluginService;->sendMsg(ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/backup/sdk/component/BRPluginService;)Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/common/host/BREngineConfig;)Lcom/oplus/backup/sdk/common/host/BREngineConfig;
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->load(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/backup/sdk/component/BRPluginService;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/component/BRPluginService;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Bundle;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->receive(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic access$700(Lcom/oplus/backup/sdk/component/BRPluginService;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static synthetic access$800([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/backup/sdk/component/BRPluginService;->returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method private findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
            "I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;-><init>()V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->load(Landroid/content/Context;Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez p2, :cond_17

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 v1, 0x1

    if-ne p2, v1, :cond_21

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/backup/sdk/common/load/BRPluginLoader;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/ClassLoader;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLocalPluginConfig()Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 8

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_plugins"

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/host/BRPluginSource;->getLocalBRPlugins(Landroid/content/Context;Ljava/lang/String;)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1e} :catch_1f

    goto :goto_42

    :catch_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imposible! no this service? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "BRPluginService"

    invoke-static {v2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_42
    if-eqz p0, :cond_72

    new-instance v2, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;

    invoke-direct {v2}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;-><init>()V

    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->setClass(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->setMetaData(Landroid/os/Bundle;)V

    if-eqz v0, :cond_72

    array-length p0, v0

    if-lez p0, :cond_72

    array-length p0, v0

    const/4 v3, 0x0

    :goto_5c
    if-ge v3, p0, :cond_72

    aget-object v4, v0, v3

    invoke-virtual {v2}, Lcom/oplus/backup/sdk/host/BRPluginServiceInfo;->getUniqueID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getUniqueID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    return-object v4

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_72
    return-object v1
.end method

.method private static getStackMsg([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_28

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_28

    aget-object v2, p0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    const/4 p0, 0x1

    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p4, p0, v2

    invoke-static {p1, p2, p3, v0, p0}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private load(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12

    const-string v0, "load, e ="

    const-string v1, "BRPluginService"

    const-string v2, "plugins"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "br_type"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    array-length v5, v2

    if-lez v5, :cond_2a

    new-array v6, v5, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move v7, v3

    :goto_1a
    if-ge v7, v5, :cond_2b

    new-instance v8, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    aget-object v9, v2, v7

    check-cast v9, Landroid/os/Bundle;

    invoke-direct {v8, v9}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>(Landroid/os/Bundle;)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_2a
    move-object v6, v4

    :cond_2b
    :try_start_2b
    invoke-direct {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->getLocalPluginConfig()Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2f} :catch_ed
    .catch Ljava/lang/InstantiationException; {:try_start_2b .. :try_end_2f} :catch_d8
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2f} :catch_c3

    const-string v5, "use local plugin config:"

    if-eqz v2, :cond_57

    :try_start_33
    invoke-virtual {v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->isPreferLocalClass()Z

    move-result v7
    :try_end_37
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_37} :catch_ed
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_37} :catch_d8
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_37} :catch_c3

    if-eqz v7, :cond_57

    :try_start_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isPreferLocalClass true"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_50} :catch_55
    .catch Ljava/lang/InstantiationException; {:try_start_39 .. :try_end_50} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_50} :catch_51

    goto :goto_92

    :catch_51
    move-exception p1

    goto :goto_b7

    :catch_53
    move-exception p1

    goto :goto_b9

    :catch_55
    move-exception p1

    goto :goto_bb

    :cond_57
    :try_start_57
    invoke-virtual {p0, v6, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->onLoad([Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object v6
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_5b} :catch_ed
    .catch Ljava/lang/InstantiationException; {:try_start_57 .. :try_end_5b} :catch_d8
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_5b} :catch_c3

    if-nez v6, :cond_7d

    if-eqz v2, :cond_77

    :try_start_5f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", no plugin in host"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92

    :cond_77
    const-string p1, "load localPlugin is null! pls check your .config file"

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/ClassCastException; {:try_start_5f .. :try_end_7c} :catch_55
    .catch Ljava/lang/InstantiationException; {:try_start_5f .. :try_end_7c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_7c} :catch_51

    return-object v4

    :cond_7d
    :try_start_7d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use host\'s plugin config:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/ClassCastException; {:try_start_7d .. :try_end_91} :catch_c1
    .catch Ljava/lang/InstantiationException; {:try_start_7d .. :try_end_91} :catch_bf
    .catch Ljava/lang/IllegalAccessException; {:try_start_7d .. :try_end_91} :catch_bd

    move-object v2, v6

    :goto_92
    :try_start_92
    invoke-direct {p0, v2, p1}, Lcom/oplus/backup/sdk/component/BRPluginService;->findClass(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    if-eqz p1, :cond_a2

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    goto/16 :goto_102

    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t find plugin class. "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/ClassCastException; {:try_start_92 .. :try_end_b6} :catch_55
    .catch Ljava/lang/InstantiationException; {:try_start_92 .. :try_end_b6} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_92 .. :try_end_b6} :catch_51

    goto :goto_102

    :goto_b7
    move-object v6, v2

    goto :goto_c5

    :goto_b9
    move-object v6, v2

    goto :goto_da

    :goto_bb
    move-object v6, v2

    goto :goto_ef

    :catch_bd
    move-exception p1

    goto :goto_c5

    :catch_bf
    move-exception p1

    goto :goto_da

    :catch_c1
    move-exception p1

    goto :goto_ef

    :catch_c3
    move-exception p1

    move-object v6, v4

    :goto_c5
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :catch_d8
    move-exception p1

    move-object v6, v4

    :goto_da
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_101

    :catch_ed
    move-exception p1

    move-object v6, v4

    :goto_ef
    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_101
    move-object v2, v6

    :goto_102
    :try_start_102
    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const-class v5, Lcom/oplus/backup/sdk/component/BRPluginHandler;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_10e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_102 .. :try_end_10e} :catch_10f

    goto :goto_123

    :catch_10f
    move-exception p1

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v4

    :goto_123
    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    aput-object p1, v5, v3

    iget-object v6, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    invoke-static {v0, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v6, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    aput-object p1, v8, v1

    const-class p1, Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    const/4 v9, 0x2

    aput-object p1, v8, v9

    new-array p1, v7, [Ljava/lang/Object;

    aput-object p0, p1, v3

    aput-object v0, p1, v1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBREngineConfig:Lcom/oplus/backup/sdk/common/host/BREngineConfig;

    aput-object p0, p1, v9

    const-string p0, "onCreate"

    invoke-static {v5, v6, p0, v8, p1}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_154

    return-object v4

    :cond_154
    invoke-virtual {v2}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Intent;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    const/4 p0, 0x2

    new-array v0, p0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p3, p0, v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p0, v3

    const-string p3, "onReveiveMsg"

    invoke-static {p1, p2, p3, v0, p0}, Lcom/oplus/backup/sdk/common/utils/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method private receive(Landroid/os/Bundle;Z)V
    .registers 5

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPlugin:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mPluginClass:Ljava/lang/Class;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->onReveiveMsg(Ljava/lang/Object;Ljava/lang/Class;Landroid/content/Intent;Z)V

    return-void
.end method

.method private returnMsg(Landroid/os/Messenger;ILandroid/os/Bundle;Z)V
    .registers 6

    xor-int/lit8 p0, p4, 0x1

    const/4 p4, 0x0

    const/4 v0, 0x0

    invoke-static {v0, p2, p0, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    :try_start_8
    invoke-virtual {p1, p0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception p0

    const-string p1, "returnMsg, e ="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BRPluginService"

    invoke-static {p1, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method private sendMsg(ILandroid/os/Bundle;Z)V
    .registers 6

    xor-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p1, p3, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSendMessenger:Landroid/os/Messenger;

    const-string p2, "BRPluginService"

    if-eqz p0, :cond_28

    :try_start_e
    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception p0

    const-string p1, "sendMsg, e ="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_28
    const-string p0, "mSendMessenger == null"

    invoke-static {p2, p0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2d
    return-void
.end method


# virtual methods
.method public getBRPluginLoader()Lcom/oplus/backup/sdk/common/load/BRPluginLoader;
    .registers 1

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mLoader:Lcom/oplus/backup/sdk/common/load/BRPluginLoader;

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    if-nez p1, :cond_13

    const-string p1, "BRPluginService"

    const-string v0, "onBind "

    invoke-static {p1, v0}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    :cond_13
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BRPluginService"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_messager_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "br_plugin_async_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$WorkHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oplus/backup/sdk/component/BRPluginService$MessengerHandler;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    invoke-direct {v0, p0}, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    new-instance v0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/component/BRPluginService$1;)V

    iput-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mInvocationBRPluginHandler:Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "BRPluginService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/oplus/backup/sdk/common/utils/BRLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mSyncThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_11
    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService;->mAsyncThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_18
    return-void
.end method

.method public onLoad([Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;I)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_12

    array-length p2, p1

    if-lez p2, :cond_12

    array-length p2, p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p2, :cond_12

    aget-object v1, p1, v0

    if-eqz v1, :cond_f

    return-object v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    return-object p0
.end method
