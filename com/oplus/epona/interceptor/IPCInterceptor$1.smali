.class Lcom/oplus/epona/interceptor/IPCInterceptor$1;
.super Lcom/oplus/epona/ITransferCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/epona/interceptor/IPCInterceptor;->intercept(Lcom/oplus/epona/Interceptor$Chain;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/epona/interceptor/IPCInterceptor;

.field public final synthetic val$callback:Lcom/oplus/epona/Call$Callback;


# direct methods
.method public constructor <init>(Lcom/oplus/epona/interceptor/IPCInterceptor;Lcom/oplus/epona/Call$Callback;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/epona/interceptor/IPCInterceptor$1;->this$0:Lcom/oplus/epona/interceptor/IPCInterceptor;

    iput-object p2, p0, Lcom/oplus/epona/interceptor/IPCInterceptor$1;->val$callback:Lcom/oplus/epona/Call$Callback;

    invoke-direct {p0}, Lcom/oplus/epona/ITransferCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/epona/interceptor/IPCInterceptor$1;->val$callback:Lcom/oplus/epona/Call$Callback;

    invoke-interface {p0, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method
