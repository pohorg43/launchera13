.class Lcom/oplus/compatui/OplusFullscreenSwitchController$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compatui/OplusFullscreenSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;


# direct methods
.method public constructor <init>(Lcom/oplus/compatui/OplusFullscreenSwitchController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$1;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/UserSwitchObserver;->onUserSwitchComplete(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFSC"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$1;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {v0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$002(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    iget-object p0, p0, Lcom/oplus/compatui/OplusFullscreenSwitchController$1;->this$0:Lcom/oplus/compatui/OplusFullscreenSwitchController;

    invoke-static {p0, p1}, Lcom/oplus/compatui/OplusFullscreenSwitchController;->access$100(Lcom/oplus/compatui/OplusFullscreenSwitchController;I)V

    :cond_26
    return-void
.end method
