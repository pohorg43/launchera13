.class public final Lcom/android/common/util/SignCheckUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final APP_STORE_MD5:Ljava/lang/String; = "7815c5174154b7ce33f023602106ecc6"

.field private static final APP_STORE_NEW_PK_MD5:Ljava/lang/String; = "201348a7b1f68e40974b6aaad66f1d19"

.field public static final INSTANCE:Lcom/android/common/util/SignCheckUtils;

.field private static final TAG:Ljava/lang/String; = "SignCheckUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/SignCheckUtils;

    invoke-direct {v0}, Lcom/android/common/util/SignCheckUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SignCheckUtils;->INSTANCE:Lcom/android/common/util/SignCheckUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final byte2HexFormat([B)Ljava/lang/String;
    .registers 8

    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3e

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    const-string v5, "0"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_23
    if-le v4, v1, :cond_36

    const-string v5, "h"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_36
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v3, v0, :cond_3c

    goto :goto_3e

    :cond_3c
    move v2, v3

    goto :goto_e

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "str.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getApplicationSign(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 5

    const/4 p0, 0x0

    const-string v0, "SignCheckUtils"

    if-eqz p1, :cond_2c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2c

    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x40

    :try_start_12
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1e

    const-string p1, "getApplicationSign -- packageInfo is null"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1e
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p1

    const-string p2, "getApplicationSign -- error: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2c
    :goto_2c
    const-string p1, "getApplicationSign -- illegal param!"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getMD5Sign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "SignCheckUtils"

    invoke-direct {p0, p1, p2}, Lcom/android/common/util/SignCheckUtils;->getApplicationSign(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_76

    array-length v1, p1

    if-nez v1, :cond_d

    goto :goto_76

    :cond_d
    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    :try_start_14
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_14 .. :try_end_1a} :catch_6c

    if-nez v1, :cond_1e

    move-object p1, p2

    goto :goto_27

    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    :goto_27
    if-eqz p1, :cond_58

    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_2b
    .catch Ljava/security/cert/CertificateException; {:try_start_1e .. :try_end_2b} :catch_61

    :try_start_2b
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string/jumbo v1, "publicKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/common/util/SignCheckUtils;->byte2HexFormat([B)Ljava/lang/String;

    move-result-object p2

    const-string p0, "getMD5Sign -- md5HexString = "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4c} :catch_4d

    goto :goto_57

    :catch_4d
    move-exception p0

    const-string p1, "getMD5Sign -- 3 error: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_57
    return-object p2

    :cond_58
    :try_start_58
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_61
    .catch Ljava/security/cert/CertificateException; {:try_start_58 .. :try_end_61} :catch_61

    :catch_61
    move-exception p0

    const-string p1, "getMD5Sign -- 2 error: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catch_6c
    move-exception p0

    const-string p1, "getMD5Sign -- 1 error: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-object p2
.end method


# virtual methods
.method public final checkCallingPackagePermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/common/util/SignCheckUtils;->getMD5Sign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "7815c5174154b7ce33f023602106ecc6"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    const-string p1, "201348a7b1f68e40974b6aaad66f1d19"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method
