.class Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->lambda$onServiceConnectedChanged$0()V

    return-void
.end method

.method private synthetic lambda$onServiceConnectedChanged$0()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSever()V

    return-void
.end method


# virtual methods
.method public onServiceConnectedChanged(Lcom/heytap/assist/ILauncherDrag;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {v0, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$002(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Lcom/heytap/assist/ILauncherDrag;)Lcom/heytap/assist/ILauncherDrag;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$100(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p0, v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$202(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Z)Z

    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$000(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/heytap/assist/ILauncherDrag;

    move-result-object v1

    if-nez v1, :cond_47

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    const-string/jumbo v1, "onServiceConnectedChanged: disconnect, launcher destroyed = "

    const-string v2, "DragInterfaceManager"

    invoke-static {v1, p1, v2}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_5e

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$300(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p1

    if-eqz p1, :cond_5e

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$300(Lcom/android/launcher3/dragndrop/DragInterfaceManager;)Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->getMUIHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/f;-><init>(Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5e

    :cond_47
    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->setDragListener()V

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->notifyEditStateChanged(Z)V

    invoke-static {}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isWorkspaceWpBright()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->onWallpaperBrightnessChanged(Z)V

    :cond_5e
    :goto_5e
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragInterfaceManager$1;->this$0:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-static {p0, v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->access$202(Lcom/android/launcher3/dragndrop/DragInterfaceManager;Z)Z

    return-void
.end method
