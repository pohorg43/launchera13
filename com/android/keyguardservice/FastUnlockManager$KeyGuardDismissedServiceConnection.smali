.class final Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguardservice/FastUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KeyGuardDismissedServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/keyguardservice/FastUnlockManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguardservice/FastUnlockManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "FastUnlockManager"

    const-string v0, "KeyGuardDismissedServiceConnection connected"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "FastUnlockManager"

    const-string v0, "KeyGuardDismissedServiceConnection disconnected"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguardservice/FastUnlockManager$KeyGuardDismissedServiceConnection;->this$0:Lcom/android/keyguardservice/FastUnlockManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguardservice/FastUnlockManager;->access$setMKeyGuardDismissedServiceMessenger$p(Lcom/android/keyguardservice/FastUnlockManager;Landroid/os/Messenger;)V

    return-void
.end method
