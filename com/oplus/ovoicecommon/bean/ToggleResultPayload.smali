.class public Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;
.source ""


# instance fields
.field private mItemName:Ljava/lang/String;

.field private mItemValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ToggleResult"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->mItemName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemValue()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->mItemValue:Z

    return p0
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->mItemValue:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->getItemName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/ToggleResultPayload;->getItemValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{\"itemName\":\"%s\", \"itemValue\": %b}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
