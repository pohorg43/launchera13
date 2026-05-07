.class public Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;
.super Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;
.source ""


# instance fields
.field private itemName:Ljava/lang/String;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ListContainerResult"

    invoke-direct {p0, p1, v0}, Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->itemName:Ljava/lang/String;

    return-object p0
.end method

.method public getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->list:Ljava/util/List;

    return-object p0
.end method

.method public setItemName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->itemName:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/ovoicecommon/bean/InteractionResultCardPayload;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/ListContainerResultPayload;->list:Ljava/util/List;

    return-void
.end method
