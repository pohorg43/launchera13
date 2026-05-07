.class Lcom/oplus/anim/EffectiveAnimationDrawable$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$maxProgress:F

.field public final synthetic val$minProgress:F


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;FF)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->val$minProgress:F

    iput p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->val$maxProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->val$minProgress:F

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$13;->val$maxProgress:F

    invoke-virtual {p1, v0, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method
