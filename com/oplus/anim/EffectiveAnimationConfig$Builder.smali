.class public final Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableSystraceMarkers:Z

.field private networkFetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->enableSystraceMarkers:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/oplus/anim/EffectiveAnimationConfig;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationConfig;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->networkFetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->enableSystraceMarkers:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/oplus/anim/EffectiveAnimationConfig;-><init>(Lcom/oplus/anim/network/EffectiveNetworkFetcher;Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;ZLcom/oplus/anim/EffectiveAnimationConfig$1;)V

    return-object v0
.end method

.method public setEnableSystraceMarkers(Z)Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->enableSystraceMarkers:Z

    return-object p0
.end method

.method public setNetworkCacheDir(Ljava/io/File;)Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
    .registers 3
    .param p1  # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    if-nez v0, :cond_c

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$1;-><init>(Lcom/oplus/anim/EffectiveAnimationConfig$Builder;Ljava/io/File;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a cache provider!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNetworkCacheProvider(Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;)Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
    .registers 3
    .param p1  # Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    if-nez v0, :cond_c

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$2;

    invoke-direct {v0, p0, p1}, Lcom/oplus/anim/EffectiveAnimationConfig$Builder$2;-><init>(Lcom/oplus/anim/EffectiveAnimationConfig$Builder;Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a cache provider!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNetworkFetcher(Lcom/oplus/anim/network/EffectiveNetworkFetcher;)Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
    .registers 2
    .param p1  # Lcom/oplus/anim/network/EffectiveNetworkFetcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationConfig$Builder;->networkFetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;

    return-object p0
.end method
