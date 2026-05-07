.class Lcom/android/launcher/guide/GuidePageManager$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePageManager;->doCollapsedAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/guide/GuidePageManager$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager$5;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/guide/GuidePageManager$5;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/guide/GuidePageManager$5;->lambda$onAnimationEnd$1()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {v0}, Lcom/android/launcher/guide/GuidePageManager;->access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIGuideBehavior;->setState(I)V

    :cond_12
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "GuidePageManager"

    const-string v0, " onAnimationEnd"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$900(Lcom/android/launcher/guide/GuidePageManager;)Lcom/coui/appcompat/panel/COUIGuideBehavior;

    move-result-object p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->isRemoveAnimationOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$1000(Lcom/android/launcher/guide/GuidePageManager;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v0}, Lcom/android/launcher/guide/GuidePageManager;->access$1002(Lcom/android/launcher/guide/GuidePageManager;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_31
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$1000(Lcom/android/launcher/guide/GuidePageManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/guide/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/guide/e;-><init>(Lcom/android/launcher/guide/GuidePageManager$5;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_52

    :cond_43
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$5;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$100(Lcom/android/launcher/guide/GuidePageManager;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p1

    new-instance v0, Lcom/android/launcher/guide/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/guide/e;-><init>(Lcom/android/launcher/guide/GuidePageManager$5;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_52
    :goto_52
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
