.class Lcom/oplus/anim/EffectiveAnimationView$2;
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
        "Lcom/oplus/anim/EffectiveAnimationComposition;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView$2;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView$2;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {v0}, Lcom/oplus/anim/EffectiveAnimationView;->access$000(Lcom/oplus/anim/EffectiveAnimationView;)V

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$2;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$2;->onResult(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    return-void
.end method
