.class Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;
.super Lcom/oplus/ovoiceskillservice/SkillListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->registerActionExecutionCallback(Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

.field public final synthetic val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/SkillListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionExecution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const/4 v2, 0x2

    aput-object p3, v0, v2

    const-string v2, "onActionExecution: [%s][%s][%s]"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OVSS.OVoiceSkillProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$000(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    move-result-object v0

    sget-object v3, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->CONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    if-eq v0, v3, :cond_41

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "mStatus != ConnectStatus.CONNECTED, reconnect"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$200(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$800(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->initialize(Landroid/content/Context;Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;)Z

    :cond_41
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    new-instance v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;

    invoke-direct {v1, p0, p3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;-><init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;Ljava/lang/String;)V

    invoke-static {v0, p1, p2, v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$900(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z

    move-result p0

    if-eqz p0, :cond_53

    const-string p0, "newSkillSessionById succeed."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "OVSS.OVoiceSkillProxy"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->cancel()V

    :cond_12
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    const-string v3, "onValueChanged: [%s][%s][%s]"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OVSS.OVoiceSkillProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-virtual {v0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;

    move-result-object v0

    if-nez v0, :cond_2a

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "invalid result, ignore. sessionCode[%s]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {p0, v0, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    return-void
.end method
