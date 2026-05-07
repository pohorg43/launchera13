.class Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/component/BRPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvocationBRPluginHandlerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/backup/sdk/component/BRPluginService;


# direct methods
.method private constructor <init>(Lcom/oplus/backup/sdk/component/BRPluginService;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/backup/sdk/component/BRPluginService;Lcom/oplus/backup/sdk/component/BRPluginService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;-><init>(Lcom/oplus/backup/sdk/component/BRPluginService;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updateProgress"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-static {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1100(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->updateProgress(Landroid/os/Bundle;)V

    goto :goto_57

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-static {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1100(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->error(Landroid/os/Bundle;)V

    goto :goto_57

    :cond_35
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sendMsg"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    iget-object p0, p0, Lcom/oplus/backup/sdk/component/BRPluginService$InvocationBRPluginHandlerImpl;->this$0:Lcom/oplus/backup/sdk/component/BRPluginService;

    invoke-static {p0}, Lcom/oplus/backup/sdk/component/BRPluginService;->access$1100(Lcom/oplus/backup/sdk/component/BRPluginService;)Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;

    move-result-object p0

    aget-object p1, p3, v0

    check-cast p1, Landroid/content/Intent;

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/backup/sdk/component/BRPluginService$BRPluginHandlerImpl;->sendMsg(Landroid/content/Intent;Z)V

    :cond_57
    :goto_57
    const/4 p0, 0x0

    return-object p0
.end method
