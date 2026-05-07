.class Lcom/oplus/anim/EffectiveAnimationDrawable$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->resumeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$3;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$3;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resumeAnimation()V

    return-void
.end method
