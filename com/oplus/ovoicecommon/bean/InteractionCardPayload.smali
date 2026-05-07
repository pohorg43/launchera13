.class public Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;
.super Lcom/oplus/ovoicecommon/bean/CardPayload;
.source ""


# instance fields
.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/ovoicecommon/bean/CardPayload;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/InteractionCardPayload;->mPackageName:Ljava/lang/String;

    return-void
.end method
