.class public Lcom/oplus/fancyicon/util/Base64Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UTF_8_ENCODING:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_1d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Base64Util;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Base64Util;->getUTF8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_1d

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Base64Util;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_11

    return-object v0

    :cond_11
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    if-eqz p0, :cond_1d

    invoke-static {p0}, Lcom/oplus/fancyicon/util/Base64Util;->getUTF8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    return-object v0
.end method

.method private static getUTF8Bytes(Ljava/lang/String;)[B
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_6

    new-array p0, v0, [B

    return-object p0

    :cond_6
    :try_start_6
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    :try_start_d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    array-length v1, p0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2c} :catch_2d

    return-object v3

    :catch_2d
    new-array p0, v0, [B

    return-object p0
.end method

.method private static getUTF8String([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_b

    :cond_5
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/oplus/fancyicon/util/Base64Util;->getUTF8String([BII)Ljava/lang/String;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method private static getUTF8String([BII)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    return-object v0
.end method
