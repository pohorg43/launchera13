.class public Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;
.super Lcom/android/launcher3/icons/LauncherActivityCachingLogic;
.source ""


# static fields
.field private static final IS_ADAPTIVE_ICON_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = "OplusLauncherActivityCachingLogic"


# instance fields
.field private mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/LauncherActivityCachingLogic;-><init>()V

    return-void
.end method

.method public static getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;
    .registers 6

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportMultiApp:Z

    const-string v1, "OplusLauncherActivityCachingLogic"

    if-eqz v0, :cond_38

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v2, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "getTitle: "

    invoke-static {v0, p0, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return-object p0

    :cond_38
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->sIsSupportChangeStklableNew:Z

    if-eqz v2, :cond_7e

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/StkUtils;->isStkApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_77
    const-string v0, ""

    :goto_79
    invoke-static {v1, p0, v0}, Lcom/android/common/util/StkUtils;->getStkName(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7e
    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getActivityLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabel(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->getLabel(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isPackageProtected(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Z
    .registers 3

    invoke-static {p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageProtected(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 3

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->isPackageProtected(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 12
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/theme/OplusUIEngine;->createAppsIconsCtrl(Landroid/content/Context;)Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    :cond_e
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v4, p0, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/theme/LauncherIconConfig;->getMaxSizeInFoldScreen(Landroid/content/res/Resources;)I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/LauncherIcons;->createAppIconBitmap(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;Lcom/android/launcher3/icons/IconCache;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    goto :goto_51

    :cond_3e
    iget-object v4, p0, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->mIAppsIconsEngineCtrl:Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/icons/LauncherIcons;->createAppIconBitmap(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Lcom/oplus/iconctrl/IAppsIconsEngineCtrl;Lcom/android/launcher3/icons/IconCache;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    :goto_51
    if-nez p0, :cond_65

    const-string p0, "No icon found for: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p2, "OplusLauncherActivityCachingLogic"

    invoke-static {p0, p1, p2}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_65
    move-object v8, p0

    :goto_66
    invoke-virtual {v7}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    return-object v8
.end method

.method public bridge synthetic loadIcon(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/OplusLauncherActivityCachingLogic;->loadIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method
