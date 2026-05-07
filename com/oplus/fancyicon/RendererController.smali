.class public Lcom/oplus/fancyicon/RendererController;
.super Lcom/oplus/fancyicon/BaseRendererController;
.source ""


# static fields
.field private static sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

.field private static final sGlobalThreadLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/BaseRendererController;-><init>(Lcom/oplus/fancyicon/FramerateManager;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-void
.end method

.method private static clearGlobalThread()V
    .registers 2

    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public getRenderThread()Lcom/oplus/fancyicon/RenderThread;
    .registers 5

    sget-object p0, Lcom/oplus/fancyicon/RendererController;->sGlobalThreadLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    if-nez v0, :cond_28

    new-instance v0, Lcom/oplus/fancyicon/RenderThread;

    const-string v1, "uiengine_global_thread"

    invoke-direct {v0, v1}, Lcom/oplus/fancyicon/RenderThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    sget-object v2, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    long-to-int v2, v2

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/uifirst/OplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    :cond_28
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/RenderThread;->isStarted()Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_3e

    if-nez v0, :cond_3a

    :try_start_30
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/RenderThread;->resumeSelf()V
    :try_end_3a
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_30 .. :try_end_3a} :catch_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    :catch_3a
    :cond_3a
    :try_start_3a
    sget-object v0, Lcom/oplus/fancyicon/RendererController;->sGlobalThread:Lcom/oplus/fancyicon/RenderThread;

    monitor-exit p0

    return-object v0

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public isGlobalThread()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public recycleThread()V
    .registers 1

    invoke-static {}, Lcom/oplus/fancyicon/RendererController;->clearGlobalThread()V

    return-void
.end method
