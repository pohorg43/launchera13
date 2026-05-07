.class Lcom/android/launcher/operators/AppWidgetReloadHelper$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/operators/AppWidgetReloadHelper;->initReceiver(Lcom/android/launcher/bean/OperatorsWidgetData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

.field public final synthetic val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/AppWidgetReloadHelper;Lcom/android/launcher/bean/OperatorsWidgetData;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    iput-object p2, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->lambda$onReceive$0(Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "non_reboot_cota_widget_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-void

    :cond_1a
    new-instance v0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;-><init>(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, v1

    :goto_11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "AppWidgetReloadHelper"

    if-eqz v0, :cond_20

    const-string/jumbo p0, "packageadded broadcast received packageName return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-virtual {v0, p2}, Lcom/android/launcher/bean/OperatorsWidgetData;->carrierPackageIndex(Ljava/lang/String;)I

    move-result v6

    const/4 p2, -0x1

    if-ne v6, p2, :cond_30

    const-string/jumbo p0, "packageadded broadcast received packageName not in config return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    iget-object p2, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-static {p2}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->access$008(Lcom/android/launcher/operators/AppWidgetReloadHelper;)I

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isCotaReload()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p2

    iget-object v8, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    new-instance v0, Lcom/android/launcher/operators/a;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher/operators/a;-><init>(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->addUpdateListener(Lcom/android/launcher3/allapps/AllAppsStore$OnUpdateListener;)V

    goto :goto_63

    :cond_5d
    const-string/jumbo p2, "packageadded have no cota reload feature."

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_63
    iget-object p2, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-static {p2}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->access$000(Lcom/android/launcher/operators/AppWidgetReloadHelper;)I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    invoke-virtual {v0}, Lcom/android/launcher/bean/OperatorsWidgetData;->getOperatorPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p2, v0, :cond_83

    const-string/jumbo p2, "unregister non-reboot cota reload layout packageadded receiver: self-unregister"

    invoke-static {v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-static {p0, v1}, Lcom/android/launcher/operators/AppWidgetReloadHelper;->access$102(Lcom/android/launcher/operators/AppWidgetReloadHelper;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    :cond_83
    return-void
.end method
