.class public Lcom/oplus/compatui/OplusFullscreenSwitchController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;,
        Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;
    }
.end annotation


# static fields
.field private static final COMPAT_SWITCH_CHANNEL_ID:Ljava/lang/String; = "com.android.wm.shell"

.field private static final COMPAT_SWITCH_RESTORE_ACTION:Ljava/lang/String; = "com.android.wm.shell.compat_switch_restore_action"

.field private static final COMPAT_SWITCH_SETTINGS_ACTION:Ljava/lang/String; = "com.android.wm.shell.compat_switch_settings_action"

.field private static final NOTIFICATION_RESTART_IDENTIFIER:Ljava/lang/String; = "compat_fullscreen_switch_restart_identifier"

.field private static final NOTIFICATION_TARGET_ID:Ljava/lang/String; = "foldable_display_switch_notification_target_id"

.field private static final NOTIFICATION_TARGET_LABEL:Ljava/lang/String; = "foldable_display_switch_notification_target_label"

.field private static final NOTIFICATION_TARGET_PKG:Ljava/lang/String; = "foldable_display_switch_notification_target_pkg"

.field private static final NOTIFICATION_USER_ID:Ljava/lang/String; = "foldable_display_switch_notification_user_id"

.field private static final SP_KEY_SWITCH_TO_FULLSCREEN:Ljava/lang/String; = "compact_window_switch_to_fullscreen"

.field private static final TAG:Ljava/lang/String; = "OplusFSC"

.field private static final sDelayTime:J = 0x12cL


# instance fields
.field private mAppSwitchObserveRegistered:Z

.field private mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

.field private mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

.field private mContext:Landroid/content/Context;

.field private mExSystemServiceContext:Landroid/content/Context;

.field private volatile mFoldingMode:I

.field private mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFullScreenDialogPackageName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationId:I

.field private final mNotificationIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mUserId:I

.field private mUserObserver:Landroid/app/UserSwitchObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    invoke-direct {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;-><init>()V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserveRegistered:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mExSystemServiceContext:Landroid/content/Context;

    new-instance v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$1;

    invoke-direct {v0, p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController$1;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserObserver:Landroid/app/UserSwitchObserver;

    new-instance v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;

    invoke-direct {v0, p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;

    invoke-direct {v0, p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController$4;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->initAndRegisterFoldingModeChangeObserver()V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->registerUserSwitch()V

    iget p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->createExSystemServiceContext(I)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->lambda$createAndShowFullscreenDialog$0(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    return p1
.end method

.method public static synthetic access$100(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->createExSystemServiceContext(I)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->isFolded()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->restoreCompatFromFullscreen(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->startCompatibleActivityInSettings(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/compatui/OplusFullscreenSwitchController;)I
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFoldingMode:I

    return p0
.end method

.method public static synthetic access$902(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFoldingMode:I

    return p1
.end method

.method private cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_12

    const-string p0, "OplusFSC"

    const-string p1, "system server not ready"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "cancelSwitchFullscreenNotification "

    const-string v2, " "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5c

    invoke-direct {p0, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->unregisterReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->unregisterAppSwitchObserver()V

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->reset()V

    :cond_5c
    return-void
.end method

.method private createAndShowFullscreenDialog(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/android/launcher/x;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/x;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget v1, Lcom/android/wm/shell/R$style;->Theme_COUI_Main_Dark:I

    goto :goto_12

    :cond_10
    sget v1, Lcom/android/wm/shell/R$style;->Theme_COUI_Main:I

    :goto_12
    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/wm/shell/R$style;->COUIAlertDialog_Security:I

    sget v4, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p:I

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-direct {v4, v2, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v4, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->d()Lcom/coui/appcompat/theme/COUIThemeOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/theme/COUIThemeOverlay;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    invoke-direct {v2, v1}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->u:Z

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->v:Z

    sget v3, Lcom/android/wm/shell/R$string;->switch_fullscreen_action_yes:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->q(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    sget v3, Lcom/android/wm/shell/R$string;->switch_fullscreen_action_no:I

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->p(I)Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;

    iput-object v0, v2, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->x:Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder$OnSelectedListener;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getWindowType()I

    move-result v0

    iput v0, v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->n:I

    sget v0, Lcom/android/wm/shell/R$string;->switch_fullscreen_content:I

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->k(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v2}, Lcom/coui/appcompat/dialog/COUISecurityAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "SwitchToFullScreen_WMShell"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    const-string v0, "showSwitchFullscreenDialog "

    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private createExSystemServiceContext(I)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    const-string v1, "com.oplus.exsystemservice"

    const/4 v2, 0x4

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mExSystemServiceContext:Landroid/content/Context;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "OplusFSC"

    const-string v0, "createExSystemServiceContext error"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method private dismissFullscreenDialogOnly()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_20

    const-string v0, "dismissFullscreenDialog "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_20
    return-void
.end method

.method private getExSystemServiceContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mExSystemServiceContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    :goto_7
    return-object v0
.end method

.method private getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget v3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3f

    :cond_26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-virtual {p1, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    :cond_3f
    if-eqz v2, :cond_7e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_48

    goto :goto_7e

    :cond_48
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLaunchIntentForPackage intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    return-object p1

    :cond_7e
    :goto_7e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWindowType()I
    .registers 1

    const/16 p0, 0x7f6

    return p0
.end method

.method private static isAndroidSystemApp(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "com.oppo."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.realme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.oplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.oneplus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.heytap."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.nearme."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.oneoplus."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.coloros."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.coloros7."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "com.coloros8."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_61

    :cond_60
    const/4 v1, 0x1

    :cond_61
    return v1
.end method

.method private isFolded()Z
    .registers 1

    iget p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFoldingMode:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne v0, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private synthetic lambda$createAndShowFullscreenDialog$0(Ljava/lang/String;IZ)V
    .registers 7

    const/4 v0, -0x2

    const/4 v1, 0x1

    const-string v2, "compact_window_switch_to_fullscreen"

    if-eq p2, v0, :cond_1a

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    goto :goto_26

    :cond_a
    if-eqz p3, :cond_13

    iget-object p2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-static {p2, v2, p3, v1}, Lcom/oplus/compatui/OplusSharedPrefHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_13
    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->switchCompatToFullscreen(Ljava/lang/String;)V

    goto :goto_26

    :cond_1a
    if-eqz p3, :cond_23

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-static {p1, v2, p2, v1}, Lcom/oplus/compatui/OplusSharedPrefHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    :goto_26
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusFSC"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logD(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private logV(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/oplus/compatui/LogUtil;->getTagWithClassName()Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "OplusFSC"

    invoke-static {p0, p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-static {p1}, Lcom/oplus/compatui/LogUtil;->logV(Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method private queryCurrentCompactConfiguration(Ljava/lang/String;)Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;
    .registers 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Range"
        }
    .end annotation

    const-string v0, "custom_config_body"

    const-string v1, "status"

    const-string v2, "config"

    const-string v6, "package_name=? AND use_function=? AND installed=?"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3

    const/4 v3, 0x1

    const-string v4, "compactwindow"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "1"

    aput-object v4, v7, v3

    const/4 v15, 0x0

    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/oplus/compatui/FantasyWindowDBConstants;->CLIENT_URI:Landroid/net/Uri;

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_b5

    if-eqz v3, :cond_af

    :try_start_2e
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_af

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_af

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_46
    .catchall {:try_start_2e .. :try_end_46} :catchall_a3

    const-string v5, "\""

    const-string v6, "^"

    if-nez v4, :cond_50

    :try_start_4c
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_50
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6a

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_6a
    new-instance v4, Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;

    const/4 v11, 0x1

    const/4 v13, -0x1

    move-object v8, v4

    move-object/from16 v9, p1

    move v10, v1

    move-object v12, v2

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;)V
    :try_end_77
    .catchall {:try_start_4c .. :try_end_77} :catchall_a3

    :try_start_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryCurrentCompactConfiguration status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " config "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " customconfig "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_77 .. :try_end_9d} :catchall_9f

    move-object v15, v4

    goto :goto_af

    :catchall_9f
    move-exception v0

    move-object v1, v0

    move-object v15, v4

    goto :goto_a5

    :catchall_a3
    move-exception v0

    move-object v1, v0

    :goto_a5
    :try_start_a5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ae

    :catchall_a9
    move-exception v0

    move-object v2, v0

    :try_start_ab
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ae
    throw v1

    :cond_af
    :goto_af
    if-eqz v3, :cond_bd

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_b5

    goto :goto_bd

    :catch_b5
    move-exception v0

    const-string v1, "OplusFSC"

    const-string v2, "query config from db failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bd
    :goto_bd
    return-object v15
.end method

.method private reShowSwitchFullscreenDialogIfNeeded()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    const-string v1, "reShowSwitchFullscreenDialog "

    invoke-static {v1, v0}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialogOnly()V

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->createAndShowFullscreenDialog(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mReceiverRegistered:Z

    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.wm.shell.compat_switch_restore_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.wm.shell.compat_switch_settings_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "registerReceiver"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mReceiverRegistered:Z

    :cond_22
    return-void
.end method

.method private registerUserSwitch()V
    .registers 3

    const-string v0, "OplusFSC"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserObserver:Landroid/app/UserSwitchObserver;

    invoke-interface {v1, p0, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception p0

    const-string v1, "registerUserSwitchObserver error"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method private restartProcess(Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/content/Context;)V

    :try_start_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartProcess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sendNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/compatmode/OplusCompatModeManager;->getInstance()Lcom/oplus/compatmode/OplusCompatModeManager;

    move-result-object v0

    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/oplus/compatmode/OplusCompatModeManager;->restartProcessAsUser(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_49} :catch_4a

    goto :goto_61

    :catch_4a
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restart current package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusFSC"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_61
    return-void
.end method

.method private restoreCompatFromFullscreen(Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->queryCurrentCompactConfiguration(Ljava/lang/String;)Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;

    move-result-object v0

    const-string v1, "OplusFSC"

    if-nez v0, :cond_e

    const-string p0, "restoreFull compactEntity is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getCustomConfig()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "data_sources"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_2a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_cf

    if-nez v2, :cond_cf

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3b} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_3b} :catch_b5

    const-string v5, "compact_ratio"

    const/4 v6, 0x2

    const-string v7, "prev_ratio"

    if-nez v3, :cond_4e

    :try_start_42
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_4e
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/compatui/FantasyWindowDBConstants;->translateModeToRatio(I)Ljava/lang/String;

    move-result-object v0

    :goto_56
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "config"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v6, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v5, "compactwindow"

    aput-object v5, v2, v0

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/oplus/compatui/FantasyWindowDBConstants;->CLIENT_URI:Landroid/net/Uri;

    const-string v6, "package_name=? AND use_function=?"

    invoke-virtual {v0, v5, v4, v6, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFull update db "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " value "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " result "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    if-lez v0, :cond_cf

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->notifyFWConfigChanged(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->restartProcess(Ljava/lang/String;Z)V
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_b4} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_b4} :catch_b5

    goto :goto_cf

    :catch_b5
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFull update config error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error info "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_cf
    :goto_cf
    return-void
.end method

.method private startCompatibleActivityInSettings(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oplus.intent.action.settings.COMPATIBLE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "launch_extra_pkg_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    goto :goto_32

    :catch_2a
    move-exception p0

    const-string p1, "OplusFSC"

    const-string v0, "Start compact settings activity error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method private switchCompatToFullscreen(Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->queryCurrentCompactConfiguration(Ljava/lang/String;)Lcom/oplus/compatui/OplusFullscreenSwitchController$CompactWindowEntity;

    move-result-object v0

    const-string v1, "OplusFSC"

    if-nez v0, :cond_e

    const-string p0, "switchFull compactEntity is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getStatus()I

    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getConfig()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/compatui/Entity;->getCustomConfig()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "data_sources"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_2d} :catch_cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2d} :catch_cf

    const-string v5, "compact_ratio"

    const/4 v6, 0x0

    if-nez v4, :cond_58

    :try_start_32
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/compatui/FantasyWindowDBConstants;->translateRatioToMode(Ljava/lang/String;)I

    move-result v2

    const-string v7, "prev_ratio"

    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "config"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_7c

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "-1"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.33"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    const-string v2, "1.78"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    move v0, v6

    goto :goto_7d

    :cond_7c
    move v0, v4

    :goto_7d
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v6

    const-string v5, "compactwindow"

    aput-object v5, v2, v4

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oplus/compatui/FantasyWindowDBConstants;->CLIENT_URI:Landroid/net/Uri;

    const-string v7, "package_name=? AND use_function=?"

    invoke-virtual {v4, v5, v3, v7, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_99

    goto :goto_9a

    :cond_99
    move v6, v0

    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchFull update db "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " value "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " result "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sendNotification "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    if-lez v2, :cond_e9

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->notifyFWConfigChanged(Ljava/lang/String;)V

    invoke-direct {p0, p1, v6}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->restartProcess(Ljava/lang/String;Z)V
    :try_end_ce
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_ce} :catch_cf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_ce} :catch_cf

    goto :goto_e9

    :catch_cf
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchFull update config error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " error info "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e9
    :goto_e9
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    const-string v0, "unregisterReceiver"

    :try_start_2
    iget-boolean v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mReceiverRegistered:Z

    if-eqz v1, :cond_18

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mReceiverRegistered:Z

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception p0

    const-string p1, "OplusFSC"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public cancelSwitchFullscreenNotification(Ljava/lang/String;)V
    .registers 3

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .registers 5

    const-string v0, "_"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "foldable_display_switch_notification_user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public clearSwitchFullscreenNotification()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_14

    const-string p0, "OplusFSC"

    const-string v0, "system server not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "clearSwitchFullscreenNotification "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1e

    :cond_5a
    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->unregisterReceiver(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->unregisterAppSwitchObserver()V

    return-void
.end method

.method public dismissFullscreenDialog()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialogOnly()V

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->removeListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    return-void
.end method

.method public dismissFullscreenDialog(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    :cond_14
    return-void
.end method

.method public initAndRegisterFoldingModeChangeObserver()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oplus_system_folding_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFoldingMode:I

    const-string v0, "Initial folding state "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFoldingMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;

    iget-object v3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;-><init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Landroid/os/Handler;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public notifyFWConfigChanged(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "use_function"

    const-string v1, "compactwindow"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/oplus/compatui/FantasyWindowDBConstants;->BASE_URI:Landroid/net/Uri;

    const-string v2, "fantasy_window_status_updated"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "fantasy_window_config_updated"

    invoke-virtual {p0, v1, p1, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_36

    :catch_2f
    const-string p0, "OplusFSC"

    const-string p1, "set last full scan finished config failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method public onDisplayUiModeChange(II)V
    .registers 5

    const-string v0, "onDisplayUiModeChange "

    const-string v1, " -> "

    invoke-static {v0, p1, v1, p2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->reShowSwitchFullscreenDialogIfNeeded()V

    return-void
.end method

.method public onFinishRecents(Ljava/lang/String;)V
    .registers 4

    const-string v0, "onFinishRecents "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    iget-object v0, v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    iget-object v0, v0, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppWaitForFull:Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    iget-boolean v0, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    if-nez v0, :cond_39

    iget-object p1, p1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->cancelSwitchFullscreenNotification(Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public onStartRecents()V
    .registers 2

    const-string v0, "onStartRecents"

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    return-void
.end method

.method public registerAppSwitchObserver(Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserveRegistered:Z

    if-nez v0, :cond_3b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-direct {v1}, Lcom/oplus/app/OplusAppSwitchConfig;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/app/OplusAppSwitchConfig;->addAppConfig(ILjava/util/List;)V

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v0, v2, v3}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v0, v2, v3, v1}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserveRegistered:Z

    const-string v0, "registerAppSwitchObserver "

    invoke-static {v0, p1}, Landroidx/appcompat/view/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public sendSwitchFullscreenNotification(Ljava/lang/String;)V
    .registers 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cc

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_1cc

    :cond_e
    iget v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    :try_start_10
    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_26} :catch_56

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_6d

    :try_start_2a
    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "oplus_app_split"

    const-string v4, "integer"

    const-string v5, "oplus"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_53} :catch_54

    goto :goto_6d

    :catch_54
    move-exception v2

    goto :goto_59

    :catch_56
    move-exception v1

    move-object v2, v1

    move-object v1, p1

    :goto_59
    const-string v3, "getNotificationInfo error "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendNotification pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " label "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_b9

    const-string p0, "OplusFSC"

    const-string p1, "system server not ready"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b9
    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wm/shell/R$string;->full_screen_ex_title:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    const-string v6, "com.android.wm.shell"

    invoke-direct {v4, v6, v1, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v6, Lcom/android/wm/shell/R$drawable;->ic_foldable_switch_noti:I

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/wm/shell/R$string;->full_screen_ex_content_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/wm/shell/R$string;->full_screen_ex_content_text:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.wm.shell.compat_switch_restore_action"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.wm.shell.compat_switch_settings_action"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "foldable_display_switch_notification_target_id"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "foldable_display_switch_notification_target_pkg"

    invoke-virtual {v8, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1f

    if-lt p1, v9, :cond_14e

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    const/high16 v10, 0x4000000

    invoke-static {p1, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v7, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    invoke-static {v7, v9, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_160

    :cond_14e
    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    const/high16 v10, 0x40000000  # 2.0f

    invoke-static {p1, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v7, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    invoke-static {v7, v9, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    :goto_160
    new-instance v8, Landroid/app/Notification$Action;

    iget-object v9, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/wm/shell/R$string;->full_screen_ex_restore:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x1080093

    invoke-direct {v8, v10, v9, p1}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance p1, Landroid/app/Notification$Action;

    iget-object v8, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/wm/shell/R$string;->full_screen_ex_settings:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v10, v8, v7}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v8, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {p1, v9, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_198

    move v6, v3

    :cond_198
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    if-eqz v6, :cond_1a9

    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.substName"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ae

    :cond_1a9
    const-string v1, "not have the permisson: android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-direct {p0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    :goto_1ae
    iget-object v1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "force_heads_up"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationIdMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mNotificationId:I

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v1, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    iget-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->registerReceiver(Landroid/content/Context;)V

    :cond_1cc
    :goto_1cc
    return-void
.end method

.method public showSwitchFullscreenDialog(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->isFolded()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3d

    :cond_d
    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mFullScreenDialogPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p1, "showSwitchFullscreenDialog already exist!"

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    return-void

    :cond_1f
    invoke-virtual {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mUserId:I

    const/4 v2, 0x0

    const-string v3, "compact_window_switch_to_fullscreen"

    invoke-static {v0, v3, v1, v2}, Lcom/oplus/compatui/OplusSharedPrefHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->switchCompatToFullscreen(Ljava/lang/String;)V

    return-void

    :cond_33
    invoke-direct {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->createAndShowFullscreenDialog(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->getInstance()Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver;->addListener(Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public unregisterAppSwitchObserver()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserveRegistered:Z

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/oplus/app/OplusAppSwitchManager;->getInstance()Lcom/oplus/app/OplusAppSwitchManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->getExSystemServiceContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserver:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController;->mAppSwitchObserveRegistered:Z

    const-string v0, "unregisterAppSwitchObserver "

    invoke-direct {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->logD(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
