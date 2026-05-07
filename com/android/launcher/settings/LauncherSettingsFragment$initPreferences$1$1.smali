.class public final Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;
.super Lcom/android/launcher/settings/LauncherSettingsDynamicController;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsDynamicController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 1

    const-string p0, "com.android.launcher.ACTION_LAUNCHER_SETTINGS_PAGE"

    return-object p0
.end method
