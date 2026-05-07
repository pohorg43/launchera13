.class public final Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragOverWindowClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-static {p2}, Lcom/heytap/assist/ILauncherDrag$Stub;->asInterface(Landroid/os/IBinder;)Lcom/heytap/assist/ILauncherDrag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setService(Lcom/heytap/assist/ILauncherDrag;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onServiceConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", dragCallbackImpl= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LauncherClient-DragOverWindowClient"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p1

    if-nez p1, :cond_3e

    const/4 p1, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;->getCallBackImpl()Lcom/android/launcher3/dragndrop/IDragCallback;

    move-result-object p1

    :goto_42
    const-string v0, "dragCallback = "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4b
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_59

    :cond_52
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/heytap/assist/ILauncherDrag;->setLauncherDragCallback(Lcom/heytap/assist/ILauncherDragCallback;)V

    :goto_59
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getConnectedCallback()Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    move-result-object p1

    if-nez p1, :cond_60

    goto :goto_6c

    :cond_60
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;->onServiceConnectedChanged(Lcom/heytap/assist/ILauncherDrag;)V
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_6c
    :goto_6c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setService(Lcom/heytap/assist/ILauncherDrag;)V

    const-string v0, "LauncherClient-DragOverWindowClient"

    const-string/jumbo v1, "onServiceDisconnected:"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getConnectedCallback()Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    move-result-object p0

    if-nez p0, :cond_15

    goto :goto_18

    :cond_15
    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;->onServiceConnectedChanged(Lcom/heytap/assist/ILauncherDrag;)V

    :goto_18
    return-void
.end method
