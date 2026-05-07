.class public Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;
.source ""


# instance fields
.field private itemName:Ljava/lang/String;

.field private itemValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ConfirmResult"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public isItemValue()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->itemValue:Z

    return p0
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/ovoicecommon/bean/ConfirmResultPayload;->itemValue:Z

    return-void
.end method
