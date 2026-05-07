.class public Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/ovoicecommon/bean/ISkillResultCard;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/ovoicecommon/bean/ISkillResultCard;"
    }
.end annotation


# instance fields
.field private mPayload:Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->mPayload:Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/CardPayload;->mCardType:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->mPayload:Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->mPayload:Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;

    return-object p0
.end method

.method public setPayload(Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->mPayload:Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->getCardType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oplus/ovoicecommon/bean/SkillInteractionResultCard;->getPayload()Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "{\"cardType\":\"%s\", \"packageName\":\"%s\",\"payload\":%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
