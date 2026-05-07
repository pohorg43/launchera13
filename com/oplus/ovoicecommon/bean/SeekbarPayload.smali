.class public Lcom/oplus/ovoicecommon/bean/SeekbarPayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;
.source ""


# instance fields
.field private mDisplayText:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemText:Ljava/lang/String;

.field private mItemValue:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mStyleType:Ljava/lang/String;

.field private mTtsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Seekbar"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemValue:I

    return p0
.end method

.method public getMaxValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mMinValue:I

    return p0
.end method

.method public getStyleType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mStyleType:Ljava/lang/String;

    return-object p0
.end method

.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mTtsText:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mDisplayText:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemText:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mItemValue:I

    return-void
.end method

.method public setMaxValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mMaxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mMinValue:I

    return-void
.end method

.method public setStyleType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mStyleType:Ljava/lang/String;

    return-void
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->mTtsText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getItemName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getItemText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getItemValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getMinValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getMaxValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getTtsText()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_3c

    move-object v1, v2

    goto :goto_40

    :cond_3c
    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getTtsText()Ljava/lang/String;

    move-result-object v1

    :goto_40
    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4b

    goto :goto_4f

    :cond_4b
    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SeekbarPayload;->getDisplayText()Ljava/lang/String;

    move-result-object v2

    :goto_4f
    aput-object v2, v0, v1

    const-string p0, "{\"itemName\":\"%s\", \"itemText\":\"%s\",  \"itemValue\":%d,\"minValue\":%d, \"maxValue\":%d,\"ttsText\":\"%s\", \"displayText\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
