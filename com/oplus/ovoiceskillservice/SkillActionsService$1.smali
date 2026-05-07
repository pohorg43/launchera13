.class Lcom/oplus/ovoiceskillservice/SkillActionsService$1;
.super Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ovoiceskillservice/SkillActionsService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/ovoiceskillservice/SkillActionsService;

.field public final synthetic val$self:Lcom/oplus/ovoiceskillservice/SkillActionsService;


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/SkillActionsService;Lcom/oplus/ovoiceskillservice/SkillActionsService;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillActionsService$1;->this$0:Lcom/oplus/ovoiceskillservice/SkillActionsService;

    iput-object p2, p0, Lcom/oplus/ovoiceskillservice/SkillActionsService$1;->val$self:Lcom/oplus/ovoiceskillservice/SkillActionsService;

    invoke-direct {p0}, Lcom/oplus/ovoicemanager/service/ISkillListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionExecution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "OVSS.SkillActionsService"

    const-string p2, "ISkillListener.Stub.onActionExecution"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/SkillSession;

    if-eqz p0, :cond_1f

    iget-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, p0, p3}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onCancel(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "OVSS.SkillActionsService"

    const-string v0, "ISkillListener.Stub.onCancel"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/SkillSession;

    if-eqz p0, :cond_1f

    iget-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public onValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "OVSS.SkillActionsService"

    const-string v0, "ISkillListener.Stub.onValueChanged"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getSession(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/ISkillSession;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/SkillSession;

    if-eqz p0, :cond_1f

    iget-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillSession;->mSkillActionListener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, p0, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public startAction(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "OVSS.SkillActionsService"

    const-string v1, "startAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/SkillActionsService$1;->val$self:Lcom/oplus/ovoiceskillservice/SkillActionsService;

    new-instance v3, Lcom/oplus/ovoiceskillservice/SkillActionsService$1$1;

    invoke-direct {v3, p0}, Lcom/oplus/ovoiceskillservice/SkillActionsService$1$1;-><init>(Lcom/oplus/ovoiceskillservice/SkillActionsService$1;)V

    invoke-virtual {v1, v2, p2, v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->initializeByOVoiceSkillService(Landroid/content/Context;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;Lcom/oplus/ovoiceskillservice/OVoiceConnectionCallback;)Z

    invoke-virtual {p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;->getUriPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1d

    const-string p0, ""

    :cond_1d
    invoke-static {p0}, Lcom/oplus/ovoiceskillservice/utils/SkillActionUtils;->getActionListener(Ljava/lang/String;)Lcom/oplus/ovoiceskillservice/SkillActionListener;

    move-result-object p0

    check-cast p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;

    invoke-virtual {p1}, Lcom/oplus/ovoicemanager/service/ActionRequest;->getCallArgs()Ljava/lang/String;

    move-result-object p2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_27} :catch_63

    if-eqz p0, :cond_5b

    if-eqz p2, :cond_5b

    :try_start_2b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    :cond_51
    invoke-virtual {p0, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->setParameters(Ljava/util/Map;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_54} :catch_55
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_54} :catch_63

    goto :goto_5b

    :catch_55
    move-exception p2

    :try_start_56
    const-string v1, "jackson error"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    :goto_5b
    invoke-static {}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->getInstance()Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->newSkillSession(Lcom/oplus/ovoicemanager/service/ActionRequest;Lcom/oplus/ovoiceskillservice/SkillActionListener;)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_63

    goto :goto_69

    :catch_63
    move-exception p0

    const-string p1, "startAction error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_69
    return-void
.end method
