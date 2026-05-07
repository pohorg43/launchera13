.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;
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


# direct methods
.method public constructor <init>(Lx2/a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->contextProvider:Lx2/a;

    return-void
.end method

.method public static create(Lx2/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;-><init>(Lx2/a;)V

    return-object v0
.end method

.method public static provideTvPipBoundsState(Landroid/content/Context;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 2

    invoke-static {p0}, Lcom/android/wm/shell/dagger/TvPipModule;->provideTvPipBoundsState(Landroid/content/Context;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->contextProvider:Lx2/a;

    invoke-interface {p0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->provideTvPipBoundsState(Landroid/content/Context;)Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipBoundsStateFactory;->get()Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    move-result-object p0

    return-object p0
.end method
