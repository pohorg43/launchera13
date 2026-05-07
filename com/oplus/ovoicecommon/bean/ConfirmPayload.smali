.class public Lcom/oplus/ovoicecommon/bean/ConfirmPayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;
.source ""


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private displayText:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private ttsText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Confirm"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCancelText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method public getConfirmText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->displayText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->ttsText:Ljava/lang/String;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->cancelText:Ljava/lang/String;

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->confirmText:Ljava/lang/String;

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->ttsText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->displayText:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_a

    move-object v1, v2

    :cond_a
    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->ttsText:Ljava/lang/String;

    if-nez v3, :cond_13

    goto :goto_14

    :cond_13
    move-object v2, v3

    :goto_14
    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->itemName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->confirmText:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmPayload;->cancelText:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "{\"displayText\":\"%s\", \"ttsText\":\"%s\",  \"itemName\":\"%s\",\"confirmText\":\"%s\", \"cancelText\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
