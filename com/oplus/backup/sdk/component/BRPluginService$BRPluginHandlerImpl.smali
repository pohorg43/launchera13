.class Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/backup/sdk/component/BRPluginHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BRPluginHandlerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/backup/sdk/component/BRPluginService;


# direct methods
.method public constructor <init>(Lcom/oplus/backup/sdk/component/BRPluginService;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    const/4 p1, 0x4

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1000(Lcom/oplus/backup/sdk/component/BRPluginService;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public sendMsg(Landroid/content/Intent;Z)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    const/4 p1, 0x2

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1000(Lcom/oplus/backup/sdk/component/BRPluginService;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public updateProgress(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "args"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    const/4 p1, 0x3

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1000(Lcom/oplus/backup/sdk/component/BRPluginService;ILandroid/os/Bundle;Z)V

    return-void
.end method
