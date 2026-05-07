.class Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;
.super Lcom/android/wm/shell/back/IBackAnimation$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/back/BackAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IBackAnimationImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/back/BackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/back/IBackAnimation$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method

.method public static synthetic a(Landroid/window/IOnBackInvokedCallback;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$setBackToLauncherCallback$0(Landroid/window/IOnBackInvokedCallback;Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$clearBackToLauncherCallback$1(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->lambda$onBackToLauncherAnimationFinished$2(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method private static synthetic lambda$clearBackToLauncherCallback$1(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->access$400(Lcom/android/wm/shell/back/BackAnimationController;)V

    return-void
.end method

.method private static synthetic lambda$onBackToLauncherAnimationFinished$2(Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->onBackToLauncherAnimationFinished()V

    return-void
.end method

.method private static synthetic lambda$setBackToLauncherCallback$0(Landroid/window/IOnBackInvokedCallback;Lcom/android/wm/shell/back/BackAnimationController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/back/BackAnimationController;->setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V

    return-void
.end method


# virtual methods
.method public clearBackToLauncherCallback()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    sget-object v0, Lcom/android/wm/shell/back/e;->a:Lcom/android/wm/shell/back/e;

    const-string v1, "clearBackToLauncherCallback"

    invoke-static {p0, v1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    return-void
.end method

.method public onBackToLauncherAnimationFinished()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    sget-object v0, Lcom/android/wm/shell/back/f;->a:Lcom/android/wm/shell/back/f;

    const-string v1, "onBackToLauncherAnimationFinished"

    invoke-static {p0, v1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setBackToLauncherCallback(Landroid/window/IOnBackInvokedCallback;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl;->mController:Lcom/android/wm/shell/back/BackAnimationController;

    new-instance v0, Lcom/android/wm/shell/back/d;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/back/d;-><init>(Landroid/window/IOnBackInvokedCallback;)V

    const-string p1, "setBackToLauncherCallback"

    invoke-static {p0, p1, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
