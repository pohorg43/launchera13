.class public Lcom/oplus/shield/utils/SignVerifyUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final PERMISSION_LENGTH_BYTE_LEN:I = 0x4

.field private static final RESERVED_BYTE_LEN:I = 0x4

.field private static final VERSION_BYTE_LEN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPublicKey([BLjava/lang/String;)Ljava/security/PublicKey;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_d
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertPublicKey get exception - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPublicKeyInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/shield/authcode/info/PublicKeyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oplus/shield/authcode/info/PublicKeyInfo;

    invoke-direct {v1}, Lcom/oplus/shield/authcode/info/PublicKeyInfo;-><init>()V

    const-string v2, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEvE0DoqARwzQKOb/b0cx7B0BQ4Ux8mTdND8rX9KHproZAuOP/M049VdcJ53sjVujUF1URD4IGMtkId2QYwXoDHw=="

    invoke-virtual {v1, v2}, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->setPublicKey(Ljava/lang/String;)V

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static getTargetSignerBytes(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B)[B
    .registers 11

    invoke-static {p0, p1}, Lcom/oplus/shield/utils/CertUtils;->getCertificateSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/shield/utils/CertUtils;->covertByteDigestNoSha1(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, p0

    add-int/2addr p1, p3

    const/4 v0, 0x2

    add-int/2addr p1, v0

    const/4 v1, 0x4

    add-int/2addr p1, v1

    add-int/2addr p1, v1

    new-array p1, p1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, v2, p1, v2, v3}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v2, p1, v3, v3}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    invoke-static {p0, v2, p1, v0, p2}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    add-int/2addr p2, v0

    invoke-static {p5, v2, p1, p2, v1}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p0

    add-int/lit8 p2, p2, 0x6

    invoke-static {p6, v2, p1, p2, p3}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p3}, Lcom/oplus/shield/utils/SystemUtils;->int2byte(I)[B

    move-result-object p2

    array-length p0, p0

    add-int/2addr p0, p3

    add-int/lit8 p0, p0, 0x6

    invoke-static {p2, v2, p1, p0, v1}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private static isSignerSuccess(Ljava/lang/String;Ljava/security/Signature;[B[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/shield/utils/Base64Utils;->base642Byte(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "EC"

    invoke-static {p0, v0}, Lcom/oplus/shield/utils/SignVerifyUtils;->convertPublicKey([BLjava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    invoke-virtual {p1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p1, p2}, Ljava/security/Signature;->update([B)V

    invoke-virtual {p1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method

.method public static isVerify(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B[B)Z
    .registers 8

    invoke-static/range {p0 .. p6}, Lcom/oplus/shield/utils/SignVerifyUtils;->getTargetSignerBytes(Landroid/content/Context;Ljava/lang/String;[BI[B[B[B)[B

    move-result-object p0

    const/4 p1, 0x0

    :try_start_5
    const-string p2, "SHA256withECDSA"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    invoke-static {}, Lcom/oplus/shield/utils/SignVerifyUtils;->getPublicKeyInfos()Ljava/util/List;

    move-result-object p3
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_f} :catch_40
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_f} :catch_40
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_f} :catch_40

    move p4, p1

    :goto_10
    :try_start_10
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p5

    if-ge p1, p5, :cond_5d

    const-string p5, "OK"

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/oplus/shield/authcode/info/PublicKeyInfo;

    invoke-virtual {p6}, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->getStatus()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3a

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/oplus/shield/authcode/info/PublicKeyInfo;

    invoke-virtual {p5}, Lcom/oplus/shield/authcode/info/PublicKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5, p2, p0, p7}, Lcom/oplus/shield/utils/SignVerifyUtils;->isSignerSuccess(Ljava/lang/String;Ljava/security/Signature;[B[B)Z

    move-result p4
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10 .. :try_end_36} :catch_3d
    .catch Ljava/security/SignatureException; {:try_start_10 .. :try_end_36} :catch_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_10 .. :try_end_36} :catch_3d

    if-eqz p4, :cond_3a

    const/4 p0, 0x1

    return p0

    :cond_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :catch_3d
    move-exception p0

    move p1, p4

    goto :goto_41

    :catch_40
    move-exception p0

    :goto_41
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Verify signing get an exception is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/shield/utils/PLog;->e(Ljava/lang/String;)V

    move p4, p1

    :cond_5d
    return p4
.end method
