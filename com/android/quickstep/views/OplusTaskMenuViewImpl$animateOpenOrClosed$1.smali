.class public final Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->animateOpenOrClosed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $closing:Z

.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->this$0:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    iput-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->$closing:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "OplusTaskMenuView"

    const-string p1, "OpenCloseAnimator running end."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->this$0:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->$closing:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->this$0:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->closeComplete()V

    :cond_9
    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->this$0:Lcom/android/quickstep/views/OplusTaskMenuViewImpl;

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusTaskMenuViewImpl$animateOpenOrClosed$1;->$closing:Z

    invoke-static {p1, p0}, Lcom/android/quickstep/views/OplusTaskMenuViewImpl;->access$makeTextMarquee(Lcom/android/quickstep/views/OplusTaskMenuViewImpl;Z)V

    return-void
.end method
