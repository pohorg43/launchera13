.class Lcom/android/launcher3/OplusLauncherInjector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$oplusLauncherModel:Lcom/android/launcher3/OplusLauncherModel;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/OplusLauncherInjector$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/launcher3/OplusLauncherInjector$1;->val$oplusLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    const-string v0, "Launcher"

    const-string/jumbo v1, "rebindCallbacks at queueIdle"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/OplusLauncherInjector$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusLauncherInjector$1;->val$oplusLauncherModel:Lcom/android/launcher3/OplusLauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    const/4 p0, 0x0

    return p0
.end method
