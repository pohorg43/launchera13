.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusQuickstepTransitionManagerImpl"

    const-string v0, "Launcher resume anim in ALL_APPS -- onAnimationCancel!!"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$6;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-static {p0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->access$400(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)V

    return-void
.end method
