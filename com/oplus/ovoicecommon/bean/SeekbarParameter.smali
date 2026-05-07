.class public Lcom/oplus/ovoicecommon/bean/SeekbarParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ovoicecommon/bean/IPayloadParameter;


# instance fields
.field private mDisplayText:Ljava/lang/String;

.field private mItemName:Ljava/lang/String;

.field private mItemText:Ljava/lang/String;

.field private mItemValue:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mTtsText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15

    const-string v7, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mDisplayText:Ljava/lang/String;

    iput-object p7, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mTtsText:Ljava/lang/String;

    iput p3, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemValue:I

    iput-object p2, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemText:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMinValue:I

    iput p5, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMaxValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mDisplayText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemName:Ljava/lang/String;

    return-object p0
.end method

.method public getItemText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemText:Ljava/lang/String;

    return-object p0
.end method

.method public getItemValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemValue:I

    return p0
.end method

.method public getMaxValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMinValue:I

    return p0
.end method

.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mTtsText:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mDisplayText:Ljava/lang/String;

    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemName:Ljava/lang/String;

    return-void
.end method

.method public setItemText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemText:Ljava/lang/String;

    return-void
.end method

.method public setItemValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mItemValue:I

    return-void
.end method

.method public setMaxValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMaxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mMinValue:I

    return-void
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SeekbarParameter;->mTtsText:Ljava/lang/String;

    return-void
.end method
