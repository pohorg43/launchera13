.class public final Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/uscard/USCardContainerView;->animBg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $animIn:Z

.field public final synthetic this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    iput-boolean p2, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->$animIn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->$animIn:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setIsNeedShowBg(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setMLongPressedView$p(Lcom/android/launcher3/card/uscard/USCardContainerView;Landroid/view/View;)V

    :cond_10
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardContainerView$animBg$2$2;->this$0:Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher3/card/uscard/USCardContainerView;->access$setIsNeedShowBg(Lcom/android/launcher3/card/uscard/USCardContainerView;Z)V

    return-void
.end method
