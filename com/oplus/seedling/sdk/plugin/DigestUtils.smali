.class public final Lcom/oplus/seedling/sdk/plugin/DigestUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ALGORITHM_SHA256:Ljava/lang/String; = "SHA-256"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final HEX_CHARS:Ljava/lang/String; = "0123456789abcdef"

.field private static final HEX_HIGH_MASK:I = 0xf0

.field private static final HEX_LOW_MASK:I = 0xf

.field private static final HEX_MASK_BITS:I = 0x4

.field public static final INSTANCE:Lcom/oplus/seedling/sdk/plugin/DigestUtils;

.field private static final TAG:Ljava/lang/String; = "DigestUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/seedling/sdk/plugin/DigestUtils;

    invoke-direct {v0}, Lcom/oplus/seedling/sdk/plugin/DigestUtils;-><init>()V

    sput-object v0, Lcom/oplus/seedling/sdk/plugin/DigestUtils;->INSTANCE:Lcom/oplus/seedling/sdk/plugin/DigestUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final sha256(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "file"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start sha for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigestUtils"

    invoke-static {v1, v0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v2, 0x400

    const/4 v3, 0x0

    :try_start_2d
    new-array v2, v2, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_77
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_34} :catch_5d

    :goto_34
    :try_start_34
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    const/4 v5, -0x1

    if-eq p0, v5, :cond_40

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, p0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_56

    goto :goto_34

    :cond_40
    :try_start_40
    invoke-static {v4, v3}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p0, "Success sha 256."

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string v0, "digest.digest()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/seedling/sdk/plugin/DigestUtils;->toHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_55} :catch_77
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_55} :catch_5d

    return-object p0

    :catchall_56
    move-exception p0

    :try_start_57
    throw p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    :try_start_59
    invoke-static {v4, p0}, Lh3/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5d} :catch_77
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :catch_77
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/seedling/sdk/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_90
    return-object v3
.end method

.method private static final toHex([B)Ljava/lang/String;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_27

    aget-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    const-string v5, "0123456789abcdef"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).…builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
