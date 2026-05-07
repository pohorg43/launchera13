.class Lcom/android/launcher/powersave/SuperPowerModeManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/powersave/SuperPowerModeManager;->showOpenSuperPowerSaveModeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

.field public final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/view/WindowManager;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    iput-object p2, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->val$windowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->lambda$onAnimationEnd$0(Landroid/view/WindowManager;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/WindowManager;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$1000(Lcom/android/launcher/powersave/SuperPowerModeManager;)Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->setWindowFlagsNotFullScreen()V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$900(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$900(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$902(Lcom/android/launcher/powersave/SuperPowerModeManager;Landroid/view/View;)Landroid/view/View;

    :cond_22
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    const-string p1, "SuperPowerModeManager"

    const-string/jumbo v0, "showOpenSuperPowerSaveModeAnim: close open SuperPowerSaveMode anim"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$900(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1a

    const-string/jumbo p0, "showOpenSuperPowerSaveModeAnim：mOpenanimLayout is null"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->this$0:Lcom/android/launcher/powersave/SuperPowerModeManager;

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->access$900(Lcom/android/launcher/powersave/SuperPowerModeManager;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->val$windowManager:Landroid/view/WindowManager;

    new-instance v1, Lcom/android/launcher/powersave/b;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher/powersave/b;-><init>(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
