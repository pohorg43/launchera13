.class Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;
.super Lcom/oplus/ovoiceskillservice/SkillActionListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->onActionExecution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

.field public final synthetic val$jsonParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->val$jsonParam:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V

    return-void
.end method

.method public onSessionCreated(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    iget-object v0, v0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->val$jsonParam:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    return-void
.end method

.method public onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4$1;->this$1:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$4;->val$skillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    return-void
.end method
