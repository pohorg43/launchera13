.class Lcom/android/launcher/powersave/SuperPowerModeManager$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/SuperPowerModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->lambda$onChange$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->lambda$onChange$1()V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$500(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->enterSuperPowerMode(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onChange$1()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$500(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$600(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const-string v0, "SuperPowerModeManager"

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    :try_start_5
    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$100(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$002(Lcom/android/launcher/powersave/SuperPowerModeManager;Z)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange , super_powersave_launcher_enter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", super_powersave_mode_state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$200(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInSuperPowerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-virtual {v2}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Z

    move-result p1

    if-eqz p1, :cond_74

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->clearDockerAppConnectData(Z)V

    sget-object v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;

    invoke-virtual {v1}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->getLastFinalShownExpandDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$300(Lcom/android/launcher/powersave/SuperPowerModeManager;)V

    iget-object v1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    new-instance v2, Lcom/android/launcher/powersave/a;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher/powersave/a;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;I)V

    const-wide/16 p0, 0xc8

    invoke-static {v1, v2, p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V

    goto :goto_95

    :cond_74
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$500(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeSuperPowerSaveModeDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    new-instance v1, Lcom/android/launcher/powersave/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher/powersave/a;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;I)V

    const-wide/16 v2, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$400(Lcom/android/launcher/powersave/SuperPowerModeManager;Ljava/lang/Runnable;J)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8d} :catch_8e

    goto :goto_95

    :catch_8e
    move-exception p0

    const-string/jumbo p1, "onChange , e = "

    invoke-static {p1, p0, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method
