.class Lcom/oplus/anim/EffectiveAnimationDrawable$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$minFrame:I


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$4;->val$minFrame:I

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    return-void
.end method
