.class Lcom/android/launcher/download/DownloadProgressDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/DownloadProgressDrawable;->finishProgressAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/DownloadProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/DownloadProgressDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {v2, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$000(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "finishProgressAnimation, animation=%s cancel"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstallApp"

    const-string v1, "DownloadProgressDrawable"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$100(Lcom/android/launcher/download/DownloadProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {v2, p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$000(Lcom/android/launcher/download/DownloadProgressDrawable;Landroid/animation/Animator;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "finishProgressAnimation, animation=%s end"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v2, "DownloadProgressDrawable"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {v0}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$100(Lcom/android/launcher/download/DownloadProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_44

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$100(Lcom/android/launcher/download/DownloadProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$200(Lcom/android/launcher/download/DownloadProgressDrawable;)Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/DownloadProgressDrawable;->access$200(Lcom/android/launcher/download/DownloadProgressDrawable;)Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher/download/DownloadProgressDrawable$IInstallAnimationListener;->onInstallAnimationFinish()V

    :cond_44
    iget-object p0, p0, Lcom/android/launcher/download/DownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/DownloadProgressDrawable;

    invoke-virtual {p0}, Lcom/android/launcher/download/DownloadProgressDrawable;->invalidateSelf()V

    return-void
.end method
