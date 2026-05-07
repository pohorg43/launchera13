.class Lcom/oplus/compat/net/wifi/WifiManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/net/wifi/WifiManagerNative;->connect(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 4

    const-string v0, "code is : "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManagerNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_23

    return-void

    :cond_23
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    const-string v1, "onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "onFailure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_4e

    :cond_3d
    const-string v0, "errorCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    goto :goto_4e

    :cond_49
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$1;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onSuccess()V

    :cond_4e
    :goto_4e
    return-void
.end method
