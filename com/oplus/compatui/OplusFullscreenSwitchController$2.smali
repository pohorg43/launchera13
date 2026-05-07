.class Lcom/oplus/compatui/OplusFullscreenSwitchController$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compatui/OplusFullscreenSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    const-string v1, "onReceive action "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.wm.shell.compat_switch_restore_action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "foldable_display_switch_notification_target_id"

    if-eqz v0, :cond_48

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0, p2, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$300(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "_"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_97

    array-length p2, p1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_97

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$400(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    goto :goto_97

    :cond_48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.wm.shell.compat_switch_settings_action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const-string v0, "foldable_display_switch_notification_target_pkg"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const-string v3, "foldable_display_switch_notification_user_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COMPAT_SWITCH_SETTINGS_ACTION "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " identifier "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v1, p2, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$300(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;Landroid/content/Context;)V

    if-eqz v0, :cond_97

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$2;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p0, v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$500(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void
.end method
