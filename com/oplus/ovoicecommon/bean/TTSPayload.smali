.class public Lcom/oplus/ovoicecommon/bean/TTSPayload;
.super Lcom/oplus/ovoicecommon/bean/CardPayload;
.source ""


# instance fields
.field private mTtsText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "TTS"

    invoke-direct {p0, v0}, Lcom/oplus/ovoicecommon/bean/CardPayload;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/ovoicecommon/bean/CardPayload;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTtsText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TTSPayload;->mTtsText:Ljava/lang/String;

    return-object p0
.end method

.method public setTtsText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/ovoicecommon/bean/TTSPayload;->mTtsText:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/ovoicecommon/bean/TTSPayload;->mTtsText:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "{\"ttsText\":\"%s\"}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
