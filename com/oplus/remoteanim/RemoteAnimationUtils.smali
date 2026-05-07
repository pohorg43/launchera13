.class public final Lcom/oplus/remoteanim/RemoteAnimationUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;,
        Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/remoteanim/RemoteAnimationUtils;

.field public static final KEY_CLOSING_PKG:Ljava/lang/String; = "key_closing_pkg"

.field public static final KEY_END_TARGET:Ljava/lang/String; = "endTarget"

.field public static final KEY_GESTURE_START:Ljava/lang/String; = "key_gesture_start"

.field public static final KEY_TRANSACTION:Ljava/lang/String; = "key_transaction"

.field public static final KEY_VIEW_LEASH:Ljava/lang/String; = "viewLeash"

.field private static final TAG:Ljava/lang/String; = "RemoteAnimationUtils"

.field public static final TARGET_LAST_TASK:I = 0x4

.field public static final TARGET_UNSET:I = 0x0

.field public static final TRANSACTION_DEFAULT:Ljava/lang/String; = "transaction_default"

.field public static final TRANSACTION_FINISH:Ljava/lang/String; = "transaction_finish"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "transaction_stop"

.field private static final launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final otherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;",
            ">;"
        }
    .end annotation
.end field

.field private static remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;

    invoke-direct {v0}, Lcom/oplus/remoteanim/RemoteAnimationUtils;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->INSTANCE:Lcom/oplus/remoteanim/RemoteAnimationUtils;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->otherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->notifyTransaction$lambda-0(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V

    return-void
.end method

.method public static final addLauncherRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final addOtherAppsRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->otherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final clearRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    if-nez v0, :cond_e

    return-void

    :cond_e
    const-string v1, "clearRemoteAnimationViewInfo: current = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", remote = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getFromPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAnimationUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getFromPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getFromPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    invoke-virtual {v0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewSurface()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->releaseSurface(Landroid/view/SurfaceControl;)V

    sget-object p0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method public static final getLauncherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static synthetic getLauncherAppsRemoteListeners$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->otherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static synthetic getOtherAppsRemoteListeners$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getRemoteAnimationViewInfo()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static synthetic getRemoteAnimationViewInfo$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final notifyTransaction(Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lb2/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lb2/b;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static final notifyTransaction$lambda-0(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;->notifyTransaction(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final releaseSurface(Landroid/view/SurfaceControl;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object v1, v0

    goto :goto_d

    :cond_5
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_d
    const-string v2, "releaseSurface: surfaceControl valid="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteAnimationUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1b

    goto :goto_36

    :cond_1b
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_22

    return-void

    :cond_22
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :goto_36
    return-void
.end method

.method public static final removeLauncherRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$ILauncherRemoteListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->launcherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final removeOtherAppsRemoteListener(Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->otherAppsRemoteListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final setRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "setRemoteAnimationViewInfo: info non-null "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", withoutRelease = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteAnimationUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_34

    sget-object p1, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getViewSurface()Landroid/view/SurfaceControl;

    move-result-object p1

    :goto_31
    invoke-static {p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->releaseSurface(Landroid/view/SurfaceControl;)V

    :cond_34
    sget-object p1, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic setRemoteAnimationViewInfo$default(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;ZILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-static {p0, p1}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->setRemoteAnimationViewInfo(Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;Z)V

    return-void
.end method

.method public static final shouldAnimateToRemoteViewPosition(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/remoteanim/RemoteAnimationUtils;->remoteAnimationViewInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/remoteanim/data/RemoteAnimationViewInfo;->getLaunchPackage()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static final transferViewToSurface(Landroid/view/View;)Landroid/view/SurfaceControl;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    const-string v2, "view.viewRootImpl"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    if-ltz v5, :cond_93

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-ltz v6, :cond_93

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-ltz v7, :cond_93

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_30

    goto :goto_93

    :cond_30
    if-eqz v5, :cond_34

    if-nez v6, :cond_39

    :cond_34
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    :cond_39
    new-instance v4, Landroid/view/SurfaceSession;

    invoke-direct {v4}, Landroid/view/SurfaceSession;-><init>()V

    new-instance v5, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v5, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    const-string v4, "launchView_surface"

    invoke-virtual {v5, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v4, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v3, "transferViewToSurface"

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    invoke-virtual {v3, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result p0

    if-eqz p0, :cond_78

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    const-string v0, "surface.lockHardwareCanvas()"

    goto :goto_7e

    :cond_78
    invoke-virtual {v3, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p0

    const-string v0, "surface.lockCanvas(null)"

    :goto_7e
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_82
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V
    :try_end_8a
    .catchall {:try_start_82 .. :try_end_8a} :catchall_8e

    invoke-virtual {v3, p0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-object v1

    :catchall_8e
    move-exception v0

    invoke-virtual {v3, p0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v0

    :cond_93
    :goto_93
    const-string p0, "RemoteAnimationUtils"

    const-string v1, "transferViewToSurface: launchView dimensions must not be negative"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
