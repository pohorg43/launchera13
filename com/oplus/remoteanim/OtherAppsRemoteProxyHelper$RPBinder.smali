.class public final Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;
.super Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RPBinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/remoteanim/proxyinterface/IOtherAppsRemoteProxy$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(FLcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onViewAlphaChanged$lambda-2(FLcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void
.end method

.method public static synthetic b(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationSurfaceSave$lambda-3(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationStart$lambda-0(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void
.end method

.method public static synthetic d(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->onRecentsAnimationFinished$lambda-1(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V

    return-void
.end method

.method private static final onRecentsAnimationFinished$lambda-1(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onRecentsAnimationFinished(Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onRecentsAnimationStart$lambda-0(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onRecentsAnimationStart(Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onRecentsAnimationSurfaceSave$lambda-3(Landroid/os/Bundle;Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V

    return-void
.end method

.method private static final onViewAlphaChanged$lambda-2(FLcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;)V
    .registers 2

    invoke-interface {p1, p0}, Lcom/oplus/remoteanim/RemoteAnimationUtils$IOtherAppsRemoteListener;->onViewAlphaChanged(F)V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationFinished(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationFinished()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lb2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb2/b;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRecentsAnimationStart(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lb2/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lb2/b;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    const-string p0, "OtherAppsRemoteProxyHelper"

    const-string v0, "onRecentsAnimationSurfaceSave()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lb2/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lb2/b;-><init>(Landroid/os/Bundle;I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 4
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    invoke-static {}, Lcom/oplus/remoteanim/RemoteAnimationUtils;->getOtherAppsRemoteListeners()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/views/i;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/quickstep/views/i;-><init>(FI)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
