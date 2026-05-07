.class Lcom/oplus/compatui/OplusFullscreenSwitchController$5;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compatui/OplusFullscreenSwitchController;->initAndRegisterFoldingModeChangeObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$800(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oplus_system_folding_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$902(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)I

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    const-string v1, "Current folding state "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v2}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$900(Lcom/oplus/compatui/OplusFullscreenSwitchController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$200(Lcom/oplus/compatui/OplusFullscreenSwitchController;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$1000(Lcom/oplus/compatui/OplusFullscreenSwitchController;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-virtual {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->clearSwitchFullscreenNotification()V

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$5;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-virtual {v0}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->dismissFullscreenDialog()V

    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
