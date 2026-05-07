.class public Lcom/oplus/shield/authcode/info/PublicKeyInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mPublicKey:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mPublicKey:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->mStatus:Ljava/lang/String;

    return-void
.end method
