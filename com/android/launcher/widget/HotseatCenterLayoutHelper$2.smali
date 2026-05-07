.class Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

.field public final synthetic val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->mCancelled:Z

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationCancel()V

    :cond_a
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationEnd()V

    :cond_7
    iget-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iget-boolean p1, p1, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    if-eqz p1, :cond_23

    const-string/jumbo p1, "onAnimationEnd - mNeedForceRunOnDragEnd: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iget-boolean v0, v0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->mNeedForceRunOnDragEnd:Z

    const-string v1, "HotseatCenterLayoutHelper"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->onDragEnd(Z)V

    :cond_23
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$2;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationStart()V

    :cond_a
    return-void
.end method
