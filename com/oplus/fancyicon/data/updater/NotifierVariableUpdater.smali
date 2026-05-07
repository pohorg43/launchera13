.class public abstract Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;


# instance fields
.field public mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-static {p2}, Lcom/oplus/fancyicon/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/oplus/fancyicon/NotifierManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/NotifierManager;->acquireNotifier(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
.end method

.method public onRenderThreadStoped()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oplus/fancyicon/NotifierManager;->releaseNotifier(Ljava/lang/String;)V

    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->pause(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public resume()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mNotifierManager:Lcom/oplus/fancyicon/NotifierManager;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/updater/NotifierVariableUpdater;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/fancyicon/NotifierManager;->resume(Ljava/lang/String;Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V

    return-void
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
