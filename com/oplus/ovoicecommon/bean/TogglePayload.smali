.class public Lcom/oplus/ovoicecommon/bean/TogglePayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;
.source ""


# instance fields
.field private mDisplayText:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemText:Ljava/lang/String;

.field private mItemValue:Z

.field private mTtsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Toggle"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemValue()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemValue:Z

    return p0
.end method

.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mTtsText:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mDisplayText:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemText:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mItemValue:Z

    return-void
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/TogglePayload;->mTtsText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getItemName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getItemText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getItemValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getTtsText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_26

    move-object v1, v2

    goto :goto_2a

    :cond_26
    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getTtsText()Ljava/lang/String;

    move-result-object v1

    :goto_2a
    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_35

    goto :goto_39

    :cond_35
    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/TogglePayload;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    :goto_39
    aput-object v2, v0, v1

    const-string p0, "{\"itemName\":\"%s\", \"itemText\":\"%s\",  \"itemValue\":%b,\"ttsText\":\"%s\", \"displayText\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
