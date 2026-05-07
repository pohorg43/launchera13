.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;
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
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
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

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->contextProvider:Lx2/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->progressProvider:Lx2/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->unfoldBackgroundControllerProvider:Lx2/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->displayInsetsControllerProvider:Lx2/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->mainExecutorProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;",
            "Lx2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;"
        }
    .end annotation

    new-instance v6, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;-><init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V

    return-object v6
.end method

.method public static provideFullscreenUnfoldController(Landroid/content/Context;Ljava/util/Optional;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;",
            "Lv2/a<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/dagger/WMShellModule;->provideFullscreenUnfoldController(Landroid/content/Context;Ljava/util/Optional;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->progressProvider:Lx2/a;

    invoke-interface {v1}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->unfoldBackgroundControllerProvider:Lx2/a;

    invoke-static {v2}, Lw2/a;->a(Lx2/a;)Lv2/a;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->displayInsetsControllerProvider:Lx2/a;

    invoke-interface {v3}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->mainExecutorProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->provideFullscreenUnfoldController(Landroid/content/Context;Ljava/util/Optional;Lv2/a;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideFullscreenUnfoldControllerFactory;->get()Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;

    move-result-object p0

    return-object p0
.end method
