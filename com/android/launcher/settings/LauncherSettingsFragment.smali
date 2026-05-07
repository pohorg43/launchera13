.class public final Lcom/android/launcher/settings/LauncherSettingsFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;
    }
.end annotation


# static fields
.field private static final ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_LAUNCHER_DOCK_EXPAND:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

.field public static final ACTION_LAUNCHER_ICON_FALLEN:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

.field public static final ACTION_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

.field private static final ACTION_NAVIGATION_BAR_ACTIVITY:Ljava/lang/String; = "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

.field private static final ACTION_NAVIGATION_BAR_SETTINGS:Ljava/lang/String; = "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

.field private static final ACTION_SIMPLE_MODE_ACTIVITY:Ljava/lang/String; = "oplus.intent.action.SIMPLE_MODE_ANIM"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V1:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallpaperActivity"

.field private static final ACTIVITY_CAROUSEL_WALLPAPER_V2:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.WallPaperActivity"

.field private static final AUTHORITY:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.provider"

.field private static final BOTTOM_RECOMMEND_KEY:Ljava/lang/String; = "bottom_recommended"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY:Ljava/lang/String; = "smart_search_settings_title"

.field private static final COLOR_SWITH_LODING_DELAY:I = 0x3e8

.field public static final Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

.field private static final EXP_ACTION_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.ui.GUIDE_ACTION"

.field private static final EXP_ACTIVITY_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial.activities.CarouselWallpapersActivity"

.field private static final EXTRA_IS_WALLPAPER_ENTRANCE_SHOW:Ljava/lang/String; = "is_wallpaper_entrance_show"

.field public static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final IS_IN_SIMPLE_MODE:Ljava/lang/String; = "is_in_simple_mode"

.field public static final KEY_APP_UPDATE_DOT:Ljava/lang/String; = "app_update_dot"

.field private static final KEY_CAROUSEL_WALLPAPER_OPEN_FROM:Ljava/lang/String; = "wallpaper_open_from_key"

.field public static final KEY_DOCK_EXPAND:Ljava/lang/String; = "key_dock_expand"

.field public static final KEY_ICON_FALLEN:Ljava/lang/String; = "key_icon_fallen"

.field public static final KEY_LAUNCHER_BROWSER_NEWS:Ljava/lang/String; = "browser_news_switch"

.field public static final KEY_LAUNCHER_CATEGORY:Ljava/lang/String; = "launcher_category"

.field public static final KEY_LAUNCHER_DOUBLE_CLICK_LOCK:Ljava/lang/String; = "launcher_double_click_lock"

.field public static final KEY_LAUNCHER_IS_COMPACT_ARRANGEMENT:Ljava/lang/String; = "launcher_is_compact_arrangement"

.field public static final KEY_LAUNCHER_IS_SHOW_SEARCH_BOX:Ljava/lang/String; = "launcher_is_show_search_box"

.field public static final KEY_LAUNCHER_LAYOUT:Ljava/lang/String; = "launcher_layout"

.field public static final KEY_LAUNCHER_LOCKED:Ljava/lang/String; = "launcher_locked"

.field public static final KEY_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field public static final KEY_LAUNCHER_PAGE:Ljava/lang/String; = "launcher_page"

.field public static final KEY_LAUNCHER_RECENT_MANAGE:Ljava/lang/String; = "launcher_recent_manage"

.field public static final KEY_LAUNCHER_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "launcher_search_entry_enable"

.field public static final KEY_LAUNCHER_SLIDE_DOWN:Ljava/lang/String; = "launcher_slide_down"

.field public static final KEY_LAYOUT_UPGRADE_GUIDE_SETTINGS:Ljava/lang/String; = "launcher_layout_upgrade_guide_settings"

.field public static final KEY_PERSONALITY_ICON_STYLE:Ljava/lang/String; = "personality_icon_style"

.field public static final KEY_PERSONALITY_LAUNCHER_LAYOUT:Ljava/lang/String; = "personality_launcher_layout"

.field public static final KEY_SET_APP_STARTUP_ANIM_SPEED:Ljava/lang/String; = "app_startup_anim_speed"

.field public static final KEY_SET_SUBSCRIPTION:Ljava/lang/String; = "entry_subscription"

.field private static final KEY_SLIDE_VIEW_TO_SETTING:Ljava/lang/String; = "is_slide_view_to_setting_key"

.field private static final KEY_WALLPAPER_SETTING:Ljava/lang/String; = "key_from"

.field public static final LAUNCHER_DOCK_EXPAND_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherDockExpandSettingActivity"

.field public static final LAUNCHER_ICON_FALLEN_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherIconFallenSettingActivity"

.field public static final LAUNCHER_MODE_CLS:Ljava/lang/String; = "com.android.launcher.settings.LauncherModeSettingActivity"

.field public static final LAUNCHER_MODE_DRAWER:I = 0x2

.field public static final LAUNCHER_MODE_SIMPLE:I = 0x3

.field public static final METHOD_GET_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "getLauncherModeSettings"

.field private static final METHOD_IS_IN_SIMPLE_MODE:Ljava/lang/String; = "METHOD_IS_IN_SIMPLE_MODE"

.field private static final METHOD_WALLPAPER_ENTRANCE_SHOW:Ljava/lang/String; = "method_wallpaper_entrance_show"

.field private static final PACKAGE_CAROUSEL_WALLPAPER:Ljava/lang/String; = "com.heytap.pictorial"

.field private static final PACKAGE_NAVIGATION_BAR:Ljava/lang/String; = "com.android.settings"

.field private static final PACKAGE_SIMPLE_MODE:Ljava/lang/String; = "com.coloros.scenemode"

.field public static final PERSONALITY_PACKAGE_NAME:Ljava/lang/String; = "com.oplus.uxdesign"

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsFragment"

.field private static final URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

.field private static final URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

.field private static final VALUE_CAROUSEL_WALLPAPER_OPEN_FROM:I

.field private static final VALUE_WALLPAPER_SETTING:Ljava/lang/String;


# instance fields
.field private isCompactArrangementting:Z

.field private mAodSupport:Z

.field private mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mBranchSearchSettingPreference:Landroidx/preference/Preference;

.field private mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mContext:Landroid/content/Context;

.field private mCurLauncherMode:I

.field private mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

.field private mFrom:Ljava/lang/String;

.field private mFromMainPage:Z

.field private mIsFirstOnResume:Z

.field private mIsHiAssistantAppEnable:Z

.field private mIsShelfAppEnable:Z

.field private mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

.field private mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

.field private mLauncherCategory:Landroidx/preference/PreferenceCategory;

.field private mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

.field private mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

.field private mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

.field private mShowingDialog:Landroid/app/Dialog;

.field private mSlideDownItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSlideUpItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const v0, 0x7f12002d

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    const-string v0, "content://com.heytap.pictorial.wallpaper.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

    const-string/jumbo v0, "pictorial://wallpaper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    return-void
.end method

.method public static final synthetic access$getMLauncherArrangementModeSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    return-object p0
.end method

.method public static final synthetic access$getMLauncherLockedSwitch$p(Lcom/android/launcher/settings/LauncherSettingsFragment;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    return-object p0
.end method

.method public static final synthetic access$setCompactArrangementting$p(Lcom/android/launcher/settings/LauncherSettingsFragment;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    return-void
.end method

.method public static final synthetic access$stopLoading(Lcom/android/launcher/settings/LauncherSettingsFragment;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V

    return-void
.end method

.method public static final synthetic access$syncLauncherArrangementModeStatus(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda-12$lambda-11(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    return-void
.end method

.method private final changeStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_10a

    const/4 v0, 0x1

    const-string v1, "mContext"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch p2, :sswitch_data_118

    goto/16 :goto_117

    :sswitch_e
    :try_start_e
    const-string/jumbo p2, "update_dot_switch_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_19

    goto/16 :goto_117

    :cond_19
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_1f

    move p2, v2

    goto :goto_23

    :cond_1f
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    :goto_23
    if-nez p2, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_2f
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p2, :cond_37

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v3, p2

    :goto_38
    invoke-static {v3, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dot/AppUpdateDotManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dot/AppUpdateDotManager;->onAppUpdateDotChange(Z)V

    goto/16 :goto_117

    :sswitch_48
    const-string p2, "is_launcher_layout_locked"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    goto/16 :goto_117

    :cond_52
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_58

    move p2, v2

    goto :goto_5c

    :cond_58
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    :goto_5c
    if-nez p2, :cond_5f

    goto :goto_60

    :cond_5f
    move v0, v2

    :goto_60
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_65

    goto :goto_68

    :cond_65
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_68
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_70

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_71

    :cond_70
    move-object v3, p0

    :goto_71
    invoke-static {v3, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_117

    :sswitch_76
    const-string p2, "is_search_entry_enable"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto/16 :goto_117

    :cond_80
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_86

    move p1, v2

    goto :goto_8a

    :cond_86
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    :goto_8a
    if-nez p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v0, v2

    :goto_8e
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_93

    goto :goto_96

    :cond_93
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_96
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_a4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_a4
    if-nez p1, :cond_a8

    :goto_a6
    move-object p1, v3

    goto :goto_ca

    :cond_a8
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p1

    if-nez p1, :cond_af

    goto :goto_a6

    :cond_af
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p1

    if-nez p1, :cond_b6

    goto :goto_a6

    :cond_b6
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-nez p1, :cond_bd

    goto :goto_a6

    :cond_bd
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/pageindicators/OplusPageIndicator;

    if-nez p1, :cond_c6

    goto :goto_a6

    :cond_c6
    invoke-virtual {p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getSearchEntry()Lcom/android/launcher3/search/SearchEntry;

    move-result-object p1

    :goto_ca
    invoke-virtual {p2, v2, v0, p1}, Lcom/android/launcher3/search/SearchEntry$Companion;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_d5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d6

    :cond_d5
    move-object v3, p0

    :goto_d6
    invoke-static {v3}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/statistics/LauncherStatistics;->statsClickSearchEntrySwitch(Z)V

    goto :goto_117

    :sswitch_de
    const-string p2, "is_double_click_lock"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e7

    goto :goto_117

    :cond_e7
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_ed

    move p2, v2

    goto :goto_f1

    :cond_ed
    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    :goto_f1
    if-nez p2, :cond_f4

    goto :goto_f5

    :cond_f4
    move v0, v2

    :goto_f5
    iget-object p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p2, :cond_fa

    goto :goto_fd

    :cond_fa
    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_fd
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_105

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_106

    :cond_105
    move-object v3, p0

    :goto_106
    invoke-static {v3, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_109} :catch_10a

    goto :goto_117

    :catch_10a
    move-exception p0

    const-string/jumbo p1, "setButtonStatus :"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSettingsFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_117
    return-void

    :sswitch_data_118
    .sparse-switch
        -0x15405525 -> :sswitch_de
        -0x13d5136e -> :sswitch_76
        0x5f4fde15 -> :sswitch_48
        0x6dc8dfb2 -> :sswitch_e
    .end sparse-switch
.end method

.method private final checkPreferenceEnable()V
    .registers 4

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_c

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v2, 0x0

    if-nez v0, :cond_19

    goto :goto_1c

    :cond_19
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_21

    goto :goto_24

    :cond_21
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :goto_24
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_29

    goto :goto_2c

    :cond_29
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_2c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_31

    goto :goto_4d

    :cond_31
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4d

    :cond_35
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_3a

    goto :goto_3d

    :cond_3a
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3d
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_42

    goto :goto_45

    :cond_42
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_45
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_4d
    return-void
.end method

.method public static synthetic d(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->stopLoading$lambda-23(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide$lambda-8$lambda-7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda-5(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference$lambda-17$lambda-16(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final generateBranchPreference$lambda-17$lambda-16(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1e

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1e
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->enableBranchSearchEnable(Landroid/content/Context;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private final getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;
    .registers 4

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1d

    array-length v1, p0

    if-le v1, p1, :cond_1d

    aget-object v0, p0, p1

    :cond_1d
    return-object v0
.end method

.method public static synthetic h(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda-13(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncLauncherArrangementModeStatus$lambda-22(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private final initBrowserNewsSwitch()V
    .registers 15

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_e0

    :cond_8
    const-string v1, "browser_news_switch"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_18
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    const v3, 0x7f12013a

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const-string v7, "BrowserUtils"

    const/4 v8, 0x0

    if-nez v6, :cond_2d

    const/4 v6, 0x0

    goto :goto_79

    :cond_2d
    const v9, 0x7f1203db

    const v10, 0x7f120139

    :try_start_33
    invoke-static {v9}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "app_feeds_slide_up_name"

    const-string/jumbo v13, "string"

    invoke-virtual {v11, v12, v13, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_4c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_4c} :catch_6b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_4c} :catch_60
    .catchall {:try_start_33 .. :try_end_4c} :catchall_5d

    if-eqz v7, :cond_57

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_55

    goto :goto_57

    :cond_55
    move v9, v8

    goto :goto_58

    :cond_57
    :goto_57
    move v9, v4

    :goto_58
    if-eqz v9, :cond_5b

    goto :goto_75

    :cond_5b
    move-object v6, v7

    goto :goto_79

    :catchall_5d
    move-exception p0

    goto/16 :goto_e1

    :catch_60
    move-exception v9

    :try_start_61
    const-string v11, "getBrowserNewsResource NotFoundException"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :catch_6b
    move-exception v9

    const-string v11, "getBrowserNewsResource NameNotFoundException"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_61 .. :try_end_75} :catchall_5d

    :goto_75
    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_79
    if-nez v6, :cond_7d

    const-string v6, ""

    :cond_7d
    aput-object v6, v5, v8

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/coui/appcompat/poplist/PopupListItem;

    const v3, 0x7f12013b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_bf

    :goto_ac
    add-int/lit8 v2, v8, 0x1

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    aput-object v3, v0, v8

    if-le v2, v1, :cond_bd

    goto :goto_bf

    :cond_bd
    move v8, v2

    goto :goto_ac

    :cond_bf
    :goto_bf
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_c4

    goto :goto_c7

    :cond_c4
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    :goto_c7
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_cc

    goto :goto_cf

    :cond_cc
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_cf
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_d4

    goto :goto_e0

    :cond_d4
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_e0
    return-void

    :goto_e1
    invoke-virtual {v6, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    throw p0
.end method

.method private static final initLayoutUpgradeGuide$lambda-8$lambda-7(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_10

    const-string p0, "mContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_10
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->showLayoutUpgradeGuidePage(Landroid/content/Context;Z)V

    return p1
.end method

.method private final initPreferences()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$1$1;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onCreatePreference(Landroidx/preference/PreferenceScreen;)V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v1, "initPreferences error = "

    const-string v2, "LauncherClient-ShelfService"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "launcher_category"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "launcher_mode"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_48

    goto :goto_51

    :cond_48
    new-instance v1, Lcom/android/launcher/settings/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_51
    const-string v0, "key_icon_fallen"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_5e

    goto :goto_67

    :cond_5e
    new-instance v1, Lcom/android/launcher/settings/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_67
    const-string v0, "key_dock_expand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_74

    goto :goto_7d

    :cond_74
    new-instance v1, Lcom/android/launcher/settings/e;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_7d
    const-string v0, "launcher_is_compact_arrangement"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_8a

    goto :goto_9c

    :cond_8a
    new-instance v1, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;

    invoke-direct {v1, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$initPreferences$6;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    iput-object v1, v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->f:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    iget-object v0, v0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v2, :cond_9c

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    :cond_9c
    :goto_9c
    const-string v0, "launcher_layout"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_a9

    goto :goto_b2

    :cond_a9
    new-instance v1, Lcom/android/launcher/settings/e;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_b2
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initBrowserNewsSwitch()V

    const-string v0, "launcher_locked"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_c2

    goto :goto_c5

    :cond_c2
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_c5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "launcher_slide_down"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_d6

    goto :goto_d9

    :cond_d6
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_d9
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "app_startup_anim_speed"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIMenuPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_ea

    goto :goto_ed

    :cond_ea
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_ed
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v0

    if-nez v0, :cond_fb

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v0

    if-eqz v0, :cond_105

    :cond_fb
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_100

    goto :goto_105

    :cond_100
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_105
    :goto_105
    const-string v0, "launcher_is_show_search_box"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIJumpPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_140

    sget-object v0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_140

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v1

    if-nez v1, :cond_140

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_12a

    goto :goto_131

    :cond_12a
    invoke-virtual {v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getMPreferenceTitle()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_131
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v0, :cond_136

    goto :goto_14d

    :cond_136
    new-instance v1, Lcom/android/launcher/settings/e;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_14d

    :cond_140
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherShowSearchBoxSwitch:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_14d
    const-string v0, "launcher_search_entry_enable"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v0

    if-nez v0, :cond_169

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_169
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_16e

    goto :goto_171

    :cond_16e
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_171
    const-string v0, "launcher_double_click_lock"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_17e

    goto :goto_181

    :cond_17e
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :goto_181
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "app_update_dot"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_1aa

    invoke-static {}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isSupportAppUpdateDot()Z

    move-result v0

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_19c

    goto :goto_1aa

    :cond_19c
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1aa

    :cond_1a0
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1a5

    goto :goto_1aa

    :cond_1a5
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1aa
    :goto_1aa
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initSlideDownState(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    return-void
.end method

.method private static final initPreferences$lambda-2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_23

    goto :goto_2c

    :cond_23
    const p1, 0x7f01003c

    const v0, 0x7f01003e

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2c
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda-3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_ICON_FALLEN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_20

    :cond_17
    const p1, 0x7f01003c

    const v0, 0x7f01003e

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda-4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.LAUNCHER_DOCK_EXPAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_17

    goto :goto_20

    :cond_17
    const p1, 0x7f01003c

    const v0, 0x7f01003e

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda-5(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_12

    return v0

    :cond_12
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_1c

    const-string p1, "mContext"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1c
    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    const-string v1, "LauncherSettingsFragment"

    if-eqz p1, :cond_2f

    const-string/jumbo p0, "super power mode not support change layout"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2f
    iget-boolean p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-eqz p0, :cond_3a

    const-string/jumbo p0, "switching icon auto fill, please wait..."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method private static final initPreferences$lambda-6(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 4

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    const-string v0, "mContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_12
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    return v1
.end method

.method private static final initRecommended$lambda-12(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 5

    const-string p2, "com.coloros.scenemode"

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intentToSimpleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {v0, p2}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->checkAppAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V

    new-instance p1, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-static {v0, p2, v1, p1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->getGrantDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    if-nez p1, :cond_2c

    goto :goto_45

    :cond_2c
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_45

    :cond_30
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    goto :goto_45

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSettingsFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method private static final initRecommended$lambda-12$lambda-10(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$intentToSimpleMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initRecommended$lambda-12$lambda-11(Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    return-void
.end method

.method private static final initRecommended$lambda-13(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 7

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$intentToCarouselWallpaper"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_40

    :catch_f
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "startActivity E: "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "LauncherSettingsFragment"

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez p2, :cond_40

    :try_start_24
    new-instance p2, Landroid/content/ComponentName;

    const-string v2, "com.heytap.pictorial"

    const-string v3, "com.heytap.pictorial.wallpaper.WallpaperActivity"

    invoke-direct {p2, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_40

    :catch_34
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private static final initRecommended$lambda-9(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    const-string/jumbo p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$intentToNavigation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_20

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "startActivity E: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSettingsFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method

.method private final initSlideDownState(Landroid/content/Context;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v3

    if-eqz v3, :cond_40

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_1f
    const-string v5, "com.oplus.leftscreen"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/util/PackageUtils$Companion;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    const v4, 0x7f12041e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    invoke-direct {v3, v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    iput-boolean v5, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v3

    if-eqz v3, :cond_71

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_50

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_50
    const-string v5, "com.coloros.assistantscreen"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/util/PackageUtils$Companion;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    new-instance v3, Lcom/coui/appcompat/poplist/PopupListItem;

    const v4, 0x7f120420

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    invoke-direct {v3, v4, v5}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    iput-boolean v5, v3, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_71
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/poplist/PopupListItem;

    const v5, 0x7f120472

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/coui/appcompat/poplist/PopupListItem;

    const v5, 0x7f120361

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Lcom/coui/appcompat/poplist/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    if-ltz v4, :cond_bb

    move v7, v5

    :goto_a8
    add-int/lit8 v8, v7, 0x1

    iget-object v9, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v9, v9, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    aput-object v9, v3, v7

    if-le v8, v4, :cond_b9

    goto :goto_bb

    :cond_b9
    move v7, v8

    goto :goto_a8

    :cond_bb
    :goto_bb
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_c0

    goto :goto_c3

    :cond_c0
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntries([Ljava/lang/CharSequence;)V

    :goto_c3
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_c8

    goto :goto_cb

    :cond_c8
    invoke-virtual {v4, v3}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_cb
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_d0

    goto :goto_dc

    :cond_d0
    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_dc
    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomSearchGlobalDisabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isCustomNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result p1

    const-string v7, "LauncherSettingsFragment"

    if-eqz v4, :cond_ea

    if-nez p1, :cond_f0

    :cond_ea
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSlideStatusBarAsDefault()Z

    move-result v8

    if-eqz v8, :cond_100

    :cond_f0
    const-string p1, "customize both search and notification disabled "

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_fa

    goto :goto_145

    :cond_fa
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_145

    :cond_100
    if-eqz v4, :cond_11b

    const-string p1, "customize search disabled "

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_10c

    goto :goto_10f

    :cond_10c
    invoke-virtual {p1, v5}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEnabled(Z)V

    :goto_10f
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_114

    goto :goto_145

    :cond_114
    sub-int/2addr v0, v6

    aget-object p1, v3, v0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    goto :goto_145

    :cond_11b
    if-eqz p1, :cond_145

    const-string p1, "customize notification disabled "

    invoke-static {v7, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_127

    goto :goto_12a

    :cond_127
    invoke-virtual {p1, v5}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setEnabled(Z)V

    :goto_12a
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_12f

    goto :goto_136

    :cond_12f
    add-int/lit8 v0, v0, -0x2

    aget-object v0, v3, v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_136
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_13e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_13f

    :cond_13e
    move-object v1, p0

    :goto_13f
    const/4 p0, 0x5

    const-string p1, "launcher_slide_down_type"

    invoke-static {v1, p1, p0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_145
    :goto_145
    return-void
.end method

.method public static synthetic j(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda-12$lambda-10(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda-9(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initRecommended$lambda-12(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda-6(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda-4(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda-3(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final onClickSlideDownPopMenuList(Ljava/lang/String;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "mContext"

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f12041e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-nez v3, :cond_2a

    return v4

    :cond_2a
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v3, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f120420

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideDownItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean v5, v5, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-nez v5, :cond_50

    return v4

    :cond_50
    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_58

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_58
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120361

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const/4 v0, 0x6

    goto :goto_7c

    :cond_6b
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v0, 0x4

    goto :goto_7c

    :cond_73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x7

    goto :goto_7c

    :cond_7b
    const/4 v0, 0x5

    :goto_7c
    iget-object v3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v3, :cond_81

    goto :goto_84

    :cond_81
    invoke-virtual {v3, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_84
    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result p1

    if-eqz p1, :cond_8d

    const-string p1, "launcher_slide_down_type_simple"

    goto :goto_8f

    :cond_8d
    const-string p1, "launcher_slide_down_type"

    :goto_8f
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_97

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_98

    :cond_97
    move-object v1, p0

    :goto_98
    invoke-static {v1, p1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0
.end method

.method private final onClickSlideUpPopMenuList(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    goto :goto_44

    :cond_8
    const v2, 0x7f12013b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    move p1, v1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "onClickSlideUpPopMenuList selelted:"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherSettingsFragment"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "disable_browser_news"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    invoke-virtual {v0, p1, v2}, Lcom/android/statistics/LauncherStatistics;->statEventBrowserNewsSwitchImmediate(ZI)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBrowserNewsSwitch()V

    :goto_44
    return v1
.end method

.method public static synthetic p(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences$lambda-2(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private final startActivitySafely(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "LauncherSettingsFragment"

    if-nez p1, :cond_b

    const-string/jumbo p0, "startActivitySafely: intent == null.."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    :try_start_b
    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsFragment;->VALUE_WALLPAPER_SETTING:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const v1, 0x8000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_24} :catch_25

    goto :goto_3e

    :catch_25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f1200b0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p0, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method private final stopLoading(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    iget-object p1, p1, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    :goto_6
    instance-of v0, p1, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_1b

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-boolean v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;->f:Z

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/android/launcher/guide/c;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher/guide/c;-><init>(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/CompoundButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

.method private static final stopLoading$lambda-23(Landroid/view/View;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->d()V

    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    return-void
.end method

.method private final supportCarouselWallpaper()Z
    .registers 6

    const-string v0, "LauncherSettingsFragment"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_b

    goto :goto_1b

    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_12

    goto :goto_1b

    :cond_12
    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

    const-string/jumbo v4, "method_wallpaper_entrance_show"

    invoke-virtual {p0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :goto_1b
    if-nez v2, :cond_1f

    move p0, v1

    goto :goto_25

    :cond_1f
    const-string p0, "is_wallpaper_entrance_show"

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_25
    const-string/jumbo v2, "supportCarouselWallpaper = "

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_35

    move v1, p0

    goto :goto_40

    :catch_35
    move-exception p0

    const-string/jumbo v2, "supportCarouselWallpaper call failed e = "

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return v1
.end method

.method private final syncLauncherArrangementModeStatus()V
    .registers 8

    const-string v0, "LauncherSettingsFragment"

    :try_start_2
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_d

    :cond_9
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    :goto_d
    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/Launcher;

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v3

    if-eqz v3, :cond_3a

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/keyguardservice/a;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Lcom/android/keyguardservice/a;-><init>(Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_43

    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    if-eqz v1, :cond_54

    new-instance p0, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;-><init>(Landroid/content/Context;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5b

    :cond_54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/launcher/layout/LayoutUtilsManager;->saveIsCompact(Landroid/content/Context;Z)V

    :goto_5b
    const-string/jumbo p0, "syncLauncherArrangementModeStatus isArrangement = "

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_69} :catch_6a

    goto :goto_75

    :catch_6a
    move-exception p0

    const-string/jumbo v1, "syncLauncherArrangementModeStatus,Exception :"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_75
    return-void
.end method

.method private static final syncLauncherArrangementModeStatus$lambda-22(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_14
    return-void
.end method

.method private final syncStatus(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_144

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "mContext"

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_152

    goto/16 :goto_151

    :sswitch_e
    :try_start_e
    const-string v0, "launcher_slide_down_type_simple"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto/16 :goto_151

    :sswitch_18
    const-string/jumbo v0, "update_dot_switch_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_151

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppUpdateDotPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_29

    goto/16 :goto_151

    :cond_29
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_31

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move-object v4, p0

    :goto_32
    invoke-static {v4, p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_151

    :sswitch_3b
    const-string v0, "is_launcher_layout_locked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_151

    :cond_45
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLockedSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_4b

    goto/16 :goto_151

    :cond_4b
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_53

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_54

    :cond_53
    move-object v4, p0

    :goto_54
    invoke-static {v4, p1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_151

    :sswitch_5d
    const-string v0, "layout_is_compact"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_151

    :cond_67
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherArrangementModeSwitch:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;

    if-nez v0, :cond_6d

    goto/16 :goto_151

    :cond_6d
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_75

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_76

    :cond_75
    move-object v4, p0

    :goto_76
    invoke-static {v4, p1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_151

    :sswitch_7f
    const-string v0, "is_search_entry_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto/16 :goto_151

    :cond_89
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherSearchEntryEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p1, :cond_8f

    goto/16 :goto_151

    :cond_8f
    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_99

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9a

    :cond_99
    move-object v4, p0

    :goto_9a
    invoke-virtual {v0, v4}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_151

    :sswitch_a3
    const-string v0, "is_double_click_lock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_151

    :cond_ad
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDoubleClickLockSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_b3

    goto/16 :goto_151

    :cond_b3
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_bb

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_bc

    :cond_bb
    move-object v4, p0

    :goto_bc
    invoke-static {v4, p1, v2}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_151

    :sswitch_c5
    const-string v0, "launcher_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cf

    goto/16 :goto_151

    :cond_cf
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p1, :cond_d7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_d8

    :cond_d7
    move-object v4, p1

    :goto_d8
    invoke-direct {p0, v4}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateSlideDownState(Landroid/content/Context;)V

    goto/16 :goto_151

    :sswitch_dd
    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e6

    goto :goto_151

    :cond_e6
    invoke-static {}, Lcom/android/launcher/UiConfig;->getDefaultLayout()[I

    move-result-object p1

    aget v0, p1, v2

    aget p1, p1, v1

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_f6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_f6
    const-string v2, "layout_cellcount_x"

    invoke-static {v1, v2, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_104

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_104
    const-string v2, "layout_cellcount_y"

    invoke-static {v1, v2, p1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u200e"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_11f

    goto :goto_126

    :cond_11f
    const v2, 0x7f1202b5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_126
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_151

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez p0, :cond_140

    goto :goto_151

    :cond_140
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_143} :catch_144

    goto :goto_151

    :catch_144
    move-exception p0

    const-string/jumbo p1, "syncShowDousyncButtonStatuson :"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSettingsFragment"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_151
    :goto_151
    return-void

    :sswitch_data_152
    .sparse-switch
        -0x422504d6 -> :sswitch_dd
        -0x2f4992f6 -> :sswitch_c5
        -0x15405525 -> :sswitch_a3
        -0x13d5136e -> :sswitch_7f
        0x3921c143 -> :sswitch_5d
        0x5f4fde15 -> :sswitch_3b
        0x6dc8dfb2 -> :sswitch_18
        0x7118e287 -> :sswitch_e
    .end sparse-switch
.end method

.method private final updateAnimSpeed()V
    .registers 7

    sget-object v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->isNotSupportSpeedModify()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v3

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sget-object v4, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v4

    if-eqz v4, :cond_24

    move v2, v3

    :cond_24
    if-nez v1, :cond_6b

    if-eqz v2, :cond_29

    goto :goto_6b

    :cond_29
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v4, "mContext"

    if-nez v1, :cond_34

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_34
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "setting_app_startup_anim_speed"

    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v5, :cond_47

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_48

    :cond_47
    move-object v2, v5

    :goto_48
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_51

    goto :goto_5e

    :cond_51
    iget-object v2, v1, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_5e

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_63

    goto :goto_75

    :cond_63
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    goto :goto_75

    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_70

    goto :goto_75

    :cond_70
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_75
    return-void
.end method

.method private final updateBrowserNewsSwitch()V
    .registers 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_65

    :cond_7
    invoke-static {v0}, Lo1/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5c

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_25

    goto :goto_28

    :cond_25
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_28
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mSlideUpItemList:Ljava/util/ArrayList;

    invoke-static {v0}, Lo1/e;->b(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :goto_3f
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v1, :cond_44

    goto :goto_47

    :cond_44
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :goto_47
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_4f
    const-string/jumbo p0, "updateBrowserNewsSwitch content:"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherSettingsFragment"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    :cond_5c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBrowserNewsSwitch:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_61

    goto :goto_65

    :cond_61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_65
    return-void
.end method

.method private final updateExpandDockEntry()V
    .registers 3

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateExpandDockEntry "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportDockerExpandDevice()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_13

    goto :goto_23

    :cond_13
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_23

    :cond_19
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1e

    goto :goto_23

    :cond_1e
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherDockExpandEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_23
    return-void
.end method

.method private final updateIconFallenEntry()V
    .registers 3

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateIconFallenEntry "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isSupportIconFallen:Z

    if-nez v0, :cond_12

    goto :goto_1d

    :cond_12
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_17

    goto :goto_27

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_27

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_22

    goto :goto_27

    :cond_22
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherIconFallenEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_27
    return-void
.end method

.method private final updateLauncherMode()V
    .registers 3

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result v1

    iput v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-nez v1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {v1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :cond_20
    :goto_20
    iget p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const-string/jumbo v0, "updateLauncherStateInfo onPostExecute mCurLauncherMode = "

    const-string v1, "LauncherSettingsFragment"

    invoke-static {p0, v0, v1}, Lcom/android/common/config/f;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateLauncherModeRelatedView()V
    .registers 3

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "updateLauncherModeRelatedView"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isLayout5x4()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isRemoveLayoutSettings()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_27

    :cond_1c
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_21

    goto :goto_31

    :cond_21
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_31

    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_2c

    goto :goto_31

    :cond_2c
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherLayoutEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_31
    return-void
.end method

.method private final updateLauncherStateInfo()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherMode()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherModeRelatedView()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateExpandDockEntry()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateAnimSpeed()V

    const-string v0, "layout"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "layout_is_compact"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_launcher_layout_locked"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_show_indicated_app_for_drawer_mode"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_add_app_to_workspace_for_drawer_mode"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_double_click_lock"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    const-string v0, "is_search_entry_enable"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "launcher_slide_down_type_simple"

    goto :goto_3d

    :cond_3b
    const-string v0, "launcher_slide_down_type"

    :goto_3d
    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isSupportAppUpdateDot()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "update_dot_switch_state"

    invoke-direct {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->syncStatus(Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->generateBranchPreference()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBrowserNewsSwitch()V

    return-void
.end method

.method private final updateSlideDownState(Landroid/content/Context;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "mContext"

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_18

    :cond_17
    move-object v0, v2

    :goto_18
    invoke-static {v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getSlideDownTypeWithCheck(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    const v2, 0x7f120472

    if-eq v0, v1, :cond_55

    const/4 v1, 0x5

    if-eq v0, v1, :cond_50

    const/4 v1, 0x6

    if-eq v0, v1, :cond_48

    const/4 v1, 0x7

    if-eq v0, v1, :cond_30

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_30
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsHiAssistantPullDownSupport()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsHiAssistantAppEnable:Z

    if-nez v0, :cond_3b

    goto :goto_43

    :cond_3b
    const v0, 0x7f12041e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_43
    :goto_43
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_48
    const v0, 0x7f120361

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_50
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_55
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_68

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsShelfAppEnable:Z

    if-nez v0, :cond_60

    goto :goto_68

    :cond_60
    const v0, 0x7f120420

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6c

    :cond_68
    :goto_68
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6c
    const-string v0, "gyh, customize notification:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSettingsFragment"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_7c

    goto :goto_7f

    :cond_7c
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    :goto_7f
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v0, :cond_84

    goto :goto_87

    :cond_84
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :goto_87
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLaucherSlideListPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p0, :cond_8c

    goto :goto_8f

    :cond_8c
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_8f
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final generateBranchPreference()V
    .registers 3

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/android/common/config/VersionInfo;->isVodafoneCustomizer()Z

    move-result v0

    if-eqz v0, :cond_56

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v0, :cond_4b

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const v1, 0x7f1204c4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "global_search_setting_entrance_preference_vodafone"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_3a

    const-string v1, "mContext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3a
    invoke-static {v1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v1, Lcom/oplus/settingsdynamic/a;

    invoke-direct {v1, v0, p0}, Lcom/oplus/settingsdynamic/a;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    :cond_4b
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_50

    goto :goto_62

    :cond_50
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_62

    :cond_56
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchPreferenceForRLM:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz v0, :cond_62

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_5f

    goto :goto_62

    :cond_5f
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_62
    :goto_62
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getActionbarTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final initLayoutUpgradeGuide()V
    .registers 6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "launcher_layout_upgrade_guide_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    :goto_11
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v4

    if-eqz v4, :cond_66

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-nez v0, :cond_5c

    new-instance v0, Lcom/coui/appcompat/preference/COUIPreference;

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v4, :cond_29

    const-string v4, "mContext"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_29
    invoke-direct {v0, v4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f0d01a7

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOrder(I)V

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4a

    const v1, 0x7f1202b8

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_51

    :cond_4a
    const v1, 0x7f120563

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_51
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/launcher/settings/e;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher/settings/e;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_5c
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_83

    :cond_66
    invoke-static {}, Lcom/android/launcher/guide/layoutupgrade/LayoutUpgradeSwitchManager;->isUsingOldLayout()Z

    move-result v1

    if-nez v1, :cond_83

    if-eqz v0, :cond_83

    const-string v0, "LauncherSettingsFragment"

    const-string/jumbo v1, "remove layout upgrade guide preference"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_83

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLayoutUpgradeGuidePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_83
    :goto_83
    return-void
.end method

.method public final initRecommended()V
    .registers 11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "bottom_recommended"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    if-eqz v0, :cond_10d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.oplus.settings.OplusSettingsActivity$NavigationBarSettingsActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "oplus.intent.action.NAVIGATION_BAR_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v3, 0x7f120515

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher/settings/f;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/android/launcher/settings/f;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v2, v3, v4}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportSimpleModeLauncher()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "mContext"

    if-eqz v1, :cond_82

    const-string v1, "com.coloros.scenemode"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_82

    sget-object v6, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v7, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v7, :cond_5d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_5d
    const-string/jumbo v8, "oplus.intent.action.SIMPLE_MODE_ANIM"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v7, 0x7f1202a7

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/launcher/settings/f;

    invoke-direct {v8, p0, v6, v2}, Lcom/android/launcher/settings/f;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v1, v7, v8}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_8c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_8c
    const-string v7, "android.intent.action.VIEW"

    const-string v8, "com.heytap.pictorial"

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v9, "com.heytap.pictorial.wallpaper.ui.GUIDE_ACTION"

    if-nez v6, :cond_a7

    iget-object v6, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez v6, :cond_a0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a1

    :cond_a0
    move-object v3, v6

    :goto_a1
    invoke-virtual {v1, v3, v9, v8}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f6

    :cond_a7
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->supportCarouselWallpaper()Z

    move-result v1

    if-eqz v1, :cond_f6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v3, :cond_c4

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.heytap.pictorial.activities.CarouselWallpapersActivity"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d1

    :cond_c4
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.heytap.pictorial.wallpaper.WallPaperActivity"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_d1
    const-string/jumbo v3, "wallpaper_open_from_key"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "is_slide_view_to_setting_key"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsFragment;->URI_CAROUSEL_WALLPAPER:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v3, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;

    const v4, 0x7f1202cd

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/launcher/settings/f;

    const/4 v7, 0x2

    invoke-direct {v6, p0, v1, v7}, Lcom/android/launcher/settings/f;-><init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V

    invoke-direct {v3, v4, v6}, Lcom/coui/appcompat/preference/COUIRecommendedPreference$RecommendedEntity;-><init>(Ljava/lang/String;Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f6
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mRecommendedPreference:Lcom/coui/appcompat/preference/COUIRecommendedPreference;

    if-nez p0, :cond_fb

    goto :goto_10d

    :cond_fb
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_10d

    :cond_105
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIRecommendedPreference;->a:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_10d
    :goto_10d
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "LauncherSettingsFragment"

    if-nez p1, :cond_f

    const-string/jumbo p0, "onCreate activity == null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string/jumbo p0, "onCreate intent == null"

    invoke-static {p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportAod()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAodSupport:Z

    const p2, 0x7f15001e

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initPreferences()V

    const-string p2, "key_from"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFrom:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    const-string/jumbo p1, "recyclerView"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0558

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-nez p2, :cond_15

    return-object p1

    :cond_15
    const-string/jumbo v0, "savedInstanceState:"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "LauncherSettingsFragment"

    invoke-static {v0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_42

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_30

    move-object p3, v1

    goto :goto_34

    :cond_30
    invoke-virtual {p3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    :goto_34
    const/4 v2, 0x0

    const-string v3, ":settings:oplus_from_main_page"

    invoke-static {p3, v3, v2}, Lcom/oplus/statistics/util/IntentUtils;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    const-string v2, "fromMainPage:"

    invoke-static {p3, v2, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_42
    iget-boolean p3, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mFromMainPage:Z

    if-eqz p3, :cond_50

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p3

    if-eqz p3, :cond_50

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5c

    :cond_50
    invoke-virtual {p2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_5c

    const p3, 0x7f08045c

    invoke-virtual {p2, p3}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(I)V

    :cond_5c
    :goto_5c
    sget-object p2, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {p2}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p2

    if-nez p2, :cond_65

    goto :goto_68

    :cond_65
    invoke-virtual {p2, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :goto_68
    return-object p1
.end method

.method public onDestroy()V
    .registers 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-nez v1, :cond_a

    move-object v1, v0

    goto :goto_15

    :cond_a
    invoke-virtual {v1}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onDestroyPreference()V

    sget-object v1, Ly2/p;->a:Ly2/p;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    goto :goto_15

    :catchall_10
    move-exception v1

    invoke-static {v1}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_15
    invoke-static {v1}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_23

    const-string/jumbo v2, "onDestroy: exception: "

    const-string v3, "LauncherSettingsFragment"

    invoke-static {v1, v2, v3}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    if-nez v1, :cond_28

    goto :goto_2b

    :cond_28
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_2b
    iput-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mShowingDialog:Landroid/app/Dialog;

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_39

    :cond_36
    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :goto_39
    return-void
.end method

.method public onFoldStateChange()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateIconFallenEntry()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    const-string/jumbo v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onPreferenceChange, key: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherSettingsFragment"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "launcher_locked"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->isCompactArrangementting:Z

    if-nez v0, :cond_34

    const-string p1, "is_launcher_layout_locked"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    goto/16 :goto_d3

    :cond_34
    const-string v0, "app_startup_anim_speed"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    sget-object p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->Companion:Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    if-nez v0, :cond_48

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v1}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;->parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->getAppStartupAnimSpeedStatusText(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez v4, :cond_59

    goto :goto_66

    :cond_59
    iget-object v5, v4, Lcom/coui/appcompat/preference/COUIMenuPreference;->a:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_66

    aget-object p1, v5, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/preference/COUIMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_66
    :goto_66
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mAppStartupSpeedPreference:Lcom/coui/appcompat/preference/COUIMenuPreference;

    if-nez p1, :cond_6b

    goto :goto_6e

    :cond_6b
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;->setAssignment(Ljava/lang/CharSequence;)V

    :goto_6e
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mContext:Landroid/content/Context;

    if-nez p0, :cond_76

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_77

    :cond_76
    move-object v2, p0

    :goto_77
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "setting_app_startup_anim_speed"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d3

    :cond_86
    const-string v0, "launcher_slide_down"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickSlideDownPopMenuList(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_97
    const-string v0, "launcher_double_click_lock"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string p1, "is_double_click_lock"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_a5
    const-string v0, "app_update_dot"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string/jumbo p1, "update_dot_switch_state"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_b4
    const-string v0, "launcher_search_entry_enable"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string p1, "is_search_entry_enable"

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->changeStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :cond_c2
    const-string v0, "browser_news_switch"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->onClickSlideUpPopMenuList(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_d3
    :goto_d3
    return v1
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_14

    :cond_9
    invoke-virtual {v0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onResumePreference()V

    sget-object v0, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string/jumbo v1, "onResume: exception: "

    const-string v2, "LauncherSettingsFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateLauncherStateInfo()V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->checkPreferenceEnable()V

    :cond_2c
    iget-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    if-nez v0, :cond_39

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->updateBranchSearchPreference()V

    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mIsFirstOnResume:Z

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherModelEntry:Lcom/coui/appcompat/preference/COUIJumpPreference;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_4a

    goto :goto_4d

    :cond_4a
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4d
    :goto_4d
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isSurpportLayoutUpgrade()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment;->initLayoutUpgradeGuide()V

    :cond_58
    return-void
.end method

.method public onStop()V
    .registers 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    :try_start_3
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mDynamicController:Lcom/android/launcher/settings/LauncherSettingsDynamicController;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_14

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->onStopPreference()V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_14

    :catchall_f
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_14
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_22

    const-string/jumbo v0, "onStop: exception: "

    const-string v1, "LauncherSettingsFragment"

    invoke-static {p0, v0, v1}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    return-void
.end method

.method public final updateBranchSearchPreference()V
    .registers 6

    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    const-string v1, "LauncherSettingsFragment"

    const-string v2, "global_search_setting_entrance_preference"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2a

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_14

    move-object v0, v4

    goto :goto_18

    :cond_14
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    :goto_18
    if-nez v0, :cond_2a

    const-string v0, "add branch setting preference"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_24

    goto :goto_4f

    :cond_24
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4f

    :cond_2a
    iget v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mCurLauncherMode:I

    if-eq v0, v3, :cond_4f

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_34

    move-object v0, v4

    goto :goto_38

    :cond_34
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    :goto_38
    instance-of v2, v0, Landroidx/preference/Preference;

    if-eqz v2, :cond_3d

    move-object v4, v0

    :cond_3d
    if-eqz v4, :cond_4f

    const-string/jumbo v0, "remove branch setting preference"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mBranchSearchSettingPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherSettingsFragment;->mLauncherCategory:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_4c

    goto :goto_4f

    :cond_4c
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4f
    :goto_4f
    return-void
.end method
