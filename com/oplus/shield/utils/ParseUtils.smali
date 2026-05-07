.class public Lcom/oplus/shield/utils/ParseUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDigest([BI)[B
    .registers 5

    array-length v0, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x9

    new-array v0, v0, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x9

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parseExpiration([BI)[B
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x8

    const/4 p1, 0x0

    invoke-static {p0, v2, v1, p1, v0}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static parsePermission([BI)[B
    .registers 5

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parsePermissionLength([B)[B
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Lcom/oplus/shield/utils/SystemUtils;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static parseVersion([B)[B
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    aput-byte p0, v0, v1

    return-object v0
.end method
