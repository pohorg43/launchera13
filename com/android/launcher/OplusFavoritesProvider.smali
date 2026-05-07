.class public Lcom/android/launcher/OplusFavoritesProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.launcher.OplusFavoritesProvider"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final EXTRAS_LOCATE_ITEMS:Ljava/lang/String; = "EXTRAS_LOCATE_ITEMS"

.field private static final EXTRAS_LOCATE_ITEMS_RESULT:Ljava/lang/String; = "EXTRAS_LOCATE_ITEMS_RESULT"

.field private static final EXTRA_APP_LAUNCH_ANIM_DURATION:Ljava/lang/String; = "app_launch_anim_duration"

.field private static final EXTRA_LAUNCHER_MODE:Ljava/lang/String; = "launcher_mode"

.field private static final EXTRA_LAUNCHER_TABLE:Ljava/lang/String; = "launcher_table"

.field private static final EXTRA_SLIDE_DOWN_TYPE:Ljava/lang/String; = "slide_down_type"

.field public static final IS_LAYOUT_LOCKED:Ljava/lang/String; = "is_layout_locked"

.field private static final METHOD_APP_LAUNCH_ANIM_DURATION_FOR_EVALUATION:Ljava/lang/String; = "app_launch_anim_duration_for_evaluation"

.field private static final METHOD_GET_LAUNCHER_MODE_SETTINGS:Ljava/lang/String; = "getLauncherModeSettings"

.field private static final METHOD_GET_SLIDE_DOWN_TYPE:Ljava/lang/String; = "get_slide_down_type"

.field public static final METHOD_IS_GET:Ljava/lang/String; = "method_is_get"

.field public static final METHOD_IS_LAYOUT_LOCKED:Ljava/lang/String; = "isLayoutLocked"

.field private static final METHOD_NOTIFY_BRANCH_SEARCH_QUIT_WITHOUT_CTA:Ljava/lang/String; = "notify_quit_without_cta"

.field private static final METHOD_QUERY_ITEM_INFO:Ljava/lang/String; = "query_item_info"

.field private static final METHOD_REQUEST_LOCATE_ITEM_INFO:Ljava/lang/String; = "request_locate_item_info"

.field private static final METHOD_SET_SLIDE_DOWN_TYPE:Ljava/lang/String; = "set_slide_down_type"

.field private static final METHOD_UPDATE_DOCKER_EXTRA_ITEM:Ljava/lang/String; = "update_docker_extra_item"

.field private static final METHOD_UPDATE_FOLDER_RECOMMEND_SWITCH:Ljava/lang/String; = "update_folder_recommend_switch"

.field private static final METHOD_UPDATE_RECOMMEND_APPS_INFO:Ljava/lang/String; = "update_folder_recommend_applist"

.field public static final TAG:Ljava/lang/String; = "OplusFavoritesProvider"

.field private static final UPDATE_DOCKER_IS_SUCCESS:Ljava/lang/String; = "update_docker_is_success"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.launcher.OplusFavoritesProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/OplusFavoritesProvider;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getSearchList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/launcher/locateaction/FindItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_54

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_54

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    new-instance v3, Landroid/content/ComponentName;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v4, v4, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v5, v5, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->getInstance()Lcom/android/launcher/backup/restore/AppRestoreGuardian;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher/backup/restore/AppRestoreGuardian;->isExistLauncher(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_45

    const/4 v3, 0x1

    goto :goto_46

    :cond_45
    move v3, v1

    :goto_46
    if-eqz v3, :cond_51

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/locateaction/FindItemInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_54
    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFavoritesProvider"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string/jumbo v2, "request_locate_item_info"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_2dc

    goto/16 :goto_c9

    :sswitch_27
    const-string/jumbo v0, "notify_quit_without_cta"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_c9

    :cond_32
    const/16 v4, 0xc

    goto/16 :goto_c9

    :sswitch_36
    const-string/jumbo v0, "update_docker_extra_item"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_c9

    :cond_41
    const/16 v4, 0xb

    goto/16 :goto_c9

    :sswitch_45
    const-string/jumbo v0, "update_folder_recommend_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_c9

    :cond_50
    const/16 v4, 0xa

    goto/16 :goto_c9

    :sswitch_54
    const-string/jumbo v0, "set_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_c9

    :cond_5f
    const/16 v4, 0x9

    goto/16 :goto_c9

    :sswitch_63
    const-string v0, "app_launch_anim_duration_for_evaluation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_c9

    :cond_6d
    const/16 v4, 0x8

    goto/16 :goto_c9

    :sswitch_71
    const-string v0, "establish_remote_animation_connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_c9

    :cond_7a
    const/4 v4, 0x7

    goto :goto_c9

    :sswitch_7c
    const-string v0, "isLayoutLocked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_c9

    :cond_85
    const/4 v4, 0x6

    goto :goto_c9

    :sswitch_87
    const-string v0, "getLauncherModeSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_c9

    :cond_90
    const/4 v4, 0x5

    goto :goto_c9

    :sswitch_92
    const-string/jumbo v0, "query_item_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto :goto_c9

    :cond_9c
    const/4 v4, 0x4

    goto :goto_c9

    :sswitch_9e
    const-string v0, "get_slide_down_type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_c9

    :cond_a7
    const/4 v4, 0x3

    goto :goto_c9

    :sswitch_a9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto :goto_c9

    :cond_b0
    const/4 v4, 0x2

    goto :goto_c9

    :sswitch_b2
    const-string/jumbo v0, "update_folder_recommend_applist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto :goto_c9

    :cond_bc
    const/4 v4, 0x1

    goto :goto_c9

    :sswitch_be
    const-string/jumbo v0, "replace_launcher_card_and_widget"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto :goto_c9

    :cond_c8
    move v4, v3

    :goto_c9
    const-string v0, "EXTRAS_LOCATE_ITEMS"

    const-string/jumbo v5, "slide_down_type"

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_312

    goto/16 :goto_2c0

    :pswitch_d4  #0xc
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->handleBranchSearchPermissionDenied(Landroid/content/Context;)V

    return-object v6

    :pswitch_dc  #0xb
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "METHOD_UPDATE_DOCKER_EXTRA_ITEM, caller:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",arg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Hotseat_expand"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p2}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandConfig;->isAvailableCallingHotseatExpand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "update_docker_is_success"

    if-nez v0, :cond_116

    invoke-static {p0, p2}, Lcom/oplus/quickstep/relay/RecentsRelayConfig;->isAvailableCalling(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_116

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_116
    invoke-static {p0, p2, p3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataParser;->assembleHotseatExpandDataFromArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :pswitch_11e  #0xa
    const-string v0, "METHOD_UPDATE_FOLDER_RECOMMEND_SWITCH: arg = "

    invoke-static {v0, p2, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2c0

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_2c0

    invoke-static {}, Lcom/android/common/util/PackageCompatUtils;->getMarketPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c0

    sget-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    invoke-virtual {v0, p2}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->updateFolderRecommendSwitch(Ljava/lang/String;)V

    goto/16 :goto_2c0

    :pswitch_13e  #0x9
    if-eqz p3, :cond_151

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_151

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    :cond_151
    return-object v6

    :pswitch_152  #0x8
    const-wide/16 p1, -0x1

    const-string v0, "app_launch_anim_duration"

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Evaluation duration: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p3, "key_evaluation_duration"

    invoke-static {p0, p3, p1, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    sput-wide p1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    return-object v6

    :pswitch_17a  #0x7
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/oplus/remoteanim/LauncherFavoritesProviderUtil;->establishRemoteAnimationConnection(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_183  #0x6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p2, "method_is_get"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "is_layout_locked"

    if-eqz p2, :cond_1a1

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c2

    :cond_1a1
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    sget-object p3, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->setLauncherLayoutLocked(Landroid/content/Context;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "call METHOD_IS_LAYOUT_LOCKED ,isLayoutLocked:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c2
    return-object p1

    :pswitch_1c3  #0x5
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getLauncherModeForString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "launcher_mode"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/OplusLauncherDbUtils;->getCurrentItemTable()Ljava/lang/String;

    move-result-object p0

    const-string p2, "launcher_table"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurrentLauncherModeType()I

    move-result p0

    const-string p2, "launcher_mode_vaule"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_1ec  #0x4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isFeatureItemLocateDisable()Z

    move-result p2

    if-nez p2, :cond_227

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/android/launcher/OplusFavoritesProvider$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/OplusFavoritesProvider$1;-><init>(Lcom/android/launcher/OplusFavoritesProvider;)V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/android/launcher/OplusFavoritesProvider;->getSearchList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "EXTRAS_LOCATE_ITEMS_RESULT"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_227
    return-object v6

    :pswitch_228  #0x3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->getOldSlideDownTypeForBreeno(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_239  #0x2
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFeatureItemLocateDisable()Z

    move-result p1

    if-nez p1, :cond_27f

    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.launcher"

    const-string v1, "com.android.launcher.Launcher"

    invoke-direct {p1, p2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p2

    new-instance v1, Lcom/android/launcher/locateaction/LocateEvent;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3, v2}, Lcom/android/launcher/locateaction/LocateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "android.intent.category.HOME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.DEFAULT"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.LAUNCHER_APP"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_27f
    return-object v6

    :pswitch_280  #0x1
    const-string p0, "METHOD_UPDATE_RECOMMEND_APPS_INFO: arg = "

    invoke-static {p0, p2, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_29c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p0

    if-eqz p0, :cond_29c

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    if-eqz p0, :cond_29c

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    if-eqz p0, :cond_29c

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusLauncherModel;->onMarketRecommendDataAdd(Ljava/lang/String;)V

    :cond_29c
    return-object v6

    :pswitch_29d  #0x0
    const-string p0, "METHOD_TRANSFORM_BETWEEN_CARD_AND_WIDGET, arg:"

    invoke-static {p0, p2, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_2ba

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p1

    if-eqz p1, :cond_2ba

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getAreaWidgetTransformViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->requestTransform(Ljava/lang/String;)V

    goto :goto_2bf

    :cond_2ba
    const-string p0, "METHOD_TRANSFORM_BETWEEN_CARD_AND_WIDGET faild, for launcher is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2bf
    return-object v6

    :cond_2c0
    :goto_2c0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v1

    :try_start_2cc
    const-string v2, "com.android.launcher.settings"

    invoke-virtual {v0, v2, p1, p2, p3}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_2d2
    .catchall {:try_start_2cc .. :try_end_2d2} :catchall_2d6

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-object p1

    :catchall_2d6
    move-exception p1

    invoke-virtual {p0, v1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    throw p1

    nop

    :sswitch_data_2dc
    .sparse-switch
        -0x74a08939 -> :sswitch_be
        -0x6babed1f -> :sswitch_b2
        -0x5cd8dea3 -> :sswitch_a9
        -0x41813f40 -> :sswitch_9e
        -0xd46b05d -> :sswitch_92
        0x755b71c -> :sswitch_87
        0x36d2851e -> :sswitch_7c
        0x4c15f6cc -> :sswitch_71
        0x6062043d -> :sswitch_63
        0x627b55cc -> :sswitch_54
        0x65f03a52 -> :sswitch_45
        0x6cad5f6b -> :sswitch_36
        0x73beb65f -> :sswitch_27
    .end sparse-switch

    :pswitch_data_312
    .packed-switch 0x0
        :pswitch_29d  #00000000
        :pswitch_280  #00000001
        :pswitch_239  #00000002
        :pswitch_228  #00000003
        :pswitch_1ec  #00000004
        :pswitch_1c3  #00000005
        :pswitch_183  #00000006
        :pswitch_17a  #00000007
        :pswitch_152  #00000008
        :pswitch_13e  #00000009
        :pswitch_11e  #0000000a
        :pswitch_dc  #0000000b
        :pswitch_d4  #0000000c
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 2

    const-string p0, "OplusFavoritesProvider"

    const-string/jumbo v0, "onCreate"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const-string/jumbo p1, "query uri:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusFavoritesProvider"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method
