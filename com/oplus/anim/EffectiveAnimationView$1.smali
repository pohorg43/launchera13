.class Lcom/oplus/anim/EffectiveAnimationView$1;
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

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView$1;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView$1;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationView$1;->this$0:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-static {p0}, Lcom/oplus/anim/EffectiveAnimationView;->access$000(Lcom/oplus/anim/EffectiveAnimationView;)V

    invoke-static {p1}, Lcom/oplus/anim/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "Unable to load composition."

    invoke-static {p0, p1}, Lcom/oplus/anim/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p0, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
