.class public final Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallMonitor"
.end annotation


# instance fields
.field private volatile isSdkInternalInitSuccess:Ljava/lang/Boolean;

.field private mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "path"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_1c

    int-to-long p0, p0

    return-wide p0

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAssetsFileSize fail: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginManager"

    invoke-static {p1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getMInitCallback()Lcom/oplus/seedling/sdk/callback/InitCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    return-object p0
.end method

.method public final isSdkInternalInitSuccess()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onSdkInternalInited(Z)V
    .registers 6

    const-string v0, "PluginManager"

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSdkInternalInited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isSuccess = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->setSdkInternalInitSuccess(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUmsUpdated()V
    .registers 16

    const-string v0, "PluginManager"

    const-string v1, "On ums updated."

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getSAppContext$pantanal_client_release()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.oplus.pantanal.ums"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    const-string v2, "urtContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/oplus/seedling/sdk/plugin/PluginFileUtils;->loadRemoteConfig(Landroid/content/Context;)Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    move-result-object v2

    if-nez v2, :cond_20

    return-void

    :cond_20
    invoke-static {}, Lcom/oplus/seedling/sdk/plugin/PluginFileUtils;->loadLocalConfig()Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;

    move-result-object v3

    sget-object v4, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;

    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SDK_STANDARD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/oplus/seedling/sdk/plugin/Constants$PluginFilePath;->getPATH_REMOTE_SO_STANDARD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->getAssetsFileSize(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-ltz v1, :cond_88

    cmp-long v1, v7, v9

    if-gez v1, :cond_41

    goto :goto_88

    :cond_41
    invoke-static {v2, v3}, Lcom/oplus/seedling/sdk/plugin/PluginFileUtils;->checkIfNeedUpdate(Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;)Z

    move-result v1

    if-eqz v1, :cond_82

    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUmsUpdated. sdkAvailable = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", soAvailable = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", umsNeedUpdate = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_87

    iget-object v9, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    if-nez v9, :cond_73

    goto :goto_87

    :cond_73
    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->getVersion()I

    move-result v11

    invoke-virtual {v3}, Lcom/oplus/seedling/sdk/plugin/bean/ConfigBean;->getVersion()I

    move-result v12

    add-long v13, v5, v7

    const/4 v10, 0x1

    invoke-interface/range {v9 .. v14}, Lcom/oplus/seedling/sdk/seedling/IPluginUpdateObserver;->onPluginCheckUpdateResult(IIIJ)V

    goto :goto_87

    :cond_82
    const-string p0, "onUmsUpdated. checkIfNeedUpdate is false"

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void

    :cond_88
    :goto_88
    const-string p0, "onUmsUpdated. soSize or sdkSize is -1"

    invoke-static {v0, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setMInitCallback(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->mInitCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    return-void
.end method

.method public final setSdkInternalInitSuccess(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;->isSdkInternalInitSuccess:Ljava/lang/Boolean;

    return-void
.end method
