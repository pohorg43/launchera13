.class public Lcom/android/wm/shell/ShellMainThread;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/android/wm/shell/ShellMainThread;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/wm/shell/ShellMainThread;->sExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/android/wm/shell/ShellMainThread;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/wm/shell/ShellMainThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static inject(Landroid/os/Handler;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    sput-object p0, Lcom/android/wm/shell/ShellMainThread;->sHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/wm/shell/ShellMainThread;->sExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method
