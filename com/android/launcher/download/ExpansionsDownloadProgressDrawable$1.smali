.class Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->playFinishAnimationIfNeed(ZLcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

.field public final synthetic val$anima:Z

.field public final synthetic val$callback:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;


# direct methods
.method public constructor <init>(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;ZLcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    iput-boolean p2, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->val$anima:Z

    iput-object p3, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->val$callback:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, "finish animation done!anim="

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->val$anima:Z

    const-string v1, "InstallApp"

    const-string v2, "ExpansionsDownloadProgressDrawable"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object p1, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->this$0:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;

    invoke-static {p1}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;->access$000(Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$1;->val$callback:Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;

    if-eqz p0, :cond_25

    invoke-interface {p0}, Lcom/android/launcher/download/ExpansionsDownloadProgressDrawable$IFinishCallback;->onFinished()V

    :cond_25
    return-void
.end method
