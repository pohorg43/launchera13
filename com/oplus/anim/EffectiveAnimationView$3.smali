.class Lcom/oplus/anim/EffectiveAnimationView$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oplus/anim/EffectiveAnimationListener<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView$3;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$3;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$3;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->access$100(Lcom/oplus/anim/EffectiveAnimationView;)I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$3;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->access$100(Lcom/oplus/anim/EffectiveAnimationView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageResource(I)V

    :cond_11
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$3;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->access$200(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/EffectiveAnimationListener;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$3;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    if-nez v0, :cond_20

    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->access$300(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/EffectiveAnimationListener;

    move-result-object p0

    goto :goto_24

    :cond_20
    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->access$200(Lcom/oplus/anim/EffectiveAnimationView;)Lcom/oplus/anim/EffectiveAnimationListener;

    move-result-object p0

    :goto_24
    invoke-interface {p0, p1}, Lcom/oplus/anim/EffectiveAnimationListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
