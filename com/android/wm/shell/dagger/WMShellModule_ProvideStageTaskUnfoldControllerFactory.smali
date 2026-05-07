.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx2/a;


# instance fields
.field private final contextProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final displayInsetsControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutorProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final progressProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transactionPoolProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field private final unfoldBackgroundControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->progressProvider:Lx2/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->contextProvider:Lx2/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->transactionPoolProvider:Lx2/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->unfoldBackgroundControllerProvider:Lx2/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->displayInsetsControllerProvider:Lx2/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->mainExecutorProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;"
        }
    .end annotation

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;-><init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V

    return-object v7
.end method

.method public static provideStageTaskUnfoldController(Ljava/util/Optional;Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/TransactionPool;",
            "Lv2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/dagger/WMShellModule;->provideStageTaskUnfoldController(Ljava/util/Optional;Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/StageTaskUnfoldController;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->progressProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Optional;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->transactionPoolProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/common/TransactionPool;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->unfoldBackgroundControllerProvider:Lx2/a;

    invoke-static {v0}, Lw2/a;->a(Lx2/a;)Lv2/a;

    move-result-object v4

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->displayInsetsControllerProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->mainExecutorProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v1 .. v6}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideStageTaskUnfoldControllerFactory;->provideStageTaskUnfoldController(Ljava/util/Optional;Landroid/content/Context;Lcom/android/wm/shell/common/TransactionPool;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
