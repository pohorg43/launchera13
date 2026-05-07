.class public Lcom/oplus/anim/EffectiveAnimationConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationConfig$Builder;
    }
.end annotation


# instance fields
.field public final cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final enableSystraceMarkers:Z

.field public final networkFetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oplus/anim/network/EffectiveNetworkFetcher;Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;Z)V
    .registers 4
    .param p1  # Lcom/oplus/anim/network/EffectiveNetworkFetcher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationConfig;->networkFetcher:Lcom/oplus/anim/network/EffectiveNetworkFetcher;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationConfig;->cacheProvider:Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;

    iput-boolean p3, p0, Lcom/oplus/anim/EffectiveAnimationConfig;->enableSystraceMarkers:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/anim/network/EffectiveNetworkFetcher;Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;ZLcom/oplus/anim/EffectiveAnimationConfig$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationConfig;-><init>(Lcom/oplus/anim/network/EffectiveNetworkFetcher;Lcom/oplus/anim/network/EffectiveNetworkCacheProvider;Z)V

    return-void
.end method
