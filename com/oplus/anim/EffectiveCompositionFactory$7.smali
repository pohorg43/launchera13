.class final Lcom/oplus/anim/EffectiveCompositionFactory$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReader(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
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

.field public final synthetic val$reader:Lcom/oplus/anim/parser/moshi/JsonReader;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$7;->val$reader:Lcom/oplus/anim/parser/moshi/JsonReader;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$7;->val$cacheKey:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$7;->val$reader:Lcom/oplus/anim/parser/moshi/JsonReader;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$7;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReaderSync(Lcom/oplus/anim/parser/moshi/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$7;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
