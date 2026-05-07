.class Lcom/oplus/anim/EffectiveAnimationDrawable$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

.field public final synthetic val$keyPath:Lcom/oplus/anim/model/KeyPath;

.field public final synthetic val$property:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$keyPath:Lcom/oplus/anim/model/KeyPath;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$property:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$keyPath:Lcom/oplus/anim/model/KeyPath;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$property:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;->val$callback:Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    return-void
.end method
