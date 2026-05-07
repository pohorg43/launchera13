.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$startIndicatorAnimOnPopup$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->startIndicatorAnimOnPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$startIndicatorAnimOnPopup$1$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$startIndicatorAnimOnPopup$1$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->access$setMIndicatorPopAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;Landroid/animation/ValueAnimator;)V

    return-void
.end method
