.class Lcom/oplus/anim/EffectiveAnimationDrawable$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$maxFrame:I


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$6;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$6;->val$maxFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$6;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$6;->val$maxFrame:I

    invoke-virtual {p1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    return-void
.end method
