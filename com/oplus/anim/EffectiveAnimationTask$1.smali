.class Lcom/oplus/anim/EffectiveAnimationTask$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationTask;->notifyListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationTask;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationTask;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationTask;->access$000(Lcom/oplus/anim/EffectiveAnimationTask;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationTask;->access$000(Lcom/oplus/anim/EffectiveAnimationTask;)Lcom/oplus/anim/EffectiveAnimationResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->access$100(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/lang/Object;)V

    goto :goto_28

    :cond_1f
    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationTask$1;->this$0:Lcom/oplus/anim/EffectiveAnimationTask;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->access$200(Lcom/oplus/anim/EffectiveAnimationTask;Ljava/lang/Throwable;)V

    :goto_28
    return-void
.end method
