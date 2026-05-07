.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;
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

.field private final pipSnapAlgorithmProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
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
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;)V
    .registers 4
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
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->contextProvider:Lx2/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->tvPipBoundsStateProvider:Lx2/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;
    .registers 4
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
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;-><init>(Lx2/a;Lx2/a;Lx2/a;)V

    return-object v0
.end method

.method public static provideTvPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/dagger/TvPipModule;->provideTvPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->tvPipBoundsStateProvider:Lx2/a;

    invoke-interface {v1}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->pipSnapAlgorithmProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->provideTvPipBoundsAlgorithm(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;)Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsAlgorithmFactory;->get()Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    move-result-object p0

    return-object p0
.end method
