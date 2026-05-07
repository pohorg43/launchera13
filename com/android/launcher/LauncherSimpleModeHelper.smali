.class public Lcom/android/launcher/LauncherSimpleModeHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_THEME_ICON_CONFIG_SIZE:I = 0x15e0

.field private static final DEFAULT_VALID_ICON_CONFIG_SIZE:I = 0x1388

.field private static final GET_BITS_SIXTEEN:I = 0xffff

.field private static final ICON_CONFIG_PREFERENCE:Ljava/lang/String; = "ICON_CONFIG_PREFERENCE"

.field private static final ICON_CONFIG_SIZE_KEY_ENDS:Ljava/lang/String; = "_icon_backup"

.field private static final SHR_BITS_COUNT:I = 0x20

.field private static final SIMPLE_META_DATA_NAME:Ljava/lang/String; = "com.oplus.ocs.card.AUTH_CODE"

.field private static final SIMPLE_MODE_CHANGING_FLAG_RESTORE_DELAY:I = 0x1388

.field private static final SIMPLE_MODE_DEFAULT_FONT_SIZE_VALUE:Ljava/lang/String; = "1,4"

.field private static final SIMPLE_MODE_ICON_CONFIG_SIZE:I = 0x15e0

.field public static final SIMPLE_MODE_OTHER_APPS_FOLDER_TITLE:Ljava/lang/String; = "Other Apps"

.field public static final SIMPLE_MODE_START_LOAD_DELAY:I = 0x258

.field public static final SIMPLE_MODE_START_LOAD_OVERLAY_CHANGED_DELAY:I = 0x64

.field private static final SIMPLE_THEME_ICON_CONFIG_SIZE:I = 0x19c8

.field private static final TAG:Ljava/lang/String; = "LauncherSimpleModeHelper"

.field private static final UX_ICON_STYLE_FONT_SIMPLE:Ljava/lang/String; = "customize_uxicon_font_simple"

.field private static final mDefaultIconConfigSizeSpKeys:[Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;


# instance fields
.field private mAutoRestoreWorkSpaceAndHotSeat:Ljava/lang/Runnable;

.field private mHideWorkSpaceAndHotSeat:Ljava/lang/Runnable;

.field private mSimpleModeIconChangingFlag:Z

.field public sOverLayChanged:Z

.field public sSimpleModeLoadDelayFlag:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "material_theme_icon_backup"

    const-string v1, "default_theme_icon_backup"

    const-string v2, "custom_theme_icon_backup"

    const-string/jumbo v3, "pebble_theme_icon_backup"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/LauncherSimpleModeHelper;->mDefaultIconConfigSizeSpKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/LauncherSimpleModeHelper;->sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sOverLayChanged:Z

    new-instance v0, Lcom/android/launcher/e0;

    invoke-direct {v0, p0}, Lcom/android/launcher/e0;-><init>(Lcom/android/launcher/LauncherSimpleModeHelper;)V

    iput-object v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mAutoRestoreWorkSpaceAndHotSeat:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/common/util/d0;->c:Lcom/android/common/util/d0;

    iput-object v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mHideWorkSpaceAndHotSeat:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->lambda$new$1()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/LauncherSimpleModeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->lambda$new$0()V

    return-void
.end method

.method private backupCurIconConfigSpSize(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)V
    .registers 6

    invoke-direct {p0, p2, p3}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSpKeyStr(Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->isDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_28

    :cond_21
    invoke-direct {p0, p2}, Lcom/android/launcher/LauncherSimpleModeHelper;->getThirdThemeIconConfigSize(Landroid/content/res/Configuration;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static getCurUxIconConfig(Landroid/content/res/Resources;Landroid/content/res/Configuration;)Lcom/oplus/uxicon/helper/IconConfig;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/common/util/CacheUtils;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_9
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_f
    if-nez p1, :cond_12

    return-object v0

    :cond_12
    invoke-static {p0, p1}, Lcom/oplus/uxicon/helper/IconConfigParser;->parserConfig(Landroid/content/res/Resources;Ljava/lang/Long;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultIconSize()I
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->isDefaultTheme()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x1388

    return p0

    :cond_9
    const/16 p0, 0x15e0

    return p0
.end method

.method private getIconConfigSizeSpEntryKeyList(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_44

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_12

    goto :goto_44

    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_icon_backup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_43
    return-object p1

    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getIconConfigSp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string p0, "ICON_CONFIG_PREFERENCE"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private getIconConfigSpKeyStr(Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p2}, Lcom/oplus/uxicon/helper/IconConfig;->getTheme()I

    move-result p0

    if-lez p0, :cond_10

    sget-object p2, Lcom/android/launcher/LauncherSimpleModeHelper;->mDefaultIconConfigSizeSpKeys:[Ljava/lang/String;

    array-length v0, p2

    if-ge p0, v0, :cond_10

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p2, p0

    goto :goto_22

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oplus/uxicon/ui/util/UxIconPackHelper;->getIconPackName(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "_icon_backup"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_22
    const-string p1, "getIconConfigSpKeyStr_keyStr:"

    const-string p2, "LauncherSimpleModeHelper"

    invoke-static {p1, p0, p2}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;
    .registers 2

    sget-object v0, Lcom/android/launcher/LauncherSimpleModeHelper;->sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/LauncherSimpleModeHelper;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/LauncherSimpleModeHelper;->sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/LauncherSimpleModeHelper;

    invoke-direct {v1}, Lcom/android/launcher/LauncherSimpleModeHelper;-><init>()V

    sput-object v1, Lcom/android/launcher/LauncherSimpleModeHelper;->sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/LauncherSimpleModeHelper;->sInstance:Lcom/android/launcher/LauncherSimpleModeHelper;

    return-object v0
.end method

.method private getThirdThemeIconConfigSize(Landroid/content/res/Configuration;)I
    .registers 6

    const/16 p0, 0x15e0

    :try_start_2
    invoke-static {p1}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_13

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int p1, v0

    if-gtz p1, :cond_11

    goto :goto_2a

    :cond_11
    move p0, p1

    goto :goto_2a

    :catch_13
    move-exception p1

    const-string v0, "getThemeIconSize failed. Fail message is "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherSimpleModeHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    return p0
.end method

.method private isDefaultTheme()Z
    .registers 5

    const/4 p0, 0x1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_19

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0

    :catch_19
    move-exception v0

    const-string v1, "isSupportUXIcon failed. Fail message is "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSimpleModeHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "LauncherSimpleModeHelper"

    const-string v1, "auto restoreSimpleModeChangeState"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/launcher/LauncherSimpleModeHelper;->restoreSimpleModeChangeState(Lcom/android/launcher/Launcher;)V

    :cond_1a
    return-void
.end method

.method private static synthetic lambda$new$1()V
    .registers 3

    const-string v0, "LauncherSimpleModeHelper"

    const-string v1, "hide restoreSimpleModeChangeState"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    :cond_26
    return-void
.end method

.method private showWorkSpaceAndHotSeat(Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string p0, "LauncherSimpleModeHelper"

    const-string/jumbo v0, "showWorkSpaceAndHotSeat"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_23

    const-string/jumbo v3, "set hotseat visible"

    invoke-static {p0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusHotseat;->setVisibility(I)V

    :cond_23
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_34

    const-string/jumbo p1, "set workspace visible"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusWorkspace;->setVisibility(I)V

    :cond_34
    return-void
.end method

.method private updateSimpleModeIconStyleFontSize(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "customize_uxicon_font_simple"

    const-string v1, "1,4"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "launcher_simple_mode_bubbletext_font_size_key"

    invoke-static {p1, v0, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateThirdThemeIconConfigSize(Landroid/content/res/Configuration;I)V
    .registers 9

    const-string v0, "LauncherSimpleModeHelper"

    :try_start_2
    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v2

    invoke-static {p0, v1}, Lcom/oplus/compat/content/res/ConfigurationNative;->setThemeChanged(Landroid/content/res/Configuration;I)V

    int-to-long v4, p1

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    long-to-int v2, v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lcom/oplus/compat/content/res/ConfigurationNative;->setThemeChanged(Landroid/content/res/Configuration;I)V

    invoke-static {p0, v2, v3}, Lcom/oplus/compat/content/res/ConfigurationNative;->setThemeChangedFlags(Landroid/content/res/Configuration;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toggle saveThemeConfig newFlag is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " themedIconSize is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3e

    goto :goto_54

    :catch_3e
    move-exception p0

    const-string/jumbo p1, "toggle saveThemeConfig failed. Fail message is "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_54
    return-void
.end method


# virtual methods
.method public isSimpleGuidCardOnline(Landroid/content/Context;)Z
    .registers 5

    const-string p0, "LauncherSimpleModeHelper"

    const-string v0, ""

    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const v1, 0x7f1203e0

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.oplus.ocs.card.AUTH_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "simple meta value : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    const-string/jumbo p1, "simple guid card is invalid"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSimpleModeIconChanging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mSimpleModeIconChangingFlag:Z

    return p0
.end method

.method public notifySceneModeToChangeSimpleStateIfNecessary(Landroid/content/Context;)V
    .registers 5

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDefaultSimpleMode()Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string/jumbo v1, "simple_mode_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    if-eq p0, v0, :cond_37

    const-string p0, "LauncherSimpleModeHelper"

    const-string/jumbo v1, "notifySceneModeToChangeSimpleState"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    invoke-static {p1, v0, v2}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;ZZ)V

    :cond_37
    return-void
.end method

.method public resetCurUxIconConfigDefaultSimpleSize(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSizeSpEntryKeyList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/LauncherSimpleModeHelper;->updateCurUxIconConfigSize(Landroid/content/Context;ZZ)V

    :cond_12
    return-void
.end method

.method public resetSimplemodeIconChangingFlag()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mSimpleModeIconChangingFlag:Z

    return-void
.end method

.method public restoreSimpleModeChangeState(Lcom/android/launcher/Launcher;)V
    .registers 5

    const-string/jumbo v0, "restoreSimpleModeChangeState,sSimpleModeLoadDelayFlag = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    const-string v2, "LauncherSimpleModeHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sOverLayChanged:Z

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->showWorkSpaceAndHotSeat(Lcom/android/launcher/Launcher;)V

    :cond_1a
    return-void
.end method

.method public setSimpleDelayFlagAndHideWorkSpaceHotSeat()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->sSimpleModeLoadDelayFlag:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mHideWorkSpaceAndHotSeat:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mAutoRestoreWorkSpaceAndHotSeat:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "LauncherSimpleModeHelper"

    const-string v0, "hideWorkSpaceAndHotSeat"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurUxIconConfigSize(Landroid/content/Context;ZZ)V
    .registers 10

    const-string v0, "LauncherSimpleModeHelper"

    if-nez p1, :cond_b

    const-string/jumbo p0, "updateCurUxIconConfigSize context is null to return"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCurUxIconConfigSize toSimpleMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    :try_start_24
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher/LauncherSimpleModeHelper;->getCurUxIconConfig(Landroid/content/res/Resources;Landroid/content/res/Configuration;)Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v3

    if-nez v3, :cond_33

    return-void

    :cond_33
    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz p2, :cond_6f

    invoke-direct {p0, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->updateSimpleModeIconStyleFontSize(Landroid/content/Context;)V

    if-eqz p3, :cond_46

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher/LauncherSimpleModeHelper;->backupCurIconConfigSpSize(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)V

    goto :goto_59

    :cond_46
    invoke-direct {p0, v2, v3}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSpKeyStr(Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->getDefaultIconSize()I

    move-result v5

    invoke-interface {p3, p1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_59
    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->isDefaultTheme()Z

    move-result p1

    const/16 p3, 0x15e0

    if-eqz p1, :cond_69

    if-ne v4, p3, :cond_69

    const-string p0, "change to simple mode no need update icon config"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_69
    invoke-virtual {v3, p3}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    const/16 p1, 0x19c8

    goto :goto_8c

    :cond_6f
    invoke-direct {p0, v2, v3}, Lcom/android/launcher/LauncherSimpleModeHelper;->getIconConfigSpKeyStr(Landroid/content/res/Configuration;Lcom/oplus/uxicon/helper/IconConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->getDefaultIconSize()I

    move-result p3

    invoke-interface {v5, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->isDefaultTheme()Z

    move-result p3

    if-eqz p3, :cond_89

    if-ne v4, p1, :cond_89

    const-string p0, "exit simple mode no need update icon config"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_89
    invoke-virtual {v3, p1}, Lcom/oplus/uxicon/helper/IconConfig;->setIconSize(I)V

    :goto_8c
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/launcher/LauncherSimpleModeHelper;->mSimpleModeIconChangingFlag:Z

    invoke-direct {p0}, Lcom/android/launcher/LauncherSimpleModeHelper;->isDefaultTheme()Z

    move-result p0

    if-eqz p0, :cond_9d

    invoke-static {v3}, Lcom/oplus/uxicon/helper/IconConfigParser;->mergeConfig(Lcom/oplus/uxicon/helper/IconConfig;)J

    move-result-wide p0

    invoke-static {v2, p0, p1}, Lcom/oplus/compat/content/res/ConfigurationNative;->setUxIconConfig(Landroid/content/res/Configuration;J)V

    goto :goto_a0

    :cond_9d
    invoke-static {v2, p1}, Lcom/android/launcher/LauncherSimpleModeHelper;->updateThirdThemeIconConfigSize(Landroid/content/res/Configuration;I)V

    :goto_a0
    if-nez p2, :cond_b0

    iget-object p0, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_b0

    iget-object p0, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_b0
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyIconConfig configUpdated:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",iconConfig.size:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/uxicon/helper/IconConfig;->getIconSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_d4} :catch_da
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_24 .. :try_end_d4} :catch_d5

    goto :goto_de

    :catch_d5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_de

    :catch_da
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_de
    return-void
.end method
