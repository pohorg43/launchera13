.class public Lcom/oplus/fancyicon/command/ExternalCommandManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field public static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final TAG:Ljava/lang/String; = "ExternalCommandManager"

.field public static final TAG_NAME:Ljava/lang/String; = "ExternalCommands"


# instance fields
.field private mTriggers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/command/CommandTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    if-eqz p1, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/command/ExternalCommandManager;->loadCommandTriggers(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    :cond_f
    return-void
.end method

.method private loadCommandTriggers(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_34

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Trigger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-static {v1, p2}, Lcom/oplus/fancyicon/command/CommandTrigger;->fromElement(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/command/CommandTrigger;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_34
    return-void
.end method


# virtual methods
.method public command(Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->getActionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->perform()V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public end()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->end()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public init()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->onRenderThreadStoped()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/command/ExternalCommandManager;->mTriggers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/command/CommandTrigger;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/command/CommandTrigger;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method
