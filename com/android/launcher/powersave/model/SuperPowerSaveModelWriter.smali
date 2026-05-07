.class public Lcom/android/launcher/powersave/model/SuperPowerSaveModelWriter;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FIRST_ENTER_SUPER_POWER_MODE_KEY:Ljava/lang/String; = "first_enter_super_power_mode"

.field private static final KEY_PREFIX:Ljava/lang/String; = "super_power_model_launcher_item_position_key"

.field private static final KEY_PREFIX_PRE:Ljava/lang/String; = "model_writer_item_key"

.field public static final PREF_KEY_SUPERPOWER_OTA_DESKTOP_UPDATE_VERSION_CODE:Ljava/lang/String; = "superpower_ota_desktop_update_version_code"

.field public static final PREF_KEY_SUPERPOWER_OTA_VERSION_CODE:I = 0x1

.field private static final SPLIT_KEY:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "SuperPowerSaveModelWriter"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateItemToSp(Landroid/content/Context;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V
    .registers 4

    iget v0, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->cellX:I

    iget v1, p1, Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;->cellY:I

    invoke-static {v0, v1}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelWriter;->buildKey(II)Ljava/lang/String;

    move-result-object v0

    :try_start_8
    invoke-static {p0, v0, p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->saveSuperPowerSaveModelItemInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    goto :goto_23

    :catchall_c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuperpowerSaveModelWriterItemInfo,e1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SuperPowerSaveModelWriter"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public static buildKey(II)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "super_power_model_launcher_item_position_key_"

    const-string v1, "_"

    invoke-static {v0, p0, v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildPreKey(II)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "model_writer_item_key"

    const-string v1, "_"

    invoke-static {v0, p0, v1, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getItemFromSp(Landroid/content/Context;II)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelWriter;->buildKey(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/utils/SuperPowerSaveUtils;->getSuperpowerSaveModelWriterItemInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/launcher/powersave/model/SuperPowerSaveModelItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperPowerSaveAppCount(Landroid/content/Context;)I
    .registers 3

    const-string/jumbo v0, "super_power_save_launcher_app_count"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isFirstEnterSuperPowerMode(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "first_enter_super_power_mode"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static removeSharedPrefsItem(Landroid/content/Context;II)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher/powersave/model/SuperPowerSaveModelWriter;->buildKey(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static removeSharedPrefsItem(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setHadEnterSuperPowerModeFlag(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "first_enter_super_power_mode"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSuperPowerSaveAppCount(Landroid/content/Context;I)V
    .registers 3

    const-string/jumbo v0, "super_power_save_launcher_app_count"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
