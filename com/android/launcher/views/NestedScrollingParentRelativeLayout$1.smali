.class Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->startSpringBackAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

.field public final synthetic val$isLandScape:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    iput-boolean p2, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;->val$isLandScape:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;->val$isLandScape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-virtual {p0, v1, p1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_1a

    :cond_15
    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$1;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    :goto_1a
    return-void
.end method
