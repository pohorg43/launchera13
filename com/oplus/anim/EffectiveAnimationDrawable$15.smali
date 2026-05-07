.class Lcom/oplus/anim/EffectiveAnimationDrawable$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$progress:F


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$progress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$15;->val$progress:F

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    return-void
.end method
