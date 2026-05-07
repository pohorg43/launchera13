.class Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    iget-object p1, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-static {p1}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->access$000(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p0, p0, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout$2;->this$0:Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;

    invoke-static {p0}, Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;->access$000(Lcom/android/launcher/views/NestedScrollingParentRelativeLayout;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void
.end method
