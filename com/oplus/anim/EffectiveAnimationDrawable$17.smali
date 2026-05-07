.class Lcom/oplus/anim/EffectiveAnimationDrawable$17;
.super Lcom/oplus/anim/value/EffectiveValueCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/anim/value/EffectiveValueCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$callback:Lcom/oplus/anim/value/SimpleValueCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$17;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$17;->val$callback:Lcom/oplus/anim/value/SimpleValueCallback;

    invoke-direct {p0}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$17;->val$callback:Lcom/oplus/anim/value/SimpleValueCallback;

    invoke-interface {p0, p1}, Lcom/oplus/anim/value/SimpleValueCallback;->getValue(Lcom/oplus/anim/value/EffectiveFrameInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
