.class Lcom/android/launcher/touch/PullDownAnimator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/PullDownAnimator;->createPullCancelAnimator()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/touch/PullDownAnimator;


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/PullDownAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/touch/PullDownAnimator$1;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher/touch/PullDownAnimator$1;->this$0:Lcom/android/launcher/touch/PullDownAnimator;

    invoke-static {p0, p1}, Lcom/android/launcher/touch/PullDownAnimator;->access$000(Lcom/android/launcher/touch/PullDownAnimator;F)V

    return-void
.end method
