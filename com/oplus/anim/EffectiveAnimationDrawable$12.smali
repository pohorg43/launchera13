.class Lcom/oplus/anim/EffectiveAnimationDrawable$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$maxFrame:I

.field public final synthetic val$minFrame:I


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;II)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$minFrame:I

    iput p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$maxFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$minFrame:I

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$12;->val$maxFrame:I

    invoke-virtual {p1, v0, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method
