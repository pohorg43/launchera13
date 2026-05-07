.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;
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

.field private final mainHandlerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipMediaControllerProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;"
        }
    .end annotation
.end field

.field private final systemWindowsProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field private final tvPipBoundsStateProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
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
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;",
            "Lx2/a<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->contextProvider:Lx2/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->tvPipBoundsStateProvider:Lx2/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->systemWindowsProvider:Lx2/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->pipMediaControllerProvider:Lx2/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->mainHandlerProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;",
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;",
            "Lx2/a<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;"
        }
    .end annotation

    new-instance v6, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;-><init>(Lx2/a;Lx2/a;Lx2/a;Lx2/a;Lx2/a;)V

    return-object v6
.end method

.method public static providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/pip/PipMediaController;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/dagger/TvPipModule;->providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/pip/PipMediaController;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/tv/TvPipMenuController;
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->tvPipBoundsStateProvider:Lx2/a;

    invoke-interface {v1}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object v2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->systemWindowsProvider:Lx2/a;

    invoke-interface {v2}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/SystemWindows;

    iget-object v3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->pipMediaControllerProvider:Lx2/a;

    invoke-interface {v3}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/pip/PipMediaController;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->mainHandlerProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->providesTvPipMenuController(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Lcom/android/wm/shell/pip/PipMediaController;Landroid/os/Handler;)Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;->get()Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    move-result-object p0

    return-object p0
.end method
