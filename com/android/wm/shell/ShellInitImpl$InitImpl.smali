.class Lcom/android/wm/shell/ShellInitImpl$InitImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellInit;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/ShellInitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InitImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/ShellInitImpl;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/ShellInitImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellInitImpl;Lcom/android/wm/shell/ShellInitImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellInitImpl$InitImpl;-><init>(Lcom/android/wm/shell/ShellInitImpl;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/ShellInitImpl$InitImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->lambda$init$0()V

    return-void
.end method

.method private synthetic lambda$init$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    invoke-static {p0}, Lcom/android/wm/shell/ShellInitImpl;->access$200(Lcom/android/wm/shell/ShellInitImpl;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    invoke-static {v0}, Lcom/android/wm/shell/ShellInitImpl;->access$100(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/g;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/g;-><init>(Lcom/android/wm/shell/ShellInitImpl$InitImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to initialize the Shell in 2s"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
