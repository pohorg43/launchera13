.class Lcom/oplus/compatui/OplusFullscreenSwitchController$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compatui/OplusFullscreenSwitchController;->restartProcess(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

.field public final synthetic val$appName:Ljava/lang/String;

.field public final synthetic val$sendNotification:Z


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;Z)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iput-object p2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$appName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$sendNotification:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$600(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-boolean v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$sendNotification:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$appName:Ljava/lang/String;

    iput-object v2, v1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->first:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$700(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oplus/compatui/OplusFullscreenSwitchController$Pair;->second:Z

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->registerAppSwitchObserver(Ljava/lang/String;)V

    :cond_30
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "compat_fullscreen_switch_restart_identifier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$800(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$sendNotification:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$3;->val$appName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->sendSwitchFullscreenNotification(Ljava/lang/String;)V

    :cond_50
    return-void
.end method
