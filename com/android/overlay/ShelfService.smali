.class public final Lcom/android/overlay/ShelfService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final INSTANCE:Lcom/android/overlay/ShelfService;

.field public static final TAG:Ljava/lang/String; = "LauncherClient-ShelfService"

.field private static mShelfServiceConnected:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/overlay/ShelfService;

    invoke-direct {v0}, Lcom/android/overlay/ShelfService;-><init>()V

    sput-object v0, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/overlay/ShelfService;->unBindShelfServices$lambda-5(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/overlay/ShelfService;->bindShelfService$lambda-2(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V

    return-void
.end method

.method private static final bindShelfService$lambda-2(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V
    .registers 7

    const-string v0, "LauncherClient-ShelfService"

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "this$0"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_d
    const-string v1, "LauncherClient bindShelfService"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.coloros.assistantscreen"

    const-string v4, "com.oplus.assistantscreen.shelf.service.ShelfService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->getOverlayPriority()I

    move-result v2

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_d .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_35
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_40

    const-string p1, "bindService error = "

    invoke-static {p0, p1, v0}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method private static final unBindShelfServices$lambda-5(Landroid/content/Context;Lcom/android/overlay/ShelfService;)V
    .registers 3

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object p0, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/overlay/ShelfService;->setMShelfServiceConnected(Z)V

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_1c

    :catchall_17
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1c
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2a

    const-string/jumbo p1, "unbindService error = "

    const-string v0, "LauncherClient-ShelfService"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public final bindShelfService(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    sget-boolean v0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    if-nez v0, :cond_19

    new-instance v0, Lcom/android/overlay/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/overlay/a;-><init>(Landroid/content/Context;Lcom/android/overlay/ShelfService;I)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method public final getMShelfServiceConnected()Z
    .registers 1

    sget-boolean p0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    return p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    const-string p0, "LauncherClient-ShelfService"

    const-string p1, "onServiceConnected"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const-string p0, "LauncherClient-ShelfService"

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    return-void
.end method

.method public final setMShelfServiceConnected(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    return-void
.end method

.method public final unBindShelfServices(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    sget-boolean v0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    const-string v1, "LauncherClient,unBindShelfServices  connected:"

    const-string v2, "LauncherClient-ShelfService"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/overlay/ShelfService;->mShelfServiceConnected:Z

    if-eqz v0, :cond_22

    new-instance v0, Lcom/android/overlay/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/android/overlay/a;-><init>(Landroid/content/Context;Lcom/android/overlay/ShelfService;I)V

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_22
    return-void
.end method
