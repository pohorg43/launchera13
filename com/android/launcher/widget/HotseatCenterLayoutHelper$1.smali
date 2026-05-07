.class Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/widget/HotseatCenterLayoutHelper;->animateHotseatPadding(Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

.field public final synthetic val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;


# direct methods
.method public constructor <init>(Lcom/android/launcher/widget/HotseatCenterLayoutHelper;Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;->this$0:Lcom/android/launcher/widget/HotseatCenterLayoutHelper;

    iput-object p2, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$1;->val$callBacks:Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;

    if-eqz p0, :cond_11

    invoke-interface {p0, v0, p1}, Lcom/android/launcher/widget/HotseatCenterLayoutHelper$AnimPositionCallBacks;->onAnimationUpdate(FLandroid/animation/ValueAnimator;)V

    :cond_11
    return-void
.end method
