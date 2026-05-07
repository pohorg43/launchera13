.class Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;
.super Lcom/oplus/app/IOplusAccessControlObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/privacy/OplusPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/privacy/OplusPrivacyManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-direct {p0}, Lcom/oplus/app/IOplusAccessControlObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptEnableChange(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacySwitchAndData(Z)V

    return-void
.end method

.method public onEncryptStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/privacy/OplusPrivacyManager$1;->this$0:Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->loadPrivacyData()V

    return-void
.end method

.method public onHideEnableChange(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onHideStateChange(Lcom/oplus/app/OplusAccessControlInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
