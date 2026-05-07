.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;

.field private static final TAG:Ljava/lang/String; = "OplusHotseatExpandSwitchManager"

.field private static foldedScreenSwitchStateChanged:Z

.field private static final mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static final mSharePf$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager$mSharePf$2;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager$mSharePf$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mSharePf$delegate:Ly2/e;

    sget-object v0, Lcom/android/launcher3/hotseatexpand/d;->a:Lcom/android/launcher3/hotseatexpand/d;

    sput-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mOnSharedPreferenceChangeListener$lambda-0(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public static final getFoldedScreenSwitchStateChanged()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->foldedScreenSwitchStateChanged:Z

    return v0
.end method

.method public static synthetic getFoldedScreenSwitchStateChanged$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getMSharePf()Landroid/content/SharedPreferences;
    .registers 1

    sget-object p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mSharePf$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final isSwitchOn()Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/settings/LauncherDockExpandFragment;->DOCK_EXPAND_DEFAULT_VALUE:Ljava/lang/Boolean;

    const-string v2, "DOCK_EXPAND_DEFAULT_VALUE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v2, "sp_key_dock_expand_switch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static final mOnSharedPreferenceChangeListener$lambda-0(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string/jumbo p0, "sp_key_dock_expand_switch"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p0

    if-eqz p0, :cond_1d

    const-string p0, "Hotseat_expand"

    const-string p1, "OplusHotseatExpandSwitchManager"

    const-string v0, "mark to switch expand dock on/off when back to large screen mode"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->setFoldedScreenSwitchStateChanged(Z)V

    goto :goto_20

    :cond_1d
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->onExpandSwitchStateChange()V

    :cond_20
    :goto_20
    return-void
.end method

.method public static final onExpandSwitchStateChange()V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    const-string v1, "onChange->dock expand switch change,switchOn:"

    const-string v2, "Hotseat_expand"

    const-string v3, "OplusHotseatExpandSwitchManager"

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher/wallpaper/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "getAppContext()"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->updateDockerRecentTaskData(Landroid/content/Context;Z)V

    goto :goto_3e

    :cond_1d
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    :goto_2d
    if-eqz v0, :cond_38

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v4, v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandItemUpdateHelper;->updateExpandItems(Lcom/android/launcher/Launcher;Ljava/util/List;Z)V

    goto :goto_3e

    :cond_38
    const-string/jumbo v0, "switch off failed, get launcher is null"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->foldedScreenSwitchStateChanged:Z

    const-string v0, "reset isNeedUpdateSwitch to false"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final registerSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->getMSharePf()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_e
    return-void
.end method

.method public static final setFoldedScreenSwitchStateChanged(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->foldedScreenSwitchStateChanged:Z

    return-void
.end method

.method public static final switchExpandHotseatIfNeeded(Lcom/android/launcher/Launcher;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->foldedScreenSwitchStateChanged:Z

    if-eqz v0, :cond_24

    sget v0, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    sget v1, Lcom/android/common/config/ScreenInfo;->realScreenHeight:I

    invoke-static {p0, v0, v1}, Lcom/android/common/util/DisplayUtils;->checkIfNeedUpdate(Lcom/android/launcher/Launcher;II)Z

    move-result p0

    if-nez p0, :cond_24

    const-string p0, "Hotseat_expand"

    const-string/jumbo v0, "start to switch expand dock on/off when back to large screen mode"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->onExpandSwitchStateChange()V

    :cond_24
    return-void
.end method

.method public static final unregisterSpChangeListener()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;

    invoke-direct {v0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->getMSharePf()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_e

    :cond_9
    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->mOnSharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :goto_e
    return-void
.end method
