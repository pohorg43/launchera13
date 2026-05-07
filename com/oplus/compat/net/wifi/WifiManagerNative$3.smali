.class Lcom/oplus/compat/net/wifi/WifiManagerNative$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/inner/net/wifi/WifiManagerWrapper$ActionListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/net/wifi/WifiManagerNative;->connect(Landroid/net/wifi/WifiManager;ILcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
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

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$3;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$3;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    return-void
.end method

.method public onSuccess()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$3;->val$listener:Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    invoke-interface {p0}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onSuccess()V

    return-void
.end method
