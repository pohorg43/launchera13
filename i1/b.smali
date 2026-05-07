.class public Li1/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:[B

.field public static final b:[B

.field public static c:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Li1/b;->a:[B

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Li1/b;->b:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Li1/b;->c:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_16
    if-ge v2, v0, :cond_20

    sget-object v3, Li1/b;->a:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    const/16 v0, 0x5a

    :goto_22
    const/16 v2, 0x41

    if-lt v0, v2, :cond_30

    sget-object v2, Li1/b;->a:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_30
    const/16 v0, 0x7a

    :goto_32
    const/16 v2, 0x1a

    const/16 v3, 0x61

    if-lt v0, v3, :cond_43

    sget-object v3, Li1/b;->a:[B

    add-int/lit8 v4, v0, -0x61

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_43
    const/16 v0, 0x39

    :goto_45
    const/16 v3, 0x34

    const/16 v4, 0x30

    if-lt v0, v4, :cond_56

    sget-object v4, Li1/b;->a:[B

    add-int/lit8 v5, v0, -0x30

    add-int/2addr v5, v3

    int-to-byte v3, v5

    aput-byte v3, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_45

    :cond_56
    sget-object v0, Li1/b;->a:[B

    const/16 v4, 0x2b

    const/16 v5, 0x3e

    aput-byte v5, v0, v4

    const/16 v6, 0x2f

    const/16 v7, 0x3f

    aput-byte v7, v0, v6

    move v0, v1

    :goto_65
    const/16 v8, 0x19

    if-gt v0, v8, :cond_73

    sget-object v8, Li1/b;->c:[B

    add-int/lit8 v9, v0, 0x41

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_73
    move v0, v1

    :goto_74
    const/16 v8, 0x33

    if-gt v2, v8, :cond_84

    sget-object v8, Li1/b;->c:[B

    add-int/lit8 v9, v0, 0x61

    int-to-byte v9, v9

    aput-byte v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_84
    :goto_84
    const/16 v0, 0x3d

    if-gt v3, v0, :cond_94

    sget-object v0, Li1/b;->c:[B

    add-int/lit8 v2, v1, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_94
    sget-object v0, Li1/b;->c:[B

    aput-byte v4, v0, v5

    aput-byte v6, v0, v7

    return-void
.end method
