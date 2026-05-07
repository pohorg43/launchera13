.class Lcom/android/launcher/filter/DeepProtectedAppsManager$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/DeepProtectedAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive -- action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepProtectedAppsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1204f6

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p0, "onReceive --  isInSuperPowerMode."

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3f
    const-string/jumbo v0, "oplus.intent.action.SHOW_DEEP_PROTECT_APPS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {p2, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->canShowHideApps(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5a

    iget-object p2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-static {p2, v2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->access$002(Lcom/android/launcher/filter/DeepProtectedAppsManager;Z)Z

    iget-object p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$1;->this$0:Lcom/android/launcher/filter/DeepProtectedAppsManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->showHideApps(Landroid/content/Context;)V

    :cond_5a
    return-void
.end method
