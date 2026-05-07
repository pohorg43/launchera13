.class public abstract Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/NotifierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseNotifier"
.end annotation


# instance fields
.field private mActiveReference:I

.field public mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addActiveRef()I
    .registers 2

    iget v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mActiveReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mActiveReference:I

    return v0
.end method

.method public final addListener(Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public notifyChange(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    goto :goto_9

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public abstract onRegister()V
.end method

.method public abstract onUnregister()V
.end method

.method public register()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mRegistered:Z

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->onRegister()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mRegistered:Z

    const-string v0, "onRegister: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NotifierManager"

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public final releaseActiveRef()I
    .registers 2

    iget v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mActiveReference:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mActiveReference:I

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final removeListener(Lcom/oplus/fancyicon/NotifierManager$OnNotifyListener;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unregister()V
    .registers 3

    const-string v0, "NotifierManager"

    iget-boolean v1, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mRegistered:Z

    if-eqz v1, :cond_29

    :try_start_6
    invoke-virtual {p0}, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->onUnregister()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/fancyicon/NotifierManager$BaseNotifier;->mRegistered:Z

    const-string v1, "onUnregister: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void
.end method
