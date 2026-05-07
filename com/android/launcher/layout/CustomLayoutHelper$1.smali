.class Lcom/android/launcher/layout/CustomLayoutHelper$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/CustomLayoutHelper;->registerCotaNonRebootPackageScannedFinishReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CustomLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/layout/CustomLayoutHelper$1;->lambda$onReceive$0(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "create_empty_db"

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    iget-object p2, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$002(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result p2

    const/4 v1, 0x0

    const-string v2, "CustomLayoutHelper"

    if-eqz p2, :cond_4a

    const-string p2, "broadcast received to reload cota layout."

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->getCarrierWidget()Ljava/util/List;

    move-result-object p2

    new-instance v3, Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-direct {v3, p2}, Lcom/android/launcher/bean/OperatorsWidgetData;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/android/launcher/bean/OperatorsWidgetData;->hasOperatorWidgetConfig()Z

    move-result p2

    if-eqz p2, :cond_2c

    invoke-static {}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->getInstance()Lcom/android/launcher/operators/AppWidgetReloadHelper;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->registerPackageAddedReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V

    :cond_2c
    const-string/jumbo p2, "non_reboot_cota_layout_reloaded"

    invoke-static {p1, p2, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p2

    new-instance v3, Lcom/android/launcher/layout/c;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/launcher/layout/c;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V

    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)V

    iget-object p2, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p2, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$102(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z

    goto :goto_68

    :cond_4a
    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isExtraWorkspaceloadForCotaNotReboot()Z

    move-result p2

    if-eqz p2, :cond_63

    const-string/jumbo p2, "non_reboot_cota_extra_workspace_loaded"

    invoke-static {p1, p2, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-virtual {p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->onExtraWorkspacePathChanged()V

    const-string p2, "load extra workspace for cota non reboot."

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_63
    const-string p2, "have no cota reload feature."

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    const-string/jumbo p2, "unregister non-reboot cota reload layout receiver: self-unregister"

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$202(Lcom/android/launcher/layout/CustomLayoutHelper;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$1;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {p0, v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$002(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z

    return-void
.end method
