.class Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;
.super Lcom/oplus/putt/IPuttObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/putt/OPlusPuttTaskObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OPlusPuttObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/putt/OPlusPuttTaskObserver;


# direct methods
.method private constructor <init>(Lcom/oplus/putt/OPlusPuttTaskObserver;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;->this$0:Lcom/oplus/putt/OPlusPuttTaskObserver;

    invoke-direct {p0}, Lcom/oplus/putt/IPuttObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/putt/OPlusPuttTaskObserver;Lcom/oplus/putt/OPlusPuttTaskObserver$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;-><init>(Lcom/oplus/putt/OPlusPuttTaskObserver;)V

    return-void
.end method


# virtual methods
.method public onPuttEnter(Lcom/oplus/putt/OplusPuttEnterInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;->this$0:Lcom/oplus/putt/OPlusPuttTaskObserver;

    invoke-static {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->access$100(Lcom/oplus/putt/OPlusPuttTaskObserver;)V

    return-void
.end method

.method public onPuttExit(Lcom/oplus/putt/OplusPuttExitInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;->this$0:Lcom/oplus/putt/OPlusPuttTaskObserver;

    invoke-static {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->access$100(Lcom/oplus/putt/OPlusPuttTaskObserver;)V

    return-void
.end method

.method public onPuttReplace(Lcom/oplus/putt/OplusPuttEnterInfo;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/putt/OPlusPuttTaskObserver$OPlusPuttObserver;->this$0:Lcom/oplus/putt/OPlusPuttTaskObserver;

    invoke-static {p0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->access$100(Lcom/oplus/putt/OPlusPuttTaskObserver;)V

    return-void
.end method
