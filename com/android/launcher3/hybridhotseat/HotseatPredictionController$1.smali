.class Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->fillGapsWithPrediction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

.field public final synthetic val$animate:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iput-boolean p2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->val$animate:Z

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-boolean v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->val$animate:Z

    invoke-static {p1, v0}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->access$000(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Z)V

    iget-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$1;->this$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    invoke-static {p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->access$100(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
