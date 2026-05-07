.class Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;->startHomeAlphAnimation()V
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

    iput-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    iget-object p1, p1, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->onMotionEventSuccess()V

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage$4;->this$0:Lcom/android/launcher/guide/side/SideSlipGesturesGuideBottomActionPage;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideActionPage;->mIsAnimationRunning:Z

    return-void
.end method
