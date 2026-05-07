.class Lcom/oplus/compat/telephony/TelephonyManagerNative$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/epona/Call$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/telephony/TelephonyManagerNative;->listen(Lcom/oplus/compat/telephony/PhoneStateListenerNative;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$events:I

.field public final synthetic val$listener:Lcom/oplus/compat/telephony/PhoneStateListenerNative;


# direct methods
.method public constructor <init>(ILcom/oplus/compat/telephony/PhoneStateListenerNative;)V
    .registers 3

    iput p1, p0, Lcom/oplus/compat/telephony/TelephonyManagerNative$1;->val$events:I

    iput-object p2, p0, Lcom/oplus/compat/telephony/TelephonyManagerNative$1;->val$listener:Lcom/oplus/compat/telephony/PhoneStateListenerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/oplus/epona/Response;)V
    .registers 6

    invoke-virtual {p1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_12

    const-string p0, "onReceive: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "TelephonyManagerNative"

    invoke-static {p1, p0, v0}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x800

    iget v1, p0, Lcom/oplus/compat/telephony/TelephonyManagerNative$1;->val$events:I

    if-ne v0, v1, :cond_38

    iget-object p0, p0, Lcom/oplus/compat/telephony/TelephonyManagerNative$1;->val$listener:Lcom/oplus/compat/telephony/PhoneStateListenerNative;

    new-instance v0, Lcom/oplus/compat/telephony/PreciseCallStateNative;

    const-string v1, "ringingCall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "foregroundCall"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "backgroundCall"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/oplus/compat/telephony/PreciseCallStateNative;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/oplus/compat/telephony/PhoneStateListenerNative;->onPreciseCallStateChanged(Lcom/oplus/compat/telephony/PreciseCallStateNative;)V

    :cond_38
    return-void
.end method
