.class public Lcom/oplus/shield/verify/NaviVerifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/shield/verify/NaviVerifier;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p0, "Navi Authentication Failed Cause Plugin Signature Empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Navi Authentication Failed Cause Caller Package Empty"

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    return v1

    :cond_19
    iget-object p0, p0, Lcom/oplus/shield/verify/NaviVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method
