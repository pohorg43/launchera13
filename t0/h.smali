.class public final Lt0/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/h$d;,
        Lt0/h$a;,
        Lt0/h$c;,
        Lt0/h$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Exif\u0000\u0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lt0/h;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lt0/h;->b:[I

    return-void

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .param p1  # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lt0/h$a;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lt0/h$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0}, Lt0/h;->d(Lt0/h$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .param p1  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lt0/h$d;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lt0/h$d;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lt0/h;->d(Lt0/h$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/io/InputStream;Ln0/b;)I
    .registers 8
    .param p1  # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ln0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lt0/h$d;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lt0/h$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, -0x1

    :try_start_e
    invoke-virtual {v0}, Lt0/h$d;->a()I

    move-result v1
    :try_end_12
    .catch Lt0/h$c$a; {:try_start_e .. :try_end_12} :catch_6d

    const v2, 0xffd8

    and-int v3, v1, v2

    if-eq v3, v2, :cond_24

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_24

    const/16 v2, 0x4949

    if-ne v1, v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    :goto_25
    const/4 v3, 0x3

    const-string v4, "DfltImageHeaderParser"

    if-nez v2, :cond_45

    :try_start_2a
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parser doesn\'t handle magic number: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_45
    invoke-virtual {p0, v0}, Lt0/h;->e(Lt0/h$c;)I

    move-result v1

    if-ne v1, p1, :cond_57

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6d

    const-string p0, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    :cond_57
    const-class v2, [B

    invoke-interface {p2, v1, v2}, Ln0/b;->e(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_5f
    .catch Lt0/h$c$a; {:try_start_2a .. :try_end_5f} :catch_6d

    :try_start_5f
    invoke-virtual {p0, v0, v2, v1}, Lt0/h;->f(Lt0/h$c;[BI)I

    move-result p0
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_68

    :try_start_63
    invoke-interface {p2, v2}, Ln0/b;->d(Ljava/lang/Object;)V

    move p1, p0

    goto :goto_6d

    :catchall_68
    move-exception p0

    invoke-interface {p2, v2}, Ln0/b;->d(Ljava/lang/Object;)V

    throw p0
    :try_end_6d
    .catch Lt0/h$c$a; {:try_start_63 .. :try_end_6d} :catch_6d

    :catch_6d
    :cond_6d
    :goto_6d
    return p1
.end method

.method public final d(Lt0/h$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result p0

    const v0, 0xffd8

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_c
    shl-int/lit8 p0, p0, 0x8

    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result v0

    or-int/2addr p0, v0

    const v0, 0x474946

    if-ne p0, v0, :cond_1b

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_1b
    shl-int/lit8 p0, p0, 0x8

    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result v0

    or-int/2addr p0, v0

    const v0, -0x76afb1b9

    if-ne p0, v0, :cond_3c

    const-wide/16 v0, 0x15

    invoke-interface {p1, v0, v1}, Lt0/h$c;->skip(J)J
    :try_end_2c
    .catch Lt0/h$c$a; {:try_start_0 .. :try_end_2c} :catch_a0

    :try_start_2c
    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_36

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_38

    :cond_36
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_38
    .catch Lt0/h$c$a; {:try_start_2c .. :try_end_38} :catch_39

    :goto_38
    return-object p0

    :catch_39
    :try_start_39
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_3c
    const v0, 0x52494646

    if-eq p0, v0, :cond_44

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_44
    const-wide/16 v0, 0x4

    invoke-interface {p1, v0, v1}, Lt0/h$c;->skip(J)J

    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result v2

    or-int/2addr p0, v2

    const v2, 0x57454250

    if-eq p0, v2, :cond_5c

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5c
    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result v2

    or-int/2addr p0, v2

    and-int/lit16 v2, p0, -0x100

    const v3, 0x56503800

    if-eq v2, v3, :cond_71

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_71
    and-int/lit16 p0, p0, 0xff

    const/16 v2, 0x58

    if-ne p0, v2, :cond_88

    invoke-interface {p1, v0, v1}, Lt0/h$c;->skip(J)J

    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_85

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_87

    :cond_85
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_87
    return-object p0

    :cond_88
    const/16 v2, 0x4c

    if-ne p0, v2, :cond_9d

    invoke-interface {p1, v0, v1}, Lt0/h$c;->skip(J)J

    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_9a

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_9c

    :cond_9a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_9c
    return-object p0

    :cond_9d
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_9f
    .catch Lt0/h$c$a; {:try_start_39 .. :try_end_9f} :catch_a0

    return-object p0

    :catch_a0
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public final e(Lt0/h$c;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result p0

    const/16 v0, 0xff

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "DfltImageHeaderParser"

    if-eq p0, v0, :cond_18

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "Unknown segmentId="

    invoke-static {p1, p0, v3}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_17
    return v2

    :cond_18
    invoke-interface {p1}, Lt0/h$c;->c()S

    move-result p0

    const/16 v0, 0xda

    if-ne p0, v0, :cond_21

    return v2

    :cond_21
    const/16 v0, 0xd9

    if-ne p0, v0, :cond_31

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_30

    const-string p0, "Found MARKER_EOI in exif segment"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return v2

    :cond_31
    invoke-interface {p1}, Lt0/h$c;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/16 v4, 0xe1

    if-eq p0, v4, :cond_5f

    int-to-long v4, v0

    invoke-interface {p1, v4, v5}, Lt0/h$c;->skip(J)J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-eqz v4, :cond_0

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5e

    const-string p1, "Unable to skip enough data, type: "

    const-string v1, ", wanted to skip: "

    const-string v4, ", but actually skipped: "

    invoke-static {p1, p0, v1, v0, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return v2

    :cond_5f
    return v0
.end method

.method public final f(Lt0/h$c;[BI)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lt0/h$c;->b([BI)I

    move-result p0

    const/4 p1, -0x1

    const/4 v0, 0x3

    const-string v1, "DfltImageHeaderParser"

    if-eq p0, p3, :cond_2d

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to read exif segment data, length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actually read: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return p1

    :cond_2d
    const/4 p0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_38

    sget-object v3, Lt0/h;->a:[B

    array-length v3, v3

    if-le p3, v3, :cond_38

    move v3, v2

    goto :goto_39

    :cond_38
    move v3, p0

    :goto_39
    if-eqz v3, :cond_4c

    move v4, p0

    :goto_3c
    sget-object v5, Lt0/h;->a:[B

    array-length v6, v5

    if-ge v4, v6, :cond_4c

    aget-byte v6, p2, v4

    aget-byte v5, v5, v4

    if-eq v6, v5, :cond_49

    move v3, p0

    goto :goto_4c

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4c
    :goto_4c
    if-eqz v3, :cond_148

    new-instance v3, Lt0/h$b;

    invoke-direct {v3, p2, p3}, Lt0/h$b;-><init>([BI)V

    const/4 p2, 0x6

    invoke-virtual {v3, p2}, Lt0/h$b;->a(I)S

    move-result p3

    const/16 v4, 0x4949

    if-eq p3, v4, :cond_71

    const/16 v4, 0x4d4d

    if-eq p3, v4, :cond_6e

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string v4, "Unknown endianness = "

    invoke-static {v4, p3, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_6b
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_73

    :cond_6e
    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_73

    :cond_71
    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_73
    iget-object v4, v3, Lt0/h$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 p3, 0xa

    invoke-virtual {v3, p3}, Lt0/h$b;->b(I)I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {v3, p3}, Lt0/h$b;->a(I)S

    move-result p2

    :goto_83
    if-ge p0, p2, :cond_147

    add-int/lit8 v4, p3, 0x2

    mul-int/lit8 v5, p0, 0xc

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Lt0/h$b;->a(I)S

    move-result v4

    const/16 v6, 0x112

    if-eq v4, v6, :cond_94

    goto/16 :goto_143

    :cond_94
    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v3, v6}, Lt0/h$b;->a(I)S

    move-result v6

    if-lt v6, v2, :cond_138

    const/16 v7, 0xc

    if-le v6, v7, :cond_a2

    goto/16 :goto_138

    :cond_a2
    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v3, v7}, Lt0/h$b;->b(I)I

    move-result v7

    if-gez v7, :cond_b7

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_143

    const-string v4, "Negative tiff component count"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    :cond_b7
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    const-string v9, " tagType="

    if-eqz v8, :cond_d9

    const-string v8, "Got tagIndex="

    const-string v10, " formatCode="

    invoke-static {v8, p0, v9, v4, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " componentCount="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    sget-object v8, Lt0/h;->b:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    const/4 v8, 0x4

    if-le v7, v8, :cond_ed

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_143

    const-string v4, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-static {v4, v6, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_143

    :cond_ed
    add-int/lit8 v5, v5, 0x8

    if-ltz v5, :cond_117

    iget-object v6, v3, Lt0/h$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_fa

    goto :goto_117

    :cond_fa
    if-ltz v7, :cond_10b

    add-int/2addr v7, v5

    iget-object v6, v3, Lt0/h$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v7, v6, :cond_106

    goto :goto_10b

    :cond_106
    invoke-virtual {v3, v5}, Lt0/h$b;->a(I)S

    move-result p1

    goto :goto_147

    :cond_10b
    :goto_10b
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_143

    const-string v5, "Illegal number of bytes for TI tag data tagType="

    invoke-static {v5, v4, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_143

    :cond_117
    :goto_117
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_143

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    :cond_138
    :goto_138
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_143

    const-string v4, "Got invalid format code = "

    invoke-static {v4, v6, v1}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_143
    :goto_143
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_83

    :cond_147
    :goto_147
    return p1

    :cond_148
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_153

    const-string p0, "Missing jpeg exif preamble"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    return p1
.end method
