.class public interface abstract Lorg/hapjs/card/api/CardService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nearme/instant/xcard/InstantCardService;


# virtual methods
.method public abstract clearImageCache()V
.end method

.method public abstract createCard(Landroid/content/Context;)Lorg/hapjs/card/api/Card;
.end method

.method public abstract createCard(Landroid/content/Context;Ljava/lang/String;)Lorg/hapjs/card/api/Card;
.end method

.method public abstract createInset(Landroid/app/Activity;)Lorg/hapjs/card/api/Inset;
.end method

.method public abstract createInset(Landroid/app/Activity;Ljava/lang/String;)Lorg/hapjs/card/api/Inset;
.end method

.method public abstract download(Ljava/lang/String;ILorg/hapjs/card/api/DownloadListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract download(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/DownloadListener;)V
.end method

.method public abstract getAllApps(Lorg/hapjs/card/api/GetAllAppsListener;)V
.end method

.method public abstract getAppInfo(Ljava/lang/String;)Lorg/hapjs/card/api/AppInfo;
.end method

.method public abstract getCardDebugController()Lorg/hapjs/card/api/debug/CardDebugController;
.end method

.method public abstract getCardDebugService()Lorg/hapjs/card/api/debug/CardDebugService;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCardEngineVersion()Ljava/lang/String;
.end method

.method public abstract getCardEngineVersionCode()I
.end method

.method public abstract getCardInfo(Ljava/lang/String;)Lorg/hapjs/card/api/CardInfo;
.end method

.method public abstract getCardMessageManager()Lcom/nearme/instant/xcard/CardMessageManager;
.end method

.method public abstract getPlatformVersion()I
.end method

.method public abstract grantPermissions(Ljava/lang/String;)Z
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;Lcom/nearme/instant/xcard/ICardEngineCallback;)V
.end method

.method public abstract install(Ljava/lang/String;ILorg/hapjs/card/api/InstallListener;)V
.end method

.method public abstract install(Ljava/lang/String;Ljava/lang/String;Lorg/hapjs/card/api/InstallListener;)V
.end method

.method public abstract setConfig(Lorg/hapjs/card/api/CardConfig;)V
.end method

.method public abstract setRuntimeErrorListener(Lorg/hapjs/card/api/RuntimeErrorListener;)V
.end method

.method public abstract setStatisticsListener(Lorg/hapjs/card/api/StatisticsListener;)V
.end method

.method public abstract setTheme(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract uninstall(Ljava/lang/String;Lorg/hapjs/card/api/UninstallListener;)V
.end method
