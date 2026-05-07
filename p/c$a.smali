.class public final Lp/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Lokio/Options;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lokio/Options;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/c$a;->a:[Ljava/lang/String;

    iput-object p2, p0, Lp/c$a;->b:Lokio/Options;

    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Lp/c$a;
    .registers 13

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Lokio/ByteString;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    array-length v4, p0

    if-ge v3, v4, :cond_59

    aget-object v4, p0, v3

    sget-object v5, Lp/c;->e:[Ljava/lang/String;

    const/16 v6, 0x22

    invoke-interface {v1, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move v8, v2

    move v9, v8

    :goto_1c
    if-ge v8, v7, :cond_45

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x80

    if-ge v10, v11, :cond_2b

    aget-object v10, v5, v10

    if-nez v10, :cond_38

    goto :goto_42

    :cond_2b
    const/16 v11, 0x2028

    if-ne v10, v11, :cond_32

    const-string v10, "\\u2028"

    goto :goto_38

    :cond_32
    const/16 v11, 0x2029

    if-ne v10, v11, :cond_42

    const-string v10, "\\u2029"

    :cond_38
    :goto_38
    if-ge v9, v8, :cond_3d

    invoke-interface {v1, v4, v9, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_3d
    invoke-interface {v1, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v9, v8, 0x1

    :cond_42
    :goto_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_45
    if-ge v9, v7, :cond_4a

    invoke-interface {v1, v4, v9, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;

    :cond_4a
    invoke-interface {v1, v6}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_59
    new-instance v1, Lp/c$a;

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0}, Lokio/Options;->of([Lokio/ByteString;)Lokio/Options;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lp/c$a;-><init>([Ljava/lang/String;Lokio/Options;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_68} :catch_69

    return-object v1

    :catch_69
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
