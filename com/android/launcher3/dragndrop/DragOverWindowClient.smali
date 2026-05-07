.class public final Lcom/android/launcher3/dragndrop/DragOverWindowClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;,
        Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

.field private static final TAG:Ljava/lang/String; = "LauncherClient-DragOverWindowClient"

.field private static connectedCallback:Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

.field private static dragCallbackImpl:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

.field private static final sc:Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

.field private static service:Lcom/heytap/assist/ILauncherDrag;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    new-instance v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->sc:Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bindDragSever(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragServerBinderAlive()Z

    move-result p0

    const-string v0, "LauncherClient-DragOverWindowClient"

    if-eqz p0, :cond_47

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    const-string v1, "dragServerBinderAlive: service = "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_46

    :try_start_15
    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getService()Lcom/heytap/assist/ILauncherDrag;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/heytap/assist/ILauncherDrag;->onEditStateChanged(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_35
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_46

    :cond_3c
    const-string/jumbo p1, "service onEditStateChanged fail: e = "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result p0

    if-nez p0, :cond_57

    const-string p0, "bindDragSever: but card permission is disallowed, return."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_57
    const-string p0, "LauncherClient bindDragSever"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string v1, "heytap.intent.action.assistantscreen.drag.server"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_68

    :goto_66
    move-object v2, v1

    goto :goto_76

    :cond_68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_6f

    goto :goto_66

    :cond_6f
    const v3, 0x7f1203d7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_76
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_7c

    goto :goto_8d

    :cond_7c
    :try_start_7c
    sget-object v2, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->sc:Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->getOverlayPriority()I

    move-result v3

    invoke-virtual {p1, p0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_85} :catch_86

    goto :goto_8d

    :catch_86
    const-string p0, "Error occur while bind drag service"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    :goto_8d
    return-void
.end method

.method public final dragServerBinderAlive()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    if-eqz p0, :cond_13

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final getConnectedCallback()Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->connectedCallback:Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    return-object p0
.end method

.method public final getDragCallbackImpl()Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragCallbackImpl:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    return-object p0
.end method

.method public final getSc$OplusLauncher_OPPOPallExportAallRelease()Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->sc:Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

    return-object p0
.end method

.method public final getService()Lcom/heytap/assist/ILauncherDrag;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    return-object p0
.end method

.method public final setConnectedCallback(Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->connectedCallback:Lcom/android/launcher3/dragndrop/DragOverWindowClient$ConnectedCallBack;

    return-void
.end method

.method public final setDragCallbackImpl(Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragCallbackImpl:Lcom/android/launcher3/dragndrop/LauncherDragCallbackProxy;

    return-void
.end method

.method public final setService(Lcom/heytap/assist/ILauncherDrag;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    return-void
.end method

.method public final unBindDragSever(Landroid/content/Context;)V
    .registers 3

    const-string p0, "LauncherClient-DragOverWindowClient"

    const-string v0, "LauncherClient unBindDragSever"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->service:Lcom/heytap/assist/ILauncherDrag;

    if-nez v0, :cond_c

    goto :goto_24

    :cond_c
    if-nez p1, :cond_f

    goto :goto_1e

    :cond_f
    :try_start_f
    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->getSc$OplusLauncher_OPPOPallExportAallRelease()Lcom/android/launcher3/dragndrop/DragOverWindowClient$SC;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_19

    goto :goto_1e

    :catch_19
    const-string p1, "Error occur while unbind drag service"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    sget-object p0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->setService(Lcom/heytap/assist/ILauncherDrag;)V

    :goto_24
    return-void
.end method
