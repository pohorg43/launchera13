.class Lcom/oplus/anim/EffectiveAnimationDrawable$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field public final synthetic val$endMarkerName:Ljava/lang/String;

.field public final synthetic val$playEndMarkerStartFrame:Z

.field public final synthetic val$startMarkerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .registers 4

    iget-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->this$0:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$startMarkerName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$endMarkerName:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$11;->val$playEndMarkerStartFrame:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
