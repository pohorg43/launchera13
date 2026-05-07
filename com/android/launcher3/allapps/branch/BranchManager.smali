.class public final Lcom/android/launcher3/allapps/branch/BranchManager;
.super Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/IInitBranchCallback;
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/branch/AbsBranchUIManager<",
        "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
        ">;",
        "Lcom/android/launcher3/allapps/branch/IInitBranchCallback;",
        "Lcom/android/launcher/ILauncherLifecycleObserver;"
    }
.end annotation


# static fields
.field public static final BRANCH_VERSION_CODE:Ljava/lang/String; = "3.1"

.field public static final DRAWER_MODE_CLASS_NAME:Ljava/lang/String; = "com.android.launcher.settings.LauncherDrawerModeSettingsActivity"

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

.field public static final IS_NEW_DEVICE_DEFAULT_VALUE:Z = false

.field public static final KEY_ADD_SEARCH_NOTIFICATION:Ljava/lang/String; = "key_add_search_notification"

.field public static final KEY_BRANCH_PERSONALIZE_SEARCH:Ljava/lang/String; = "key_branch_personalize_search"

.field public static final KEY_DEVICE_PROTECTED_EXPIRED:Ljava/lang/String; = "key_device_protected_expired"

.field public static final KEY_ENABLE_BRANCH_SEARCH_NOTIFICATION:Ljava/lang/String; = "key_enable_branch_search_notification"

.field public static final KEY_ENABLE_BRANCH_SEARCH_NOTIFICATION_DEFAULT_VALUE:Z = true

.field public static final KEY_IS_NEW_DEVICE:Ljava/lang/String; = "key_is_new_device"

.field public static final KEY_IS_OTA_AND_USER_CLOSE_NEED_SHOW_DECLARE:Ljava/lang/String; = "key_is_ota_and_user_close_need_show_declare"

.field public static final KEY_IS_OTA_AND_USER_CLOSE_NEED_SHOW_RED_DOT:Ljava/lang/String; = "key_is_ota_or_user_close_need_show_red_dot"

.field public static final KEY_OPLUS_CUSTOMIZE_PERSONALIZED_SEARCH_SWITCH_STATUS:Ljava/lang/String; = "oplus_customize_personalized_search_switch_status"

.field public static final KEY_RUNNING_TIME:Ljava/lang/String; = "key_running_time"

.field public static final KEY_RUS_OPLUS_BRANCH_NAVIGATOR_ENABLED:Ljava/lang/String; = "app_launcher_branch_enabled_config"

.field public static final KEY_SHOW_INPUT_METHOD_IN_DRAWER:Ljava/lang/String; = "key_show_inputmethod_in_drawer"

.field public static final OTA_AND_USER_CLOSE_NEED_SHOW_DECLARE_DEFAULT_VALUE:Z = false

.field public static final OTA_AND_USER_CLOSE_NEED_SHOW_RED_DOT_DEFAULT_VALUE:Z = false

.field public static final PROTECTED_EXPIRED_DEFAULT_VALUE:Z = false

.field public static final TAG:Ljava/lang/String; = "BranchManager"

.field private static mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

.field private static mBranchSearchAlgorithm:Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/branch/AbsBranchUIManager<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mGAID:Ljava/lang/String;

.field private static final mOplusMarketPackage:Ljava/lang/String;

.field private static final mPlayStorePackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchManager;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const v0, 0x7f1203de

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mOplusMarketPackage:Ljava/lang/String;

    const v0, 0x7f1203da

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mPlayStorePackage:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mGAID:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;-><init>(Lcom/android/launcher3/allapps/SearchUiManager;Lcom/android/launcher3/allapps/branch/AbsBranchResponse;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static final addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addSearchNotificationSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModeCategory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method public static final featureAndRusSupport()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBranch()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static final featureSupport()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->featureSupport()Z

    move-result v0

    return v0
.end method

.method public static final getEmptySearchMarketIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->mOplusMarketPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {p0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_1c
    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->mPlayStorePackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketSearchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mOplusMarketPackage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mPlayStorePackage:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_37

    sget-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchManager;->getResourceId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getPersonalizeSearchSetting()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getPersonalizeSearchSetting()Z

    move-result v0

    return v0
.end method

.method public static final getPersonalizeSearchSettingProtectExpired()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getPersonalizeSearchSetting()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->protectExpired()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static final getSearchCount(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getSearchCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final getSuggestLinkCount(Landroid/content/Context;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->getSuggestLinkCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static final gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method

.method public static final initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addSearchNotificationSwitch"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModeCategory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static final initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method

.method public static final isDrawModeActivity(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "currentName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->isDrawModeActivity(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ev"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p0

    return p0
.end method

.method public static final launcherSupport(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->launcherSupport(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public static final protectExpired()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->protectExpired()Z

    move-result v0

    return v0
.end method

.method public static final removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "personalizeSearchSwitch"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addSearchNotificationSwitch"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherModeCategory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method public static final rusSearchNotificationEnable()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->rusSearchNotificationEnable()Z

    move-result v0

    return v0
.end method

.method public static final rusSupportBranch()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->rusSupportBranch()Z

    move-result v0

    return v0
.end method

.method public static final rusSupportBubble()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->rusSupportBubble()Z

    move-result v0

    return v0
.end method

.method public static final setSearchCount(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->setSearchCount(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final setSuggestLinkCount(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->setSuggestLinkCount(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V

    return-void
.end method

.method public static final unregisterReceiverSafely(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->unregisterReceiverSafely(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;I)V"
        }
    .end annotation

    const-string p0, "adapterItems"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fastScrollerSections"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->branchRefillAdapterItems(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Ljava/util/ArrayList;I)V

    :goto_17
    return-void
.end method

.method public checkDeviceProtectTimeLimit()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->checkDeviceProtectTimeLimit()V

    :goto_8
    return-void
.end method

.method public clearIconCache()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0}, Lcom/android/launcher3/allapps/branch/IInitBranchCallback;->clearIconCache()V

    :goto_8
    return-void
.end method

.method public enableSearch(Landroid/content/Context;Z)V
    .registers 3

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/IInitBranchCallback;->enableSearch(Landroid/content/Context;Z)V

    :goto_8
    return-void
.end method

.method public enableSearchNotification(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->enableSearchNotification(Landroid/content/Context;Z)V

    :goto_d
    return-void
.end method

.method public enterDrawer()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->enterDrawer()V

    :goto_8
    return-void
.end method

.method public exitDrawer()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->exitDrawer()V

    :goto_8
    return-void
.end method

.method public final getBranchUIController()Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/branch/AbsBranchUIManager<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getBranchUIController"
    .end annotation

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    return-object p0
.end method

.method public final getGAID()Ljava/lang/String;
    .registers 1
    .annotation build Lkotlin/jvm/JvmName;
        name = "getGAID"
    .end annotation

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mGAID:Ljava/lang/String;

    return-object p0
.end method

.method public final getMBranchInitOpt()Lcom/android/launcher3/allapps/branch/IInitBranchCallback;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    return-object p0
.end method

.method public getResourceId(I)I
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->getResourceId(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public final getSearchAlgorithm()Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "getSearchAlgorithm"
    .end annotation

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchSearchAlgorithm:Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;

    return-object p0
.end method

.method public initBranchSdk(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher3/allapps/branch/IInitBranchCallback;->initBranchSdk(Landroid/content/Context;)V

    :goto_d
    return-void
.end method

.method public initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Launcher;",
            "Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList<",
            "Lcom/android/launcher3/Launcher;",
            ">;",
            "Lcom/android/launcher3/allapps/OplusAllAppsContainerView;",
            ")V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appsList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parent"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->initUIManagerImpl(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/OplusAlphabeticalAppsList;Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    :goto_18
    return-void
.end method

.method public needKeyboardFromNotification()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->needKeyboardFromNotification()Z

    move-result p0

    :goto_a
    return p0
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V
    .registers 4

    const-string p0, "holder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "adapterItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V

    :goto_12
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 4

    const-string p0, "inflater"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public onCreateViewHolderBubbleTv(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILandroid/view/View$OnFocusChangeListener;Landroid/view/View$OnLongClickListener;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 12

    const-string p0, "inflater"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "parent"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemFocusListener"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "longClickListener"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez v0, :cond_1b

    const/4 p0, 0x0

    goto :goto_24

    :cond_1b
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->onCreateViewHolderBubbleTv(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILandroid/view/View$OnFocusChangeListener;Landroid/view/View$OnLongClickListener;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    :goto_24
    return-object p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string/jumbo v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-interface {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public openLauncherAllAppMode()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->openLauncherAllAppMode()V

    :goto_8
    return-void
.end method

.method public preMeasureViews(Landroid/util/SparseIntArray;I)V
    .registers 3

    const-string/jumbo p0, "viewHeights"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->preMeasureViews(Landroid/util/SparseIntArray;I)V

    :goto_e
    return-void
.end method

.method public redDotEnable()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->redDotEnable()Z

    move-result p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public refillAdapterItemsAndUpdate()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->refillAdapterItemsAndUpdate()V

    :goto_8
    return-void
.end method

.method public refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->refreshBranchSuggestedLinksAndHints(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

.method public refreshListDot(Ljava/util/List;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "itemList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->refreshListDot(Ljava/util/List;)Z

    move-result p0

    :goto_f
    return p0
.end method

.method public refreshSaveUserPageStatus(Z)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->refreshSaveUserPageStatus(Z)V

    :goto_8
    return-void
.end method

.method public saveRunningTime()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->saveRunningTime()V

    :goto_8
    return-void
.end method

.method public final setBranchUIController(Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchUIManager<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "setBranchUIController"
    .end annotation

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    return-void
.end method

.method public final setGAID(Ljava/lang/String;)V
    .registers 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "setGAID"
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->mGAID:Ljava/lang/String;

    return-void
.end method

.method public final setMBranchInitOpt(Lcom/android/launcher3/allapps/branch/IInitBranchCallback;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    return-void
.end method

.method public setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setNotificationSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    :goto_8
    return-void
.end method

.method public setReIntoDrawer(Z)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setReIntoDrawer(Z)V

    :goto_8
    return-void
.end method

.method public final setSearchAlgorithm(Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm<",
            "Lcom/android/launcher3/allapps/branch/BranchCommonAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmName;
        name = "setSearchAlgorithm"
    .end annotation

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchSearchAlgorithm:Lcom/android/launcher3/allapps/branch/AbsBranchSearchAlgorithm;

    return-void
.end method

.method public setTextViewRedDot(Landroid/widget/TextView;)V
    .registers 2

    const-string/jumbo p0, "textView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_b

    goto :goto_e

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->setTextViewRedDot(Landroid/widget/TextView;)V

    :goto_e
    return-void
.end method

.method public showKeyboard(F)V
    .registers 2

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchUIController:Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/AbsBranchUIManager;->showKeyboard(F)V

    :goto_8
    return-void
.end method

.method public updateBranchRUS(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->mBranchInitOpt:Lcom/android/launcher3/allapps/branch/IInitBranchCallback;

    if-nez p0, :cond_a

    goto :goto_d

    :cond_a
    invoke-interface {p0, p1}, Lcom/android/launcher3/allapps/branch/IInitBranchCallback;->updateBranchRUS(Landroid/content/Context;)V

    :goto_d
    return-void
.end method
