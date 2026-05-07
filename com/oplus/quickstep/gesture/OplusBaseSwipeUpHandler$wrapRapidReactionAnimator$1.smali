.class public final Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->wrapRapidReactionAnimator(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)Lcom/android/quickstep/SwipeUpAnimationLogic$RunningWindowAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animator:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;->$animator:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;->$animator:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->end()V

    return-void
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$wrapRapidReactionAnimator$1;->$animator:Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/utils/OplusRapidReactionAnimator;->end()V

    return-void
.end method
