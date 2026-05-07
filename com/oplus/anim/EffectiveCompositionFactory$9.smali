.class final Lcom/oplus/anim/EffectiveCompositionFactory$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationTask;
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

.field public final synthetic val$customOptions:Landroid/graphics/BitmapFactory$Options;

.field public final synthetic val$inputStream:Ljava/util/zip/ZipInputStream;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$inputStream:Ljava/util/zip/ZipInputStream;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$customOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/oplus/anim/EffectiveAnimationResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/anim/EffectiveAnimationResult<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$inputStream:Ljava/util/zip/ZipInputStream;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$cacheKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveCompositionFactory$9;->val$customOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v0, v1, p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromZipStreamSync(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Lcom/oplus/anim/EffectiveAnimationResult;

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

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveCompositionFactory$9;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
