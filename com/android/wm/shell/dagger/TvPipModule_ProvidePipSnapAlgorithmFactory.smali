.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lx2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->access$000()Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .registers 2

    invoke-static {}, Lcom/android/wm/shell/dagger/TvPipModule;->providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipSnapAlgorithm;
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;->providePipSnapAlgorithm()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;->get()Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    move-result-object p0

    return-object p0
.end method
