.class public Lcom/android/launcher/settings/LauncherSettingsDynamicController;
.super Lcom/oplus/settingsdynamic/SettingsDynamicController;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 1

    const-string p0, "com.android.launcher.ACTION_LAUNCHER_SETTINGS_PAGE"

    return-object p0
.end method
