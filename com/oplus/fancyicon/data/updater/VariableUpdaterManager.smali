.class public Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final USE_TAG_NONE:Ljava/lang/String; = "none"


# instance fields
.field private mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

.field private mUpdaters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public add(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFromTag(Ljava/lang/String;)V
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_5e

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_36

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :cond_36
    const-string v5, "DateTime"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    new-instance v3, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;

    iget-object v5, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v3, v4, v5}, Lcom/oplus/fancyicon/data/updater/DateTimeVariableUpdater;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->add(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V

    goto :goto_5b

    :cond_49
    const-string v4, "Battery"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    new-instance v3, Lcom/oplus/fancyicon/data/updater/BatteryVariableUpdater;

    iget-object v4, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v3, v4}, Lcom/oplus/fancyicon/data/updater/BatteryVariableUpdater;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {p0, v3}, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->add(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_5e
    return-void
.end method

.method public getRoot()Lcom/oplus/fancyicon/ScreenElementRoot;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    return-object p0
.end method

.method public init()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->init()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->onRenderThreadStoped()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public pause()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->pause()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public remove(Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->resume()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public tick(J)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/VariableUpdaterManager;->mUpdaters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->tick(J)V

    goto :goto_6

    :cond_16
    return-void
.end method
