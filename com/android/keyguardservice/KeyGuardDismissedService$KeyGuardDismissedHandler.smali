.class Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;
.super Lcom/android/common/util/StaticHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguardservice/KeyGuardDismissedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGuardDismissedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/common/util/StaticHandler<",
        "Lcom/android/keyguardservice/KeyGuardDismissedService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/keyguardservice/KeyGuardDismissedService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/util/StaticHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;Lcom/android/keyguardservice/KeyGuardDismissedService;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/common/util/StaticHandler;->handleMessage(Landroid/os/Message;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/android/keyguardservice/KeyGuardDismissedService;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/android/keyguardservice/KeyGuardDismissedService;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguardservice/KeyGuardDismissedService$KeyGuardDismissedHandler;->handleMessage(Landroid/os/Message;Lcom/android/keyguardservice/KeyGuardDismissedService;)V

    return-void
.end method
