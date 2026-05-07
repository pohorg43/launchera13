.class final Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;
.super Lcom/oplus/anim/parser/moshi/JsonReader;
.source ""


# static fields
.field private static final CLOSING_BLOCK_COMMENT:Lokio/ByteString;

.field private static final DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_BUFFERED_NAME:I = 0xf

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x12

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0x10

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x11

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe

.field private static final SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

.field private static final UNQUOTED_STRING_TERMINALS:Lokio/ByteString;


# instance fields
.field private final buffer:Lokio/Buffer;

.field private peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final source:Lokio/BufferedSource;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "\'\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    const-string v0, "{}[]:, \n\t\r\f/\\;#="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    const-string v0, "\n\r"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    const-string v0, "*/"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    const-string v0, "source == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->pushScope(I)V

    return-void
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->lenient:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0
.end method

.method private doPeek()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonReader;->scopes:[I

    iget v2, v0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const-wide/16 v4, 0x0

    const/16 v6, 0x8

    const/16 v8, 0x22

    const/16 v9, 0x5d

    const/4 v10, 0x3

    const/4 v11, 0x7

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_22

    sub-int/2addr v2, v7

    aput v15, v1, v2

    goto/16 :goto_9e

    :cond_22
    if-ne v3, v15, :cond_41

    invoke-direct {v0, v7}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    iget-object v2, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    if-eq v1, v13, :cond_9e

    if-eq v1, v12, :cond_3d

    if-ne v1, v9, :cond_36

    iput v14, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v14

    :cond_36
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_3d
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_9e

    :cond_41
    const/4 v15, 0x5

    if-eq v3, v10, :cond_12a

    if-ne v3, v15, :cond_48

    goto/16 :goto_12a

    :cond_48
    if-ne v3, v14, :cond_82

    sub-int/2addr v2, v7

    aput v15, v1, v2

    invoke-direct {v0, v7}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    iget-object v2, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->readByte()B

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_9e

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7b

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v14, 0x1

    invoke-interface {v1, v14, v15}, Lokio/BufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_9e

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_9e

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    goto :goto_9e

    :cond_7b
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_82
    const/4 v14, 0x6

    if-ne v3, v14, :cond_89

    sub-int/2addr v2, v7

    aput v11, v1, v2

    goto :goto_9e

    :cond_89
    if-ne v3, v11, :cond_9c

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_98

    const/16 v1, 0x12

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_98
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    goto :goto_9e

    :cond_9c
    if-eq v3, v6, :cond_122

    :cond_9e
    :goto_9e
    invoke-direct {v0, v7}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v8, :cond_118

    const/16 v2, 0x27

    if-eq v1, v2, :cond_10d

    if-eq v1, v13, :cond_fa

    if-eq v1, v12, :cond_fa

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_f2

    if-eq v1, v9, :cond_e7

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_df

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekKeyword()I

    move-result v1

    if-eqz v1, :cond_bd

    return v1

    :cond_bd
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekNumber()I

    move-result v1

    if-eqz v1, :cond_c4

    return v1

    :cond_c4
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    invoke-direct {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_d8
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_df
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v7, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v7

    :cond_e7
    if-ne v3, v7, :cond_fa

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x4

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_f2
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v10, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v10

    :cond_fa
    if-eq v3, v7, :cond_107

    const/4 v1, 0x2

    if-ne v3, v1, :cond_100

    goto :goto_107

    :cond_100
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_107
    :goto_107
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iput v11, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v11

    :cond_10d
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iput v6, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v6

    :cond_118
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0x9

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12a
    :goto_12a
    sub-int/2addr v2, v7

    const/4 v4, 0x4

    aput v4, v1, v2

    const/16 v1, 0x7d

    if-ne v3, v15, :cond_14f

    invoke-direct {v0, v7}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v2

    iget-object v4, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->readByte()B

    if-eq v2, v13, :cond_14f

    if-eq v2, v12, :cond_14c

    if-ne v2, v1, :cond_145

    const/4 v1, 0x2

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_145
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_14c
    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    :cond_14f
    invoke-direct {v0, v7}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextNonWhitespace(Z)I

    move-result v2

    if-eq v2, v8, :cond_18e

    const/16 v4, 0x27

    if-eq v2, v4, :cond_181

    const-string v4, "Expected name"

    if-eq v2, v1, :cond_171

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    int-to-char v1, v2

    invoke-direct {v0, v1}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_16c

    const/16 v1, 0xe

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_16c
    invoke-virtual {v0, v4}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_171
    if-eq v3, v15, :cond_17c

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/4 v1, 0x2

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_17c
    invoke-virtual {v0, v4}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    :cond_181
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-direct/range {p0 .. p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_18e
    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    const/16 v1, 0xd

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1
.end method

.method private findName(Ljava/lang/String;Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I
    .registers 7

    iget-object v0, p2, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_1f

    iget-object v3, p2, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iput v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object p2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aput-object p1, p2, p0

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method private isLiteral(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3c

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x23

    if-eq p1, v0, :cond_39

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_39

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_39

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_39

    packed-switch p1, :pswitch_data_3e

    const/4 p0, 0x1

    return p0

    :cond_39
    :pswitch_39  #0x5c
    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    :cond_3c
    :pswitch_3c  #0x5b, 0x5d
    const/4 p0, 0x0

    return p0

    :pswitch_data_3e
    .packed-switch 0x5b
        :pswitch_3c  #0000005b
        :pswitch_39  #0000005c
        :pswitch_3c  #0000005d
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_80

    const/16 v2, 0x20

    if-eq v1, v2, :cond_80

    const/16 v2, 0xd

    if-eq v1, v2, :cond_80

    const/16 v2, 0x9

    if-ne v1, v2, :cond_25

    goto :goto_80

    :cond_25
    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lokio/Buffer;->skip(J)V

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_74

    iget-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v4, 0x2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->request(J)Z

    move-result v3

    if-nez v3, :cond_3c

    return v1

    :cond_3c
    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    iget-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5c

    if-eq v3, v2, :cond_4e

    return v1

    :cond_4e
    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    goto :goto_1

    :cond_5c
    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipToEndOfBlockComment()Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_1

    :cond_6d
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_74
    const/16 v2, 0x23

    if-ne v1, v2, :cond_7f

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->checkLenient()V

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipToEndOfLine()V

    goto :goto_1

    :cond_7f
    return v1

    :cond_80
    :goto_80
    move v1, v3

    goto :goto_2

    :cond_82
    if-nez p1, :cond_86

    const/4 p0, -0x1

    return p0

    :cond_86
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "End of input"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_34

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_1e
    iget-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_34
    if-nez v0, :cond_42

    iget-object p1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    return-object p1

    :cond_42
    iget-object p1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v2, :cond_15

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_15
    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method private peekKeyword()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_31

    const/16 v2, 0x54

    if-ne v0, v2, :cond_12

    goto :goto_31

    :cond_12
    const/16 v2, 0x66

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1b

    goto :goto_2b

    :cond_1b
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_25

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_24

    goto :goto_25

    :cond_24
    return v1

    :cond_25
    :goto_25
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_36

    :cond_2b
    :goto_2b
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_36

    :cond_31
    :goto_31
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    :goto_36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_3b
    if-ge v5, v4, :cond_5f

    iget-object v6, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v7, v5, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lokio/BufferedSource;->request(J)Z

    move-result v6

    if-nez v6, :cond_49

    return v1

    :cond_49
    iget-object v6, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v6

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_5d

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_5d

    return v1

    :cond_5d
    move v5, v7

    goto :goto_3b

    :cond_5f
    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v3, v4, 0x1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lokio/BufferedSource;->request(J)Z

    move-result v2

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v2

    invoke-direct {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v2

    if-eqz v2, :cond_78

    return v1

    :cond_78
    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v0
.end method

.method private peekNumber()I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v8, v1

    move v7, v3

    move v5, v4

    move v6, v5

    move v10, v6

    :goto_b
    iget-object v11, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    add-int/lit8 v12, v5, 0x1

    int-to-long v13, v12

    invoke-interface {v11, v13, v14}, Lokio/BufferedSource;->request(J)Z

    move-result v11

    const/4 v15, 0x2

    if-nez v11, :cond_19

    goto/16 :goto_84

    :cond_19
    iget-object v11, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v13, v5

    invoke-virtual {v11, v13, v14}, Lokio/Buffer;->getByte(J)B

    move-result v11

    const/16 v13, 0x2b

    const/4 v14, 0x5

    if-eq v11, v13, :cond_d3

    const/16 v13, 0x45

    if-eq v11, v13, :cond_ca

    const/16 v13, 0x65

    if-eq v11, v13, :cond_ca

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_c0

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_bb

    const/16 v13, 0x30

    if-lt v11, v13, :cond_7e

    const/16 v13, 0x39

    if-le v11, v13, :cond_3e

    goto :goto_7e

    :cond_3e
    if-eq v6, v3, :cond_77

    if-nez v6, :cond_43

    goto :goto_77

    :cond_43
    if-ne v6, v15, :cond_67

    cmp-long v5, v8, v1

    if-nez v5, :cond_4a

    return v4

    :cond_4a
    const-wide/16 v13, 0xa

    mul-long/2addr v13, v8

    add-int/lit8 v11, v11, -0x30

    int-to-long v3, v11

    sub-long/2addr v13, v3

    const-wide v3, -0xcccccccccccccccL

    cmp-long v3, v8, v3

    if-gtz v3, :cond_63

    if-nez v3, :cond_61

    cmp-long v3, v13, v8

    if-gez v3, :cond_61

    goto :goto_63

    :cond_61
    const/4 v3, 0x0

    goto :goto_64

    :cond_63
    :goto_63
    const/4 v3, 0x1

    :goto_64
    and-int/2addr v7, v3

    move-wide v8, v13

    goto :goto_7c

    :cond_67
    const/4 v3, 0x3

    if-ne v6, v3, :cond_6e

    const/4 v4, 0x0

    const/4 v6, 0x4

    goto/16 :goto_d7

    :cond_6e
    if-eq v6, v14, :cond_73

    const/4 v3, 0x6

    if-ne v6, v3, :cond_7c

    :cond_73
    const/4 v4, 0x0

    const/4 v6, 0x7

    goto/16 :goto_d7

    :cond_77
    :goto_77
    add-int/lit8 v11, v11, -0x30

    neg-int v3, v11

    int-to-long v8, v3

    move v6, v15

    :cond_7c
    :goto_7c
    const/4 v4, 0x0

    goto :goto_d7

    :cond_7e
    :goto_7e
    invoke-direct {v0, v11}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->isLiteral(I)Z

    move-result v3

    if-nez v3, :cond_b9

    :goto_84
    if-ne v6, v15, :cond_a7

    if-eqz v7, :cond_a7

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v8, v3

    if-nez v3, :cond_90

    if-eqz v10, :cond_a7

    :cond_90
    cmp-long v1, v8, v1

    if-nez v1, :cond_96

    if-nez v10, :cond_a7

    :cond_96
    if-eqz v10, :cond_99

    goto :goto_9a

    :cond_99
    neg-long v8, v8

    :goto_9a
    iput-wide v8, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedLong:J

    iget-object v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->skip(J)V

    const/16 v1, 0x10

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_a7
    if-eq v6, v15, :cond_b2

    const/4 v1, 0x4

    if-eq v6, v1, :cond_b2

    const/4 v1, 0x7

    if-ne v6, v1, :cond_b0

    goto :goto_b2

    :cond_b0
    const/4 v4, 0x0

    return v4

    :cond_b2
    :goto_b2
    iput v5, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    const/16 v1, 0x11

    iput v1, v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return v1

    :cond_b9
    const/4 v4, 0x0

    return v4

    :cond_bb
    const/4 v3, 0x3

    if-ne v6, v15, :cond_bf

    goto :goto_d6

    :cond_bf
    return v4

    :cond_c0
    const/4 v3, 0x6

    if-nez v6, :cond_c6

    const/4 v6, 0x1

    const/4 v10, 0x1

    goto :goto_d7

    :cond_c6
    if-ne v6, v14, :cond_c9

    goto :goto_d6

    :cond_c9
    return v4

    :cond_ca
    if-eq v6, v15, :cond_d1

    const/4 v3, 0x4

    if-ne v6, v3, :cond_d0

    goto :goto_d1

    :cond_d0
    return v4

    :cond_d1
    :goto_d1
    move v6, v14

    goto :goto_d7

    :cond_d3
    const/4 v3, 0x6

    if-ne v6, v14, :cond_db

    :goto_d6
    move v6, v3

    :goto_d7
    move v5, v12

    const/4 v3, 0x1

    goto/16 :goto_b

    :cond_db
    return v4
.end method

.method private readEscapeCharacter()C
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_d6

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d4

    const/16 v2, 0x22

    if-eq v0, v2, :cond_d4

    const/16 v2, 0x27

    if-eq v0, v2, :cond_d4

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_d4

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_d4

    const/16 v2, 0x62

    if-eq v0, v2, :cond_d1

    const/16 v2, 0x66

    if-eq v0, v2, :cond_ce

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_cd

    const/16 v3, 0x72

    if-eq v0, v3, :cond_ca

    const/16 v3, 0x74

    if-eq v0, v3, :cond_c7

    const/16 v3, 0x75

    if-eq v0, v3, :cond_55

    iget-boolean v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->lenient:Z

    if-eqz v1, :cond_42

    int-to-char p0, v0

    return p0

    :cond_42
    const-string v1, "Invalid escape sequence: \\"

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_55
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_b0

    const/4 v0, 0x0

    move v5, v0

    :goto_61
    const/4 v6, 0x4

    if-ge v0, v6, :cond_aa

    iget-object v6, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v6

    shl-int/lit8 v5, v5, 0x4

    int-to-char v5, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_79

    const/16 v7, 0x39

    if-gt v6, v7, :cond_79

    add-int/lit8 v6, v6, -0x30

    goto :goto_8d

    :cond_79
    const/16 v7, 0x61

    if-lt v6, v7, :cond_82

    if-gt v6, v2, :cond_82

    add-int/lit8 v6, v6, -0x61

    goto :goto_8c

    :cond_82
    const/16 v7, 0x41

    if-lt v6, v7, :cond_92

    const/16 v7, 0x46

    if-gt v6, v7, :cond_92

    add-int/lit8 v6, v6, -0x41

    :goto_8c
    add-int/2addr v6, v1

    :goto_8d
    add-int/2addr v6, v5

    int-to-char v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_92
    const-string v0, "\\u"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0

    :cond_aa
    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->skip(J)V

    return v5

    :cond_b0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unterminated escape sequence at path "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c7
    const/16 p0, 0x9

    return p0

    :cond_ca
    const/16 p0, 0xd

    return p0

    :cond_cd
    return v1

    :cond_ce
    const/16 p0, 0xc

    return p0

    :cond_d1
    const/16 p0, 0x8

    return p0

    :cond_d4
    int-to-char p0, v0

    return p0

    :cond_d6
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0
.end method

.method private skipQuotedValue(Lokio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->readEscapeCharacter()C

    goto :goto_0

    :cond_22
    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    add-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void

    :cond_29
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/parser/moshi/JsonReader;->syntaxError(Ljava/lang/String;)Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    move-result-object p0

    throw p0
.end method

.method private skipToEndOfBlockComment()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->CLOSING_BLOCK_COMMENT:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOf(Lokio/ByteString;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    :goto_20
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->skip(J)V

    return v0
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->LINEFEED_OR_CARRIAGE_RETURN:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_18
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method

.method private skipUnquotedValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->UNQUOTED_STRING_TERMINALS:Lokio/ByteString;

    invoke-interface {v0, v1}, Lokio/BufferedSource;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    :goto_15
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->pushScope(I)V

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1a
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonReader;->pushScope(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_13
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->scopes:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->close()V

    return-void
.end method

.method public endArray()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_1f
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected END_ARRAY but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    return-void

    :cond_24
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected END_OBJECT but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 p0, 0x2

    if-eq v0, p0, :cond_14

    const/4 p0, 0x4

    if-eq v0, p0, :cond_14

    const/16 p0, 0x12

    if-eq v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1a
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2a

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2a
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected a boolean but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1f
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_35
    const/16 v1, 0x9

    if-ne v0, v1, :cond_42

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_42
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4f

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_4f
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5a

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_5c

    :cond_5a
    if-ne v0, v4, :cond_c5

    :goto_5c
    iput v4, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    :try_start_5e
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_64
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_64} :catch_a8

    iget-boolean v3, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->lenient:Z

    if-nez v3, :cond_96

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_75

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_75

    goto :goto_96

    :cond_75
    new-instance v2, Lcom/oplus/anim/parser/moshi/JsonEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/oplus/anim/parser/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_96
    :goto_96
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0

    :catch_a8
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c5
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextInt()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_45

    iget-wide v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedLong:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v0, v0, v6

    if-nez v0, :cond_28

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_28
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_a6

    :cond_57
    const/16 v1, 0x9

    if-eq v0, v1, :cond_82

    const/16 v6, 0x8

    if-ne v0, v6, :cond_60

    goto :goto_82

    :cond_60
    if-ne v0, v5, :cond_63

    goto :goto_a6

    :cond_63
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    :goto_82
    if-ne v0, v1, :cond_8b

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_91

    :cond_8b
    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    :goto_91
    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :try_start_93
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget v6, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_93 .. :try_end_a5} :catch_a6

    return v0

    :catch_a6
    :goto_a6
    iput v5, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    :try_start_a8
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_ae
    .catch Ljava/lang/NumberFormatException; {:try_start_a8 .. :try_end_ae} :catch_e3

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v0, v6, v0

    if-nez v0, :cond_c6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v5

    :cond_c6
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_e3
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xe

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_11
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_1c
    const/16 v1, 0xc

    if-ne v0, v1, :cond_27

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_27
    const/16 v1, 0xf

    if-ne v0, v1, :cond_39

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    :goto_2d
    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_39
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_11
    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_1c
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_27
    const/16 v1, 0xb

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    goto :goto_49

    :cond_31
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3c

    iget-wide v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_3c
    const/16 v1, 0x11

    if-ne v0, v1, :cond_59

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    :goto_49
    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_59
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected a string but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    packed-switch v0, :pswitch_data_30

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_11  #0x12
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->END_DOCUMENT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_14  #0x10, 0x11
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NUMBER:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_17  #0xc, 0xd, 0xe, 0xf
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NAME:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_1a  #0x8, 0x9, 0xa, 0xb
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->STRING:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_1d  #0x7
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->NULL:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_20  #0x5, 0x6
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BOOLEAN:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_23  #0x4
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_26  #0x3
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_29  #0x2
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    :pswitch_2c  #0x1
    sget-object p0, Lcom/oplus/anim/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    return-object p0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
        :pswitch_1a  #00000008
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_17  #0000000c
        :pswitch_17  #0000000d
        :pswitch_17  #0000000e
        :pswitch_17  #0000000f
        :pswitch_14  #00000010
        :pswitch_14  #00000011
        :pswitch_11  #00000012
    .end packed-switch
.end method

.method public selectName(Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_8
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_54

    const/16 v1, 0xf

    if-le v0, v1, :cond_12

    goto :goto_54

    :cond_12
    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result p0

    return p0

    :cond_1b
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    iget-object v3, p1, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->doubleQuoteSuffix:Lokio/Options;

    invoke-interface {v0, v3}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v0

    if-eq v0, v2, :cond_35

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    iget-object p1, p1, Lcom/oplus/anim/parser/moshi/JsonReader$Options;->strings:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, p0

    return v0

    :cond_35
    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->findName(Ljava/lang/String;Lcom/oplus/anim/parser/moshi/JsonReader$Options;)I

    move-result p1

    if-ne p1, v2, :cond_53

    iput v1, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iput-object v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    :cond_53
    return p1

    :cond_54
    :goto_54
    return v2
.end method

.method public skipName()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->failOnUnknown:Z

    if-nez v0, :cond_5d

    iget v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v0

    :cond_c
    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    goto :goto_2c

    :cond_14
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_2c

    :cond_1e
    const/16 v1, 0xc

    if-ne v0, v1, :cond_28

    sget-object v0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_2c

    :cond_28
    const/16 v1, 0xf

    if-ne v0, v1, :cond_3a

    :goto_2c
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    const-string v1, "null"

    aput-object v1, v0, p0

    return-void

    :cond_3a
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Expected a name but was "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Cannot skip unexpected "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipValue()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->failOnUnknown:Z

    if-nez v0, :cond_ef

    const/4 v0, 0x0

    move v1, v0

    :cond_6
    iget v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v2, :cond_e

    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->doPeek()I

    move-result v2

    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_16

    invoke-virtual {p0, v4}, Lcom/oplus/anim/parser/moshi/JsonReader;->pushScope(I)V

    goto :goto_1b

    :cond_16
    if-ne v2, v4, :cond_1f

    invoke-virtual {p0, v3}, Lcom/oplus/anim/parser/moshi/JsonReader;->pushScope(I)V

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d8

    :cond_1f
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_50

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_31

    iget v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    goto/16 :goto_d8

    :cond_31
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5e

    iget v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    goto/16 :goto_d8

    :cond_5e
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    const/16 v3, 0xe

    if-eq v2, v3, :cond_d5

    const/16 v3, 0xa

    if-ne v2, v3, :cond_86

    goto :goto_d5

    :cond_86
    const/16 v3, 0x9

    if-eq v2, v3, :cond_cf

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8f

    goto :goto_cf

    :cond_8f
    const/16 v3, 0x8

    if-eq v2, v3, :cond_c9

    const/16 v3, 0xc

    if-ne v2, v3, :cond_98

    goto :goto_c9

    :cond_98
    const/16 v3, 0x11

    if-ne v2, v3, :cond_a5

    iget-object v2, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    iget v3, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peekedNumberLength:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lokio/Buffer;->skip(J)V

    goto :goto_d8

    :cond_a5
    const/16 v3, 0x12

    if-eq v2, v3, :cond_aa

    goto :goto_d8

    :cond_aa
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    :goto_c9
    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_d8

    :cond_cf
    :goto_cf
    sget-object v2, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    invoke-direct {p0, v2}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipQuotedValue(Lokio/ByteString;)V

    goto :goto_d8

    :cond_d5
    :goto_d5
    invoke-direct {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->skipUnquotedValue()V

    :goto_d8
    iput v0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peeked:I

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonReader;->pathNames:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v0, "null"

    aput-object v0, p0, v1

    return-void

    :cond_ef
    new-instance v0, Lcom/oplus/anim/parser/moshi/JsonDataException;

    const-string v1, "Cannot skip unexpected "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->peek()Lcom/oplus/anim/parser/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/anim/parser/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/anim/parser/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "JsonReader("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/anim/parser/moshi/JsonUtf8Reader;->source:Lokio/BufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
