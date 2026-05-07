.class public Lcom/android/launcher3/backup/OpLauncherOTARestorePlugin;
.super Lcom/android/launcher/backup/restore/LauncherRestorePlugin;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "BR-Launcher_OpLauncherOTARestorePlugin"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileDescriptor(Ljava/lang/String;)Ljava/io/FileDescriptor;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    sget-object p0, Lcom/android/launcher3/backup/OpLauncherOTARestorePlugin;->TAG:Ljava/lang/String;

    const-string p1, "getFileDescriptor, path is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_f
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1b

    return-object v0

    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_27

    :try_start_20
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    goto :goto_29

    :catch_27
    move-exception p0

    move-object p1, v0

    :goto_29
    sget-object v1, Lcom/android/launcher3/backup/OpLauncherOTARestorePlugin;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_37

    :try_start_34
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_37

    :catch_37
    :cond_37
    return-object v0
.end method

.method public prepare(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->prepare(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    invoke-virtual {p1}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->isReadIconpack()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/android/launcher/backup/restore/LauncherRestorePlugin;->mLauncherRestorePluginInjector:Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;

    iget-object v0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;->initIconpack(Landroid/content/Context;)V

    :cond_12
    iget-object p1, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/launcher/backup/LauncherBRBasePlugin;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->clearIconsCacheAndDb()V

    return-void
.end method
