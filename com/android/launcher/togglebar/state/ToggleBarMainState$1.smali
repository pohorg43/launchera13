.class Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/togglebar/state/ToggleBarMainState;->onBackPressed(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/togglebar/state/ToggleBarMainState;


# direct methods
.method public constructor <init>(Lcom/android/launcher/togglebar/state/ToggleBarMainState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;->this$0:Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;->this$0:Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    iget-object p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState$1;->this$0:Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/togglebar/ToggleBarManager;->finish(Lcom/android/launcher/togglebar/state/ToggleBarBaseState;Z)V

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isStackEmpty()Z

    move-result p0

    if-nez p0, :cond_21

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->dumpStateStack()Ljava/lang/String;

    const-string p0, "ToggleBarMainState"

    const-string v0, "back pressed in main state, but stack is not empty!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->clearStateStack()V

    :cond_21
    return-void
.end method
