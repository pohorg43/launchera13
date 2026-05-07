.class Lcom/android/launcher/Launcher$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/HomeKeyObserver$OnHomeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->listenHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeKeyLongPressed()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$1200(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-interface {v0, p0}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHomeKeyLongPressed(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public onHomeKeyPressed()V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "onHomeKeyPressed -- mPaused = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->access$800(Lcom/android/launcher/Launcher;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OLauncher"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher/Launcher;->access$902(Lcom/android/launcher/Launcher;Z)Z

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isBrowserNewsVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v0, v2, :cond_54

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$1000(Lcom/android/launcher/Launcher;)Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    check-cast v0, Lo1/d;

    iget-object v2, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v2}, Lcom/android/launcher/Launcher;->access$1100(Lcom/android/launcher/Launcher;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_51

    invoke-virtual {v0, v3, v1}, Lo1/d;->b(IZ)V

    goto :goto_54

    :cond_51
    invoke-virtual {v0, v3}, Lo1/d;->hideOverlay(I)V

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->access$1200(Lcom/android/launcher/Launcher;)Lcom/android/launcher/ILauncherLifecycleObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-interface {v0, v2}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHomeKeyPressed(Lcom/android/launcher/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    iget-boolean v2, v0, Lcom/android/launcher/Launcher;->mIsUserUnlocked:Z

    if-eqz v2, :cond_68

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->removeLoadingView()V

    :cond_68
    iget-object p0, p0, Lcom/android/launcher/Launcher$7;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0, v1}, Lcom/android/launcher/Launcher;->setWidgetTouchResizeEnable(Z)V

    return-void
.end method
