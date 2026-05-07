.class public final Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->showLightningAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-static {p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$getMShowLightningIcon$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    goto :goto_10

    :cond_f
    const/4 v0, -0x2

    :goto_10
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->access$setLightningAnimator$p(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$showLightningAnimation$1$2;->this$0:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->updateFrame(I)V

    return-void
.end method
