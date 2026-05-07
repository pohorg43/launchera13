.class public final Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->onAnimationCreated(Landroid/animation/Animator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $anim$inlined:Landroid/animation/Animator;

.field public final synthetic $launchingFromRecents$inlined:Z

.field public final synthetic $launchingFromRecents$inlined$1:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;ZLandroid/animation/Animator;Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$launchingFromRecents$inlined:Z

    iput-object p3, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$anim$inlined:Landroid/animation/Animator;

    iput-boolean p5, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$launchingFromRecents$inlined$1:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "QuickStep"

    const-string p1, "OplusBaseAppLaunchAnimationRunner"

    const-string/jumbo v0, "onAnimationCancel()"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "OplusBaseAppLaunchAnimationRunner"

    const-string v0, "app launch anim end, so close gpu boost"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    invoke-static {p1}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->access$getMGpuBoostFd$p(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_27

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    invoke-static {v0}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->access$getMGpuBoostFd$p(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    :cond_27
    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->setAppLunchAnimationRunning(Z)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$launchingFromRecents$inlined:Z

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->access$notifyWhenWindowAnimate(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;ZZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "OplusBaseAppLaunchAnimationRunner"

    const-string v0, "app launch anim start, so open gpu boost"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$anim$inlined:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    iget-object v0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    const-string v1, "OSENSE_ACTION_LAUNCHER_OPEN_APP_ANIMATION"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType$default(Lcom/android/common/util/LauncherBooster$GpuBoost;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->access$setMGpuBoostFd$p(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;J)V

    iget-object p1, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->this$0:Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;

    iget-boolean p0, p0, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner$onAnimationCreated$$inlined$addListener$default$1;->$launchingFromRecents$inlined$1:Z

    const/4 v0, 0x1

    invoke-static {p1, v0, p0}, Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;->access$notifyWhenWindowAnimate(Lcom/android/launcher3/OplusBaseAppLaunchAnimationRunner;ZZ)V

    return-void
.end method
