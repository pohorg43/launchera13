.class Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->startIndicatorDotAnim(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

.field public final synthetic val$pageIncreased:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    iput-boolean p2, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->val$pageIncreased:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$002(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z

    iget-boolean p1, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->val$pageIncreased:Z

    if-nez p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    invoke-static {p0}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$100(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;)Lcom/android/launcher/pageindicators/OplusPageIndicator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_13
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper$1;->this$0:Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;->access$002(Lcom/android/launcher/pageindicators/PageIndicatorAnimHelper;Z)Z

    return-void
.end method
