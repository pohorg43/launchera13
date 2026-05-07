.class Lcom/oplus/ovoiceskillservice/SkillSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ovoiceskillservice/ISkillSession;


# static fields
.field private static final TAG:Ljava/lang/String; = "OVSS.SkillSession"


# instance fields
.field public mActionID:Ljava/lang/String;

.field public mCmdData:Ljava/lang/String;

.field public mCommand:Ljava/lang/String;

.field public mContextType:Ljava/lang/String;

.field public mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionCode:Ljava/lang/String;

.field public mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

.field public mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSessionCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mActionID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/ovoiceskillservice/SkillActionListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSessionCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mActionID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const-string v0, "OVSS.SkillSession"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V

    :cond_e
    return-void
.end method

.method public changeValue(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.SkillSession"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSkillActionListener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p0, p1}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method public completeAction()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/ovoiceskillservice/SkillSession;->completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z

    move-result p0

    return p0
.end method

.method public completeAction(ILcom/oplus/ovoicecommon/bean/ISkillCard;)Z
    .registers 6

    if-nez p2, :cond_8

    const-string p2, ""

    invoke-static {p2}, Lcom/oplus/ovoicecommon/bean/OVoiceSkillCardFactory;->createTTSCard(Ljava/lang/String;)Lcom/oplus/ovoicecommon/bean/ISkillCard;

    move-result-object p2

    :cond_8
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getOVoiceSkillService()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "OVSS.SkillSession"

    if-nez v0, :cond_1b

    const-string p0, "mOVoiceSkillService is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b
    const-string v0, "completeAction, result:"

    invoke-static {v0, p1, v2}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_20
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getOVoiceSkillService()Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSessionCode:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->onResult(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_31} :catch_33

    const/4 p0, 0x1

    return p0

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public finish()V
    .registers 3

    const-string v0, "OVSS.SkillSession"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    return-void
.end method

.method public getActionID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mActionID:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mParameters:Ljava/util/Map;

    return-object p0
.end method

.method public setParameters(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mParameters:Ljava/util/Map;

    return-void
.end method
