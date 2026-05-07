.class public Le2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;


# instance fields
.field public final synthetic a:Le2/b;


# direct methods
.method public constructor <init>(Le2/b;)V
    .registers 2

    iput-object p1, p0, Le2/a;->a:Le2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 3

    iget-object p0, p0, Le2/a;->a:Le2/b;

    iget-object p0, p0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;->onActivityEnter(Lcom/oplus/app/OplusAppEnterInfo;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 3

    iget-object p0, p0, Le2/a;->a:Le2/b;

    iget-object p0, p0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;->onActivityExit(Lcom/oplus/app/OplusAppExitInfo;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V
    .registers 3

    iget-object p0, p0, Le2/a;->a:Le2/b;

    iget-object p0, p0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;->onAppEnter(Lcom/oplus/app/OplusAppEnterInfo;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V
    .registers 3

    iget-object p0, p0, Le2/a;->a:Le2/b;

    iget-object p0, p0, Le2/b;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;->onAppExit(Lcom/oplus/app/OplusAppExitInfo;)V

    goto :goto_8

    :cond_18
    return-void
.end method
