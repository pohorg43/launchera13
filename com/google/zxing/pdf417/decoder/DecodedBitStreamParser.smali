.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_27
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_39

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_39
    return-void

    :array_3a
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    nop

    :array_5c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .registers 28

    move/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    const/16 v5, 0x3a0

    const/16 v6, 0x386

    const-wide/16 v7, 0x384

    const/16 v11, 0x39c

    const/16 v12, 0x385

    const/16 v13, 0x384

    const/4 v14, 0x6

    const/16 v16, 0x0

    if-ne v0, v12, :cond_aa

    new-array v0, v14, [C

    new-array v9, v14, [I

    add-int/lit8 v10, p2, 0x1

    aget v19, p1, p2

    move/from16 v20, v16

    move/from16 v21, v20

    move/from16 v15, v19

    const-wide/16 v17, 0x0

    :goto_29
    aget v2, p1, v16

    if-ge v10, v2, :cond_8d

    if-nez v20, :cond_8d

    add-int/lit8 v2, v21, 0x1

    aput v15, v9, v21

    mul-long v17, v17, v7

    int-to-long v7, v15

    add-long v17, v17, v7

    add-int/lit8 v7, v10, 0x1

    aget v15, p1, v10

    if-eq v15, v13, :cond_7f

    if-eq v15, v12, :cond_7f

    if-eq v15, v6, :cond_7f

    if-eq v15, v11, :cond_7f

    if-eq v15, v5, :cond_7f

    if-eq v15, v4, :cond_7f

    if-ne v15, v3, :cond_4b

    goto :goto_7f

    :cond_4b
    rem-int/lit8 v8, v2, 0x5

    if-nez v8, :cond_74

    if-lez v2, :cond_74

    move/from16 v2, v16

    :goto_53
    if-ge v2, v14, :cond_6b

    rsub-int/lit8 v8, v2, 0x5

    const-wide/16 v22, 0x100

    move/from16 p0, v15

    rem-long v14, v17, v22

    long-to-int v10, v14

    int-to-char v10, v10

    aput-char v10, v0, v8

    const/16 v8, 0x8

    shr-long v17, v17, v8

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, p0

    const/4 v14, 0x6

    goto :goto_53

    :cond_6b
    move/from16 p0, v15

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move v10, v7

    move/from16 v21, v16

    goto :goto_7b

    :cond_74
    move/from16 p0, v15

    move/from16 v15, p0

    move/from16 v21, v2

    move v10, v7

    :goto_7b
    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    goto :goto_29

    :cond_7f
    :goto_7f
    move/from16 p0, v15

    add-int/lit8 v10, v7, -0x1

    move/from16 v15, p0

    move/from16 v21, v2

    const-wide/16 v7, 0x384

    const/4 v14, 0x6

    const/16 v20, 0x1

    goto :goto_29

    :cond_8d
    aget v0, p1, v16

    if-ne v10, v0, :cond_98

    if-ge v15, v13, :cond_98

    add-int/lit8 v0, v21, 0x1

    aput v15, v9, v21

    goto :goto_9a

    :cond_98
    move/from16 v0, v21

    :goto_9a
    move/from16 v2, v16

    :goto_9c
    if-ge v2, v0, :cond_a7

    aget v3, v9, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9c

    :cond_a7
    move v0, v10

    goto/16 :goto_10d

    :cond_aa
    if-ne v0, v11, :cond_10b

    move/from16 v0, p2

    move/from16 v2, v16

    move v7, v2

    const-wide/16 v9, 0x0

    :goto_b3
    aget v8, p1, v16

    if-ge v0, v8, :cond_10d

    if-nez v2, :cond_10d

    add-int/lit8 v8, v0, 0x1

    aget v0, p1, v0

    if-ge v0, v13, :cond_c8

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v14, 0x384

    mul-long/2addr v9, v14

    int-to-long v14, v0

    add-long/2addr v9, v14

    :cond_c6
    move v0, v8

    goto :goto_da

    :cond_c8
    if-eq v0, v13, :cond_d6

    if-eq v0, v12, :cond_d6

    if-eq v0, v6, :cond_d6

    if-eq v0, v11, :cond_d6

    if-eq v0, v5, :cond_d6

    if-eq v0, v4, :cond_d6

    if-ne v0, v3, :cond_c6

    :cond_d6
    add-int/lit8 v8, v8, -0x1

    move v0, v8

    const/4 v2, 0x1

    :goto_da
    rem-int/lit8 v8, v7, 0x5

    if-nez v8, :cond_103

    if-lez v7, :cond_103

    const/4 v8, 0x6

    new-array v7, v8, [C

    move/from16 v14, v16

    :goto_e5
    if-ge v14, v8, :cond_fb

    rsub-int/lit8 v15, v14, 0x5

    const-wide/16 v17, 0xff

    and-long v3, v9, v17

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v7, v15

    const/16 v3, 0x8

    shr-long/2addr v9, v3

    add-int/lit8 v14, v14, 0x1

    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_e5

    :cond_fb
    const/16 v3, 0x8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move/from16 v7, v16

    goto :goto_106

    :cond_103
    const/16 v3, 0x8

    const/4 v8, 0x6

    :goto_106
    const/16 v3, 0x39a

    const/16 v4, 0x39b

    goto :goto_b3

    :cond_10b
    move/from16 v0, p2

    :cond_10d
    :goto_10d
    return v0
.end method

.method public static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x1

    aget v1, p0, v1

    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    :goto_10
    const/4 v4, 0x0

    aget v4, p0, v4

    if-ge v2, v4, :cond_4f

    const/16 v4, 0x391

    if-eq v1, v4, :cond_3e

    const/16 v4, 0x3a0

    if-eq v1, v4, :cond_39

    packed-switch v1, :pswitch_data_68

    packed-switch v1, :pswitch_data_72

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_42

    :pswitch_2a  #0x39a, 0x39b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_2f  #0x386
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_42

    :pswitch_34  #0x384
    invoke-static {p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_42

    :cond_39
    invoke-static {p0, v2, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v1

    goto :goto_42

    :cond_3e
    :pswitch_3e  #0x385, 0x39c
    invoke-static {v1, p0, v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v1

    :goto_42
    array-length v2, p0

    if-ge v1, v2, :cond_4a

    add-int/lit8 v2, v1, 0x1

    aget v1, p0, v1

    goto :goto_10

    :cond_4a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_63

    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    :cond_63
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_68
    .packed-switch 0x384
        :pswitch_34  #00000384
        :pswitch_3e  #00000385
        :pswitch_2f  #00000386
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x39a
        :pswitch_2a  #0000039a
        :pswitch_2a  #0000039b
        :pswitch_3e  #0000039c
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v2, p1, :cond_20

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_20
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_31

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v0, v2, :cond_79

    const/4 v0, 0x2

    new-array v2, v0, [I

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_16

    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_16
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    aget v0, p0, p1

    const/16 v2, 0x39b

    const/16 v3, 0x39a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_6f

    add-int/lit8 p1, p1, 0x1

    aget v0, p0, v1

    sub-int/2addr v0, p1

    new-array v0, v0, [I

    move v2, v1

    move v5, v2

    :goto_43
    aget v6, p0, v1

    if-ge p1, v6, :cond_67

    if-nez v2, :cond_67

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_58

    add-int/lit8 v7, v5, 0x1

    aput p1, v0, v5

    move p1, v6

    move v5, v7

    goto :goto_43

    :cond_58
    if-ne p1, v3, :cond_62

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 v6, v6, 0x1

    move v2, v4

    move p1, v6

    goto :goto_43

    :cond_62
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_67
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    goto :goto_78

    :cond_6f
    aget p0, p0, p1

    if-ne p0, v3, :cond_78

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    add-int/lit8 p1, p1, 0x1

    :cond_78
    :goto_78
    return p1

    :cond_79
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .registers 20

    move-object/from16 v0, p3

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move/from16 v4, p2

    move-object v3, v1

    move v5, v2

    :goto_9
    if-ge v5, v4, :cond_102

    aget v6, p0, v5

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x1c

    const/16 v9, 0x1b

    const/16 v10, 0x20

    const/16 v11, 0x391

    const/16 v12, 0x384

    const/16 v13, 0x1d

    const/16 v14, 0x1a

    packed-switch v7, :pswitch_data_104

    goto/16 :goto_f8

    :pswitch_28  #0x6
    if-ge v6, v13, :cond_2f

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v1, v6

    goto :goto_49

    :cond_2f
    if-ne v6, v13, :cond_35

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_35
    if-ne v6, v11, :cond_3e

    aget v1, p1, v5

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    :cond_3e
    if-ne v6, v12, :cond_55

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :pswitch_44  #0x5
    if-ge v6, v14, :cond_4c

    add-int/lit8 v6, v6, 0x41

    int-to-char v10, v6

    :goto_49
    move-object v1, v3

    goto/16 :goto_f9

    :cond_4c
    if-ne v6, v14, :cond_4f

    goto :goto_49

    :cond_4f
    if-ne v6, v12, :cond_55

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_55
    :goto_55
    move v10, v2

    goto :goto_49

    :pswitch_57  #0x4
    if-ge v6, v13, :cond_5f

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_f9

    :cond_5f
    if-ne v6, v13, :cond_65

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_65
    if-ne v6, v11, :cond_6f

    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f8

    :cond_6f
    if-ne v6, v12, :cond_f8

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :pswitch_75  #0x3
    const/16 v7, 0x19

    if-ge v6, v7, :cond_7f

    sget-object v7, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    aget-char v10, v7, v6

    goto/16 :goto_f9

    :cond_7f
    if-ne v6, v7, :cond_85

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_85
    if-ne v6, v14, :cond_89

    goto/16 :goto_f9

    :cond_89
    if-ne v6, v9, :cond_8f

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_8f
    if-ne v6, v8, :cond_95

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :cond_95
    if-ne v6, v13, :cond_9a

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b6

    :cond_9a
    if-ne v6, v11, :cond_a4

    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_f8

    :cond_a4
    if-ne v6, v12, :cond_f8

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_f8

    :pswitch_aa  #0x2
    if-ge v6, v14, :cond_af

    add-int/lit8 v6, v6, 0x61

    goto :goto_d7

    :cond_af
    if-ne v6, v14, :cond_b2

    goto :goto_f9

    :cond_b2
    if-ne v6, v9, :cond_bb

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_b6
    move v10, v2

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    goto :goto_f9

    :cond_bb
    if-ne v6, v8, :cond_c0

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f8

    :cond_c0
    if-ne v6, v13, :cond_c5

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b6

    :cond_c5
    if-ne v6, v11, :cond_ce

    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_ce
    if-ne v6, v12, :cond_f8

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f8

    :pswitch_d3  #0x1
    if-ge v6, v14, :cond_d9

    add-int/lit8 v6, v6, 0x41

    :goto_d7
    int-to-char v10, v6

    goto :goto_f9

    :cond_d9
    if-ne v6, v14, :cond_dc

    goto :goto_f9

    :cond_dc
    if-ne v6, v9, :cond_e1

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f8

    :cond_e1
    if-ne v6, v8, :cond_e6

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_f8

    :cond_e6
    if-ne v6, v13, :cond_eb

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_b6

    :cond_eb
    if-ne v6, v11, :cond_f4

    aget v6, p1, v5

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f8

    :cond_f4
    if-ne v6, v12, :cond_f8

    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :cond_f8
    :goto_f8
    move v10, v2

    :goto_f9
    if-eqz v10, :cond_fe

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_fe
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    :cond_102
    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_d3  #00000001
        :pswitch_aa  #00000002
        :pswitch_75  #00000003
        :pswitch_57  #00000004
        :pswitch_44  #00000005
        :pswitch_28  #00000006
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    aget v4, p0, v1

    if-ge p1, v4, :cond_4d

    if-nez v2, :cond_4d

    add-int/lit8 v4, p1, 0x1

    aget p1, p0, p1

    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_17

    move v2, v6

    :cond_17
    const/16 v5, 0x384

    if-ge p1, v5, :cond_20

    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_20
    if-eq p1, v5, :cond_36

    const/16 v5, 0x385

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39c

    if-eq p1, v5, :cond_36

    const/16 v5, 0x3a0

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39b

    if-eq p1, v5, :cond_36

    const/16 v5, 0x39a

    if-ne p1, v5, :cond_39

    :cond_36
    add-int/lit8 v4, v4, -0x1

    move v2, v6

    :cond_39
    :goto_39
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_43

    const/16 v5, 0x386

    if-eq p1, v5, :cond_43

    if-eqz v2, :cond_4b

    :cond_43
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    :cond_4b
    move p1, v4

    goto :goto_7

    :cond_4d
    return p1
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .registers 12

    const/4 v0, 0x0

    aget v1, p0, v0

    sub-int/2addr v1, p1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    new-array v1, v1, [I

    aget v3, p0, v0

    sub-int/2addr v3, p1

    shl-int/2addr v3, v2

    new-array v3, v3, [I

    move v4, v0

    move v5, v4

    :goto_10
    aget v6, p0, v0

    if-ge p1, v6, :cond_50

    if-nez v4, :cond_50

    add-int/lit8 v6, p1, 0x1

    aget p1, p0, p1

    const/16 v7, 0x384

    if-ge p1, v7, :cond_2b

    div-int/lit8 v7, p1, 0x1e

    aput v7, v1, v5

    add-int/lit8 v7, v5, 0x1

    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v7

    add-int/lit8 v5, v5, 0x2

    goto :goto_39

    :cond_2b
    const/16 v8, 0x391

    if-eq p1, v8, :cond_45

    const/16 v8, 0x3a0

    if-eq p1, v8, :cond_41

    packed-switch p1, :pswitch_data_54

    packed-switch p1, :pswitch_data_5e

    :goto_39
    move p1, v6

    goto :goto_10

    :pswitch_3b  #0x384
    add-int/lit8 p1, v5, 0x1

    aput v7, v1, v5

    move v5, p1

    goto :goto_39

    :cond_41
    :pswitch_41  #0x385, 0x386, 0x39a, 0x39b, 0x39c
    add-int/lit8 v6, v6, -0x1

    move v4, v2

    goto :goto_39

    :cond_45
    aput v8, v1, v5

    add-int/lit8 p1, v6, 0x1

    aget v6, p0, v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_50
    invoke-static {v1, v3, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    :pswitch_data_54
    .packed-switch 0x384
        :pswitch_3b  #00000384
        :pswitch_41  #00000385
        :pswitch_41  #00000386
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x39a
        :pswitch_41  #0000039a
        :pswitch_41  #0000039b
        :pswitch_41  #0000039c
    .end packed-switch
.end method
