.class Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;
.super Lcom/oplus/ovoiceskillservice/utils/ThreadTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->deinitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/utils/ThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "OVSS.OVoiceSkillProxy"

    :try_start_2
    const-string v1, "start deinitialize thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$100(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$200(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOVoiceSkillService.unregisterActionExecutionListenerByAppID, mContext: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$200(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$200(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/ovoicecommon/AppUtils;->getAppID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$100(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;->unregisterActionExecutionListenerByAppID(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1, v2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$102(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;)Lcom/oplus/ovoicemanager/service/IOVoiceSkillService;

    :cond_4a
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$300(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicecommon/BinderPool;

    move-result-object v1

    if-eqz v1, :cond_65

    const-string v1, "mBinderPool.disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$300(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Lcom/oplus/ovoicecommon/BinderPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/ovoicecommon/BinderPool;->disconnect()V

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1, v2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$302(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoicecommon/BinderPool;)Lcom/oplus/ovoicecommon/BinderPool;

    :cond_65
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    sget-object v3, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;->NONE:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    invoke-static {v1, v3}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$002(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;)Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$ConnectStatus;

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$400(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-virtual {v3}, Lcom/oplus/ovoiceskillservice/SkillSession;->finish()V

    goto :goto_7a

    :cond_8a
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$500(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {v1}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$400(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy$2;->this$0:Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;

    invoke-static {p0, v2}, Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;->access$202(Lcom/oplus/ovoiceskillservice/OVoiceSkillProxy;Landroid/content/Context;)Landroid/content/Context;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_a2

    goto :goto_a8

    :catch_a2
    move-exception p0

    const-string v1, "deinitialize thread process error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a8
    return-void
.end method
