.class final Lcom/oplus/anim/EffectiveCompositionFactory$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->cache(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/oplus/anim/EffectiveAnimationTask;
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
.field public final synthetic val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$10;->val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/anim/EffectiveAnimationResult;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$10;->val$cachedComposition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationResult;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$10;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
