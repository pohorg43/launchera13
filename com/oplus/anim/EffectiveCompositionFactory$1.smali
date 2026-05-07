.class final Lcom/oplus/anim/EffectiveCompositionFactory$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/oplus/anim/EffectiveAnimationResult<",
        "Lcom/oplus/anim/EffectiveAnimationComposition;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic val$cacheKey:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/anim/L;->networkFetcher(Landroid/content/Context;)Lcom/oplus/anim/network/NetworkFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/anim/network/NetworkFetcher;->fetchSync(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$cacheKey:Ljava/lang/String;

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$1;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1, p0, v2}, Lcom/oplus/anim/model/EffectiveCompositionCache;->put(Ljava/lang/String;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    :cond_27
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$1;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
