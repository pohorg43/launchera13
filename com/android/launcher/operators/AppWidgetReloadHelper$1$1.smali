.class Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->lambda$onReceive$0(Landroid/content/Context;ILcom/android/launcher3/LauncherModel;Lcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

.field public final synthetic val$pkgIndex:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/AppWidgetReloadHelper$1;Landroid/content/Context;ILcom/android/launcher/bean/OperatorsWidgetData;Lcom/android/launcher3/Launcher;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->this$1:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

    iput-object p2, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$pkgIndex:I

    iput-object p4, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    iput-object p5, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;Landroid/content/Context;Lcom/android/launcher/bean/OperatorsWidgetData;ILcom/android/launcher3/Launcher;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->lambda$execute$0(Landroid/content/Context;Lcom/android/launcher/bean/OperatorsWidgetData;ILcom/android/launcher3/Launcher;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Landroid/content/Context;Lcom/android/launcher/bean/OperatorsWidgetData;ILcom/android/launcher3/Launcher;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 7

    const-string p5, "AppWidgetReloadHelper"

    const-string/jumbo v0, "packageadded broadcast received widget add loading model"

    invoke-static {p5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher/bean/OperatorsWidgetData;->getOperatorPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher/bean/OperatorsWidgetData;->getOperatorWidgetNames()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "requestAddWidget"

    invoke-static {p1, p3, p2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    new-instance p1, Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;

    iget-object p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->this$1:Lcom/android/launcher/operators/AppWidgetReloadHelper$1;

    iget-object p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-direct {p1, p0, p4}, Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;-><init>(Lcom/android/launcher/operators/AppWidgetReloadHelper;Lcom/android/launcher3/Launcher;)V

    const/4 p0, 0x1

    const-wide/16 p2, 0xbb8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .registers 10

    iget-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$context:Landroid/content/Context;

    const-string/jumbo p2, "non_reboot_cota_widget_loaded"

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$pkgIndex:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$context:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$pkgIndex:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$operatorsWidgetData:Lcom/android/launcher/bean/OperatorsWidgetData;

    iget v4, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$pkgIndex:I

    iget-object v5, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;->val$launcher:Lcom/android/launcher3/Launcher;

    new-instance p1, Lcom/android/launcher/operators/b;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/operators/b;-><init>(Lcom/android/launcher/operators/AppWidgetReloadHelper$1$1;Landroid/content/Context;Lcom/android/launcher/bean/OperatorsWidgetData;ILcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    return-void
.end method
