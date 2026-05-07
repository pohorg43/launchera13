.class Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->lambda$onExpandPip$2(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->lambda$onPipAnimationStarted$0(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method

.method public static synthetic c(IILcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->lambda$onPipResourceDimensionsChanged$1(IILcom/android/wm/shell/pip/IPipAnimationListener;)V

    return-void
.end method

.method private static synthetic lambda$onExpandPip$2(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onExpandPip()V

    return-void
.end method

.method private static synthetic lambda$onPipAnimationStarted$0(Lcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onPipAnimationStarted()V

    return-void
.end method

.method private static synthetic lambda$onPipResourceDimensionsChanged$1(IILcom/android/wm/shell/pip/IPipAnimationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/pip/IPipAnimationListener;->onPipResourceDimensionsChanged(II)V

    return-void
.end method


# virtual methods
.method public onExpandPip()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->access$2400(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/pip/phone/o;->a:Lcom/android/wm/shell/pip/phone/o;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method

.method public onPipAnimationStarted()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->access$2400(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/pip/phone/p;->a:Lcom/android/wm/shell/pip/phone/p;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method

.method public onPipResourceDimensionsChanged(II)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$1;->this$0:Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;

    invoke-static {p0}, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;->access$2400(Lcom/android/wm/shell/pip/phone/PipController$IPipImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/phone/n;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/pip/phone/n;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method
