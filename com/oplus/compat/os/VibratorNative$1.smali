.class Lcom/oplus/compat/os/VibratorNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/os/VibratorNative;->addVibratorStateListener(Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;


# direct methods
.method public constructor <init>(Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/os/VibratorNative$1;->val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/compat/os/VibratorNative$1;->val$listener:Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;

    if-eqz p0, :cond_17

    const-string v0, "isVibrating"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/os/OnVibratorStateChangedListenerNative;->onVibratorStateChanged(Z)V

    :cond_17
    return-void
.end method
