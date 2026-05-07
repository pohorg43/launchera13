.class public final Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;->this$0:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;->this$0:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->access$getOnStartListeners$p(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnStartListener;

    invoke-interface {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnStartListener;->onStart()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$2;->this$0:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-static {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->access$getOnEndListeners$p(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnEndListener;

    invoke-interface {p1}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator$OnEndListener;->onEnd()V

    goto :goto_a

    :cond_1a
    return-void
.end method
