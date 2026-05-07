.class Lcom/oplus/anim/EffectiveAnimationView$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationView;->fromAssets(Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationView;

.field public final synthetic val$assetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->val$assetName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->access$400(Lcom/oplus/anim/EffectiveAnimationView;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->val$assetName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    goto :goto_22

    :cond_15
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$5;->val$assetName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    :goto_22
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView$5;->call()Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object p0

    return-object p0
.end method
