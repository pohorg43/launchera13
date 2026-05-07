.class public Lcom/android/launcher/backup/OplusCustomLauncherRestorePluginInjector;
.super Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusCustomLauncherRestorePluginInjector"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/backup/OplusBaseCustomLauncherRestorePluginInjector;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultIconpack()Ljava/lang/String;
    .registers 1

    const-string p0, "com.oneplus.iconpack.oneplush2"

    return-object p0
.end method
