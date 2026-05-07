.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startHomeAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    iget-object p1, p1, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->onMotionEventSuccess()V

    :cond_c
    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$800(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->access$900(Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$3;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    return-void
.end method
