.class public Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;,
        Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
    }
.end annotation


# static fields
.field public static final ACTION_DOCKER_EXPEND_ITEM_CLICK:Ljava/lang/String; = "launcher_docker_expend_item_click"

.field private static final APPID_SPLIT_SCREEN_TAG:Ljava/lang/String; = "20232"

.field private static final APPLICATION_SPLIT_SCREEN_TAG:Ljava/lang/String; = "20232001"

.field private static final EVENT_ID_ENTER_VERTICAL_SPLIT_SCREEN:Ljava/lang/String; = "enter_vertical_split_screen"

.field private static final EVENT_ID_SPLIT_SCREEN_BAR:Ljava/lang/String; = "split_screen_bar"

.field private static final EVENT_ID_SPLIT_SCREEN_EXCHANGE_MENU:Ljava/lang/String; = "split_screen_exchange_menu"

.field private static final EVENT_ID_SPLIT_SCREEN_EXIT:Ljava/lang/String; = "split_screen_exit"

.field private static final EVENT_ID_SPLIT_SCREEN_LAUNCH:Ljava/lang/String; = "split_screen_launch"

.field private static final EVENT_ID_SPLIT_SCREEN_MENU_OPERATION:Ljava/lang/String; = "split_screen_menu_operation"

.field private static final EVENT_ID_SPLIT_SCREEN_RECOMMEND:Ljava/lang/String; = "split_screen_recommend"

.field private static final EVENT_ID_SPLIT_SCREEN_SETTING:Ljava/lang/String; = "split_screen_setting"

.field private static final EVENT_ID_SPLIT_SCREEN_UNDOCK_INFO:Ljava/lang/String; = "split_screen_undock_info"

.field private static final EVENT_ID_SPLIT_SCREEN_USAGES_INFO:Ljava/lang/String; = "split_screen_usages_info"

.field private static final EXIT_WITH_DRAGGING_SPLIT_LINE:I = 0x3

.field private static final EXIT_WITH_ENTER_UNDOCK_APP:I = 0x4

.field private static final EXIT_WITH_LONG_PRESS_TASK_BUTTON:I = 0x1

.field private static final EXIT_WITH_OTHER_TYPES:I = 0x5

.field private static final EXIT_WITH_SPLIT_SCREEN_MENU_CLOSE:I = 0x2

.field private static final EXIT_WITH_THREE_FINGERS:I = 0x0

.field public static final FULL_SCREEN_LAUNCH:I = 0x1

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_APP_SPLIT_SCREEN_SWITCHER:Ljava/lang/String; = "application_split_screen_switcher"

.field private static final KEY_BOTTOM_WINDOW_USAGE:Ljava/lang/String; = "bottom_window_usage"

.field private static final KEY_CLOSE_SPLIT_MENU:Ljava/lang/String; = "close_split_menu"

.field private static final KEY_DRAG_SPLIT_LINE:Ljava/lang/String; = "drag_split_line"

.field private static final KEY_EXIT_STYLE:Ljava/lang/String; = "exit_style"

.field private static final KEY_LAUNCH_STYLE:Ljava/lang/String; = "start_style"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_METHOD:Ljava/lang/String; = "method"

.field private static final KEY_NEXT_PKG:Ljava/lang/String; = "next_pkg"

.field private static final KEY_OPEN_SPLIT_MENU:Ljava/lang/String; = "open_split_menu"

.field private static final KEY_PKG:Ljava/lang/String; = "pkg"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final KEY_RECOMMEND_NEXT_PKG:Ljava/lang/String; = "next_pkg"

.field private static final KEY_RECOMMEND_PKG:Ljava/lang/String; = "pkg"

.field private static final KEY_SAVE_SPLIT_COMBINATION:Ljava/lang/String; = "save_split_combination"

.field private static final KEY_SPLIT_WINDOW_TOTAL_DURATION:Ljava/lang/String; = "split_window_total_duration"

.field private static final KEY_START_STYLE:Ljava/lang/String; = "start_style"

.field private static final KEY_SWITCH_SPLIT_SCREEN:Ljava/lang/String; = "switch_split_screen"

.field private static final KEY_THREE_FINGERS_SWITCHER:Ljava/lang/String; = "three_fingers_switcher"

.field private static final KEY_UP_WINDOW_USAGE:Ljava/lang/String; = "up_window_usage"

.field private static final LAUNCH_ILLEGAL:I = -0x1

.field private static final LAUNCH_WITH_LONG_PRESS_TASK_BUTTON:I = 0x2

.field private static final LAUNCH_WITH_MULTI_TASK_CARD_CLICK:I = 0x3

.field private static final LAUNCH_WITH_SIDEBAR_DRAGGING:I = 0x4

.field private static final LAUNCH_WITH_THREE_FINGERS:I = 0x1

.field public static final NO_LAUNCH:I = 0x0

.field private static final OPERATION_NO_TRIGGERED:I = 0x0

.field private static final OPERATION_TRIGGERED:I = 0x1

.field private static final SPLIT_SCREEN_SEPERATE_ELE:Ljava/lang/String; = "##"

.field private static final SPLIT_SCREEN_SEPERATE_KV:Ljava/lang/String; = "&&"

.field public static final SPLIT_SCREEN_STATICS_TAG:Ljava/lang/String; = "SplitScreeenStaticsUtils"

.field private static final SWITCHER_FROM_OFF_TO_ON:I = 0x1

.field private static final SWITCHER_FROM_ON_TO_OFF:I = 0x0

.field public static final TAG:Ljava/lang/String; = "StackDividerStatisticUtils"

.field private static final VALUE_ACTION_APPS:Ljava/lang/String; = "apps"

.field private static final VALUE_ACTION_BAR:Ljava/lang/String; = "bar"

.field private static final VALUE_ACTION_FULLSCREEN:Ljava/lang/String; = "fullscreen"

.field private static final VALUE_LOCATION_DOWN:Ljava/lang/String; = "down"

.field private static final VALUE_LOCATION_UP:Ljava/lang/String; = "up"

.field private static sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

.field private static sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-direct {v0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    new-instance v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-direct {v0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;-><init>()V

    sput-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityDismissingDockedStack(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitType(I)V

    invoke-static {p0}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getCurrentTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/splitscreen/OplusAmEncryptionUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSplitScreenMenuOperationInfo()Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    return-object v0
.end method

.method public static getSplitScreenUsagesInfo()Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;
    .registers 1

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    return-object v0
.end method

.method public static onDockedStackExistsChanged(Landroid/content/Context;Z)V
    .registers 6

    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_28

    sget-object p1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->hasInit()Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    div-long/2addr v2, v0

    sget-object p1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p1, v2, v3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsagesInfo(J)V

    sget-object p1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p1, v2, v3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    sget-object p1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p1, v2, v3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setSplitWindowTotalDuration(J)V

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenUsagesInfo(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenExited(Landroid/content/Context;)V

    goto :goto_65

    :cond_28
    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->hasInit()Z

    move-result p0

    if-eqz p0, :cond_31

    return-void

    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    div-long/2addr p0, v0

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setSplitWindowStartTime(J)V

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_42

    return-void

    :cond_42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusAppInfo;

    iget v2, v1, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_46

    iget-object v1, v1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_46

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_46

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v2, v1, p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_46

    :cond_65
    :goto_65
    return-void
.end method

.method public static onDockedStackMinimizedChanged(Landroid/content/Context;Z)V
    .registers 7

    const-wide/16 v0, 0x3e8

    if-nez p1, :cond_33

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    div-long/2addr p0, v0

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusAppInfo;

    iget v2, v1, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_14

    iget-object v1, v1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_14

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_14

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v2, v1, p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_14

    :cond_33
    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->getAllTopAppInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3a

    return-void

    :cond_3a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_75

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/app/OplusAppInfo;

    iget v2, p1, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3e

    iget-object v2, p1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3e

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3e

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$1000(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    iget-object p1, p1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$1100(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_3e

    :cond_75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    div-long/2addr p0, v0

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    :cond_7f
    return-void
.end method

.method public static onEnterForceVerticalSplit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "next_pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnterForceVerticalSplit(), eventID:enter_vertical_split_screen,pkg1="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",pkg2="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreeenStaticsUtils"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3a
    const-string p1, "20232"

    const-string p2, "20232001"

    const-string p3, "enter_vertical_split_screen"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_43
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "onEnterForceVerticalSplit no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public static onSplitScreenControlBar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "pkg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSplitScreenControlBar(), eventID:split_screen_bar,logMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreeenStaticsUtils"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_29
    const-string p1, "20232"

    const-string p2, "20232001"

    const-string v1, "split_screen_bar"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_32
    .catch Ljava/lang/NoSuchMethodError; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_3a

    :catch_33
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "onSplitScreenControlBar no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
.end method

.method public static onSplitScreenControlBarAppIconClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "allApps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "apps"

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenControlBar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_e
    invoke-static {p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenControlBar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public static onSplitScreenControlBarClicked(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "bar"

    invoke-static {p0, v0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenControlBar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onSplitScreenControlBarFullscreenClick(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const-string v0, "fullscreen"

    invoke-static {p0, v0, p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenControlBar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onSplitScreenExchangeMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    if-nez p3, :cond_5

    const-string p3, "up"

    goto :goto_d

    :cond_5
    const/4 v0, 0x1

    if-ne p3, v0, :cond_b

    const-string p3, "down"

    goto :goto_d

    :cond_b
    const-string p3, ""

    :goto_d
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "next_pkg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "location"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSplitScreenExchangeMenu(), eventID:split_screen_exchange_menu,logMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreeenStaticsUtils"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3f
    const-string p1, "20232"

    const-string p2, "20232001"

    const-string p3, "split_screen_exchange_menu"

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_48
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3f .. :try_end_48} :catch_49

    goto :goto_50

    :catch_49
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "onSplitScreenExchangeMenu no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_50
    return-void
.end method

.method public static onSplitScreenExited(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->getExitType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    const/4 v2, 0x5

    if-eq v1, v2, :cond_23

    const/16 v2, 0x8

    if-eq v1, v2, :cond_20

    const-string v1, "5"

    goto :goto_2e

    :cond_20
    const-string v1, "4"

    goto :goto_2e

    :cond_23
    const-string v1, "3"

    goto :goto_2e

    :cond_26
    const-string v1, "2"

    goto :goto_2e

    :cond_29
    const-string v1, "1"

    goto :goto_2e

    :cond_2c
    const-string v1, "0"

    :goto_2e
    const-string v2, "exit_style"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSplitScreenExited(), eventID:split_screen_exit,logMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitScreeenStaticsUtils"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_49
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_exit"

    invoke-static {p0, v1, v2, v3, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_52
    .catch Ljava/lang/NoSuchMethodError; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_5a

    :catch_53
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "OplusTrack no method onCommon!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitType(I)V

    return-void
.end method

.method public static onSplitScreenLaunched(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    const-string p1, "-1"

    goto :goto_1f

    :cond_14
    const-string p1, "4"

    goto :goto_1f

    :cond_17
    const-string p1, "3"

    goto :goto_1f

    :cond_1a
    const-string p1, "2"

    goto :goto_1f

    :cond_1d
    const-string p1, "1"

    :goto_1f
    const-string v1, "start_style"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplitScreenLaunched(), eventID:split_screen_launch,logMap:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SplitScreeenStaticsUtils"

    invoke-static {v1, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3a
    const-string p1, "20232"

    const-string v1, "20232001"

    const-string v2, "split_screen_launch"

    invoke-static {p0, p1, v1, v2, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_43
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3a .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "OplusTrack no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void
.end method

.method public static onSplitScreenMenuOperation(Landroid/content/Context;)V
    .registers 9

    sget-object v0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$000(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v0

    sget-object v1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$100(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v1

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$200(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v2

    sget-object v3, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$300(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v3

    sget-object v4, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v4}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$400(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)I

    move-result v4

    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v2, :cond_29

    if-nez v3, :cond_29

    if-nez v4, :cond_29

    return-void

    :cond_29
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "open_split_menu"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "close_split_menu"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "switch_split_screen"

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "drag_split_line"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-ne v4, v0, :cond_a8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$500(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$600(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save_split_combination"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSplitScreenMenuOperation(), eventID:split_screen_menu_operation,logMap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreeenStaticsUtils"

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_be
    const-string v0, "20232"

    const-string v1, "20232001"

    const-string v2, "split_screen_menu_operation"

    invoke-static {p0, v0, v1, v2, v5}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_c7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_be .. :try_end_c7} :catch_c8

    goto :goto_cf

    :catch_c8
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "OplusTrack no method onCommon!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cf
    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->access$700(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;)V

    return-void
.end method

.method public static onSplitScreenRecommend(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->getPackageNameHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "next_pkg"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSplitScreenRecommend(), eventID:split_screen_recommend,logMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreeenStaticsUtils"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2d
    const-string p1, "20232"

    const-string p2, "20232001"

    const-string v1, "split_screen_recommend"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_36
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_3e

    :catch_37
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "onSplitScreenRecommend no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
.end method

.method public static onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "pkg_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "start_style"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSplitScreenUndockInfo(), eventID:split_screen_undock_info,logMap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SplitScreeenStaticsUtils"

    invoke-static {p2, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_36
    const-string p1, "20232"

    const-string p2, "20232001"

    const-string v1, "split_screen_undock_info"

    invoke-static {p0, p1, p2, v1, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_3f
    .catch Ljava/lang/NoSuchMethodError; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_47

    :catch_40
    const-string p0, "StackDividerStatisticUtils"

    const-string p1, "OplusTrack no method onCommon!!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method

.method public static onSplitScreenUndockInfoWithTask(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_7

    :cond_6
    move-object p1, v0

    :goto_7
    if-eqz p1, :cond_b

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_b
    invoke-static {p0, v0, p2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->onSplitScreenUndockInfo(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static onSplitScreenUsagesInfo(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->getUpAppUsagesInfo()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->getBottomAppUsagesInfo()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {v3}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$800(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-string v6, ""

    if-nez v5, :cond_2c

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    return-void

    :cond_2c
    const-string v5, "up_window_usage"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bottom_window_usage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "split_window_total_duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSplitScreenUsagesInfo(), eventID:split_screen_usages_info,logMap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SplitScreeenStaticsUtils"

    invoke-static {v2, v1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_60
    const-string v1, "20232"

    const-string v2, "20232001"

    const-string v3, "split_screen_usages_info"

    invoke-static {p0, v1, v2, v3, v0}, Lcom/oplus/statistics/OplusTrack;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    :try_end_69
    .catch Ljava/lang/NoSuchMethodError; {:try_start_60 .. :try_end_69} :catch_6a

    goto :goto_71

    :catch_6a
    const-string p0, "StackDividerStatisticUtils"

    const-string v0, "OplusTrack no method onCommon!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$900(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)V

    return-void
.end method

.method public static setAppUsageStartTimeAndPkgName(ZLjava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    if-eqz p0, :cond_f

    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V

    goto :goto_14

    :cond_f
    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    :goto_14
    return-void
.end method

.method public static swapDockedStack(Landroid/content/Context;)V
    .registers 5

    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenMenuOperationInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenMenuOperationInfo;->setSwitchSplitScreenTriggered()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsagesInfo(J)V

    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesInfo(J)V

    sget-object p0, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {p0}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$1200(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-static {v2}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->access$1300(Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V

    sget-object v2, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils;->sSplitScreenUsagesInfo:Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;

    invoke-virtual {v2, p0, v0, v1}, Lcom/oplus/splitscreen/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V

    return-void
.end method
