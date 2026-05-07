.class public Lcom/oplus/ovoicecommon/bean/ConfirmParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ovoicecommon/bean/IPayloadParameter;


# instance fields
.field private cancelText:Ljava/lang/String;

.field private confirmText:Ljava/lang/String;

.field private displayText:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private ttsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCancelText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->cancelText:Ljava/lang/String;

    return-object p0
.end method

.method public getConfirmText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->confirmText:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->displayText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->ttsText:Ljava/lang/String;

    return-object p0
.end method

.method public setCancelText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->cancelText:Ljava/lang/String;

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->confirmText:Ljava/lang/String;

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmParameter;->ttsText:Ljava/lang/String;

    return-void
.end method
