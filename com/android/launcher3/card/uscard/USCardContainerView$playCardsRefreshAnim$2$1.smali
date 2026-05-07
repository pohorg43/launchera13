.class public final Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->playCardsRefreshAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_a

    :cond_1b
    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p1, v1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$clearStatusAfterRefresh(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setMRefreshAnimSet$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->getMItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_a

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$playCardsRefreshAnim$2$1;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$invalidateChildren(Lcom/android/launcher3/card/uscard/USCardContainerView;)V

    return-void
.end method
