.class Lcom/android/launcher/guide/BaseNavGesturesHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/BaseNavGesturesHelper;->onGuideShowFinished(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/BaseNavGesturesHelper;

.field public final synthetic val$launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/BaseNavGesturesHelper;Lcom/android/launcher/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->this$0:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    iput-object p2, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->this$0:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    iget-object p1, p1, Lcom/android/launcher/guide/BaseNavGesturesHelper;->mGuideView:Lcom/android/launcher/guide/SlideSlipGuidePage;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/launcher/guide/SlideSlipGuidePage;->release()V

    :cond_9
    iget-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->this$0:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    iget-object v0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->removeGuidePage(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->this$0:Lcom/android/launcher/guide/BaseNavGesturesHelper;

    iget-object p0, p0, Lcom/android/launcher/guide/BaseNavGesturesHelper$1;->val$launcher:Lcom/android/launcher/Launcher;

    invoke-static {p1, p0}, Lcom/android/launcher/guide/BaseNavGesturesHelper;->access$000(Lcom/android/launcher/guide/BaseNavGesturesHelper;Landroid/content/Context;)V

    return-void
.end method
