.class public final synthetic Lcom/android/systemui/shared/system/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

.field public final synthetic b:Landroid/os/IBinder;

.field public final synthetic c:Landroid/window/TransitionInfo;

.field public final synthetic d:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/c;->a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iput-object p2, p0, Lcom/android/systemui/shared/system/c;->b:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/systemui/shared/system/c;->c:Landroid/window/TransitionInfo;

    iput-object p4, p0, Lcom/android/systemui/shared/system/c;->d:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, Lcom/android/systemui/shared/system/c;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/shared/system/c;->a:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iget-object v1, p0, Lcom/android/systemui/shared/system/c;->b:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/systemui/shared/system/c;->c:Landroid/window/TransitionInfo;

    iget-object v3, p0, Lcom/android/systemui/shared/system/c;->d:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/systemui/shared/system/c;->e:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->c(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method
