.class public Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;
.super Lcom/oplus/ovoiceskillservice/SkillActionListener;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OVSS.SkillActionListenerWrapper"


# instance fields
.field private cardObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/ovoiceskillservice/SkillActionListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/ovoiceskillservice/SkillActionListener;-><init>()V

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    return-void
.end method

.method private invokeCardObserver(Lcom/oplus/ovoiceskillservice/SkillSession;Ljava/lang/String;)V
    .registers 11

    const-string v0, "OVSS.SkillActionListenerWrapper"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->cardObservers:Ljava/util/Map;

    if-eqz v1, :cond_118

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_118

    if-nez p2, :cond_10

    goto/16 :goto_118

    :cond_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "cardType"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "payload"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x4a0ff4b1  # 2358572.2f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_42

    const v4, 0x753bbe78

    if-eq v3, v4, :cond_38

    goto :goto_4b

    :cond_38
    const-string v3, "SeekbarResult"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    move v1, v6

    goto :goto_4b

    :cond_42
    const-string v3, "ToggleResult"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4b

    move v1, v5

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_51

    if-eq v1, v6, :cond_51

    goto/16 :goto_124

    :cond_51
    const-string p2, "itemName"

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "itemValue"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->cardObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    if-nez p2, :cond_69

    goto/16 :goto_124

    :cond_69
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_124

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_124

    aget-object v3, v2, v6

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_104

    aget-object v3, v2, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    goto/16 :goto_104

    :cond_89
    aget-object v3, v2, v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f0

    aget-object v3, v2, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    goto :goto_f0

    :cond_9e
    aget-object v3, v2, v6

    const-class v7, Ljava/lang/Float;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    aget-object v3, v2, v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    goto :goto_dc

    :cond_b3
    aget-object v3, v2, v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_124

    :cond_c9
    aget-object p0, v2, v6

    const-class p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d4

    goto :goto_124

    :cond_d4
    aget-object p0, v2, v6

    const-class p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_124

    :cond_dc
    :goto_dc
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_124

    :cond_f0
    :goto_f0
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_124

    :cond_104
    :goto_104
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_124

    :cond_118
    :goto_118
    const-string p0, "cardObservers or json is empty"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11d} :catch_11e

    return-void

    :catch_11e
    move-exception p0

    const-string p1, "invokeCardObserver error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_124
    :goto_124
    return-void
.end method


# virtual methods
.method public getListener()Lcom/oplus/ovoiceskillservice/SkillActionListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    return-object p0
.end method

.method public onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 7

    const-string v0, "OVSS.SkillActionListenerWrapper"

    const-string v1, "onActionExecution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object v1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onActionExecution(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    :cond_e
    invoke-interface {p1}, Lcom/oplus/ovoiceskillservice/ISkillSession;->getActionID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4e

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->regActions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_48

    if-eqz v1, :cond_4e

    :try_start_32
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_40} :catch_41

    goto :goto_4e

    :catch_41
    move-exception p0

    :try_start_42
    const-string p1, "method.invoke error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p0

    const-string p1, "error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 4

    const-string v0, "OVSS.SkillActionListenerWrapper"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz p0, :cond_15

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onCancel(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception p0

    const-string p1, "error"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_15
    :goto_15
    return-void
.end method

.method public onSessionCreated(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skillSession:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OVSS.SkillActionListenerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_16
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->parameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Lcom/oplus/ovoiceskillservice/ISkillSession;->setParameters(Ljava/util/Map;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz p0, :cond_3f

    invoke-virtual {p0, p1}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onSessionCreated(Lcom/oplus/ovoiceskillservice/ISkillSession;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_38} :catch_39

    goto :goto_3f

    :catch_39
    move-exception p0

    const-string p1, "error"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3f
    :goto_3f
    return-void
.end method

.method public onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V
    .registers 5

    const-string v0, "onValueChanged, json:"

    const-string v1, "OVSS.SkillActionListenerWrapper"

    invoke-static {v0, p2, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->listener:Lcom/oplus/ovoiceskillservice/SkillActionListener;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListener;->onValueChanged(Lcom/oplus/ovoiceskillservice/ISkillSession;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/ovoiceskillservice/SkillSession;

    invoke-direct {p0, p1, p2}, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->invokeCardObserver(Lcom/oplus/ovoiceskillservice/SkillSession;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p0

    const-string p1, "error"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setCardObservers(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->cardObservers:Ljava/util/Map;

    return-void
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

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setRegActions(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ovoiceskillservice/SkillActionListenerWrapper;->regActions:Ljava/util/Map;

    return-void
.end method
