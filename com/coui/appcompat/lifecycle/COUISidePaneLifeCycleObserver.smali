.class public Lcom/coui/appcompat/lifecycle/COUISidePaneLifeCycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# direct methods
.method private componentCreate()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneUtils;->a(Landroid/content/Context;)Z

    throw p0
.end method

.method private componentRestore()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneUtils;->a(Landroid/content/Context;)Z

    throw p0
.end method
