.class public Lcom/oplus/anim/model/EffectiveCompositionCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;


# instance fields
.field private final cache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/anim/model/EffectiveCompositionCache;

    invoke-direct {v0}, Lcom/oplus/anim/model/EffectiveCompositionCache;-><init>()V

    sput-object v0, Lcom/oplus/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;
    .registers 1

    sget-object v0, Lcom/oplus/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/oplus/anim/model/EffectiveCompositionCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationComposition;
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resize(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/model/EffectiveCompositionCache;->cache:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->resize(I)V

    return-void
.end method
