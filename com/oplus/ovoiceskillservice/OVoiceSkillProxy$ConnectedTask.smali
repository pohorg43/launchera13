.class abstract Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;
.super Lcom/oplus/ovoiceskillservice/utils/ThreadTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ConnectedTask"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/utils/ThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public guard()Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;
    .registers 3

    const-string v0, "guard, status:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$000(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.OVoiceSkillProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$000(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->CONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    if-ne v0, v1, :cond_25

    sget-object p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;->ENTER:Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;

    return-object p0

    :cond_25
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectedTask;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$000(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    move-result-object p0

    sget-object v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->DISCONNECTED:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    if-ne p0, v0, :cond_32

    sget-object p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;->DISCARD:Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;

    return-object p0

    :cond_32
    sget-object p0, Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;->RETRY:Lcom/oplus/ovoiceskillservice/utils/ThreadTask$TaskGuard;

    return-object p0
.end method
