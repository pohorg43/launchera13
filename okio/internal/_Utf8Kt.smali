.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .registers 13

    const-string v0, "$this$commonAsUtf8ToByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_12
    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    if-ge v2, v1, :cond_f9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_f2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v2

    :goto_27
    if-ge v2, v1, :cond_ea

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_56

    int-to-byte v6, v6

    add-int/lit8 v7, v4, 0x1

    aput-byte v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    :goto_3a
    if-ge v2, v1, :cond_54

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    if-gez v4, :cond_54

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v6, v7, 0x1

    aput-byte v2, v0, v7

    move v2, v4

    move v7, v6

    goto :goto_3a

    :cond_54
    move v4, v7

    goto :goto_27

    :cond_56
    const/16 v7, 0x800

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_73

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x1

    aput-byte v7, v0, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v8, 0x1

    aput-byte v4, v0, v8

    :goto_6f
    add-int/lit8 v2, v2, 0x1

    :goto_71
    move v4, v6

    goto :goto_27

    :cond_73
    const v7, 0xd800

    const/16 v8, 0x3f

    if-gt v7, v6, :cond_cf

    const v7, 0xdfff

    if-ge v7, v6, :cond_80

    goto :goto_cf

    :cond_80
    const v9, 0xdbff

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_ca

    add-int/lit8 v9, v2, 0x1

    if-le v1, v9, :cond_ca

    const v10, 0xdc00

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v10, v11, :cond_ca

    if-ge v7, v11, :cond_99

    goto :goto_ca

    :cond_99
    shl-int/lit8 v6, v6, 0xa

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v7, v6

    const v6, -0x35fdc00

    add-int/2addr v7, v6

    shr-int/lit8 v6, v7, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    add-int/lit8 v9, v4, 0x1

    aput-byte v6, v0, v4

    shr-int/lit8 v4, v7, 0xc

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v9, 0x1

    aput-byte v4, v0, v9

    shr-int/lit8 v4, v7, 0x6

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v9, v6, 0x1

    aput-byte v4, v0, v6

    and-int/lit8 v4, v7, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v9, 0x1

    aput-byte v4, v0, v9

    add-int/lit8 v2, v2, 0x2

    goto :goto_71

    :cond_ca
    :goto_ca
    add-int/lit8 v6, v4, 0x1

    aput-byte v8, v0, v4

    goto :goto_6f

    :cond_cf
    :goto_cf
    shr-int/lit8 v7, v6, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v7, v0, v4

    shr-int/lit8 v4, v6, 0x6

    and-int/2addr v4, v8

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v7, v9, 0x1

    aput-byte v4, v0, v9

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v6, v7, 0x1

    aput-byte v4, v0, v7

    goto :goto_6f

    :cond_ea
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_f2
    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_12

    :cond_f9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .registers 16

    const-string v0, "$this$commonToUtf8String"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_19e

    array-length v0, p0

    if-gt p2, v0, :cond_19e

    if-gt p1, p2, :cond_19e

    sub-int v0, p2, p1

    new-array v0, v0, [C

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge p1, p2, :cond_198

    aget-byte v3, p0, p1

    if-ltz v3, :cond_33

    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    add-int/lit8 p1, p1, 0x1

    :goto_1f
    if-ge p1, p2, :cond_31

    aget-byte v2, p0, p1

    if-ltz v2, :cond_31

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    int-to-char p1, p1

    add-int/lit8 v3, v4, 0x1

    aput-char p1, v0, v4

    move p1, v2

    move v4, v3

    goto :goto_1f

    :cond_31
    :goto_31
    move v2, v4

    goto :goto_12

    :cond_33
    shr-int/lit8 v4, v3, 0x5

    const/4 v5, -0x2

    const/16 v6, 0x80

    const v7, 0xfffd

    if-ne v4, v5, :cond_6d

    add-int/lit8 v3, p1, 0x1

    if-gt p2, v3, :cond_47

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_a5

    :cond_47
    aget-byte v4, p0, p1

    aget-byte v3, p0, v3

    and-int/lit16 v5, v3, 0xc0

    if-ne v5, v6, :cond_51

    const/4 v5, 0x1

    goto :goto_52

    :cond_51
    move v5, v1

    :goto_52
    if-nez v5, :cond_5a

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_a5

    :cond_5a
    xor-int/lit16 v3, v3, 0xf80

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr v3, v4

    if-ge v3, v6, :cond_67

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_b7

    :cond_67
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_b7

    :cond_6d
    shr-int/lit8 v4, v3, 0x4

    const v8, 0xd800

    const v9, 0xdfff

    const/4 v10, 0x3

    if-ne v4, v5, :cond_e0

    add-int/lit8 v3, p1, 0x2

    if-gt p2, v3, :cond_91

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_a5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_8d

    const/4 v2, 0x1

    goto :goto_8e

    :cond_8d
    move v2, v1

    :goto_8e
    if-nez v2, :cond_b7

    goto :goto_a5

    :cond_91
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v11, v5, 0xc0

    if-ne v11, v6, :cond_9d

    const/4 v11, 0x1

    goto :goto_9e

    :cond_9d
    move v11, v1

    :goto_9e
    if-nez v11, :cond_a7

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    :cond_a5
    :goto_a5
    const/4 v10, 0x1

    goto :goto_dd

    :cond_a7
    aget-byte v3, p0, v3

    and-int/lit16 v11, v3, 0xc0

    if-ne v11, v6, :cond_af

    const/4 v6, 0x1

    goto :goto_b0

    :cond_af
    move v6, v1

    :goto_b0
    if-nez v6, :cond_b9

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    :cond_b7
    :goto_b7
    const/4 v10, 0x2

    goto :goto_dd

    :cond_b9
    const v6, -0x1e080

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0xc

    xor-int/2addr v3, v4

    const/16 v4, 0x800

    if-ge v3, v4, :cond_cd

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_dd

    :cond_cd
    if-le v8, v3, :cond_d0

    goto :goto_d8

    :cond_d0
    if-lt v9, v3, :cond_d8

    int-to-char v3, v7

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    goto :goto_dd

    :cond_d8
    :goto_d8
    int-to-char v3, v3

    add-int/lit8 v4, v2, 0x1

    aput-char v3, v0, v2

    :goto_dd
    add-int/2addr p1, v10

    goto/16 :goto_31

    :cond_e0
    shr-int/lit8 v3, v3, 0x3

    if-ne v3, v5, :cond_18f

    add-int/lit8 v3, p1, 0x3

    if-gt p2, v3, :cond_10c

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    add-int/lit8 v2, p1, 0x1

    if-le p2, v2, :cond_11f

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_f8

    const/4 v2, 0x1

    goto :goto_f9

    :cond_f8
    move v2, v1

    :goto_f9
    if-nez v2, :cond_fc

    goto :goto_11f

    :cond_fc
    add-int/lit8 v2, p1, 0x2

    if-le p2, v2, :cond_133

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v6, :cond_108

    const/4 v2, 0x1

    goto :goto_109

    :cond_108
    move v2, v1

    :goto_109
    if-nez v2, :cond_18d

    goto :goto_133

    :cond_10c
    aget-byte v4, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v11, v5, 0xc0

    if-ne v11, v6, :cond_118

    const/4 v11, 0x1

    goto :goto_119

    :cond_118
    move v11, v1

    :goto_119
    if-nez v11, :cond_122

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    :cond_11f
    :goto_11f
    const/4 v10, 0x1

    goto/16 :goto_18d

    :cond_122
    add-int/lit8 v11, p1, 0x2

    aget-byte v11, p0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v6, :cond_12c

    const/4 v12, 0x1

    goto :goto_12d

    :cond_12c
    move v12, v1

    :goto_12d
    if-nez v12, :cond_135

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    :cond_133
    :goto_133
    const/4 v10, 0x2

    goto :goto_18d

    :cond_135
    aget-byte v3, p0, v3

    and-int/lit16 v12, v3, 0xc0

    if-ne v12, v6, :cond_13d

    const/4 v6, 0x1

    goto :goto_13e

    :cond_13d
    move v6, v1

    :goto_13e
    if-nez v6, :cond_145

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_18d

    :cond_145
    const v6, 0x381f80

    xor-int/2addr v3, v6

    shl-int/lit8 v6, v11, 0x6

    xor-int/2addr v3, v6

    shl-int/lit8 v5, v5, 0xc

    xor-int/2addr v3, v5

    shl-int/lit8 v4, v4, 0x12

    xor-int/2addr v3, v4

    const v4, 0x10ffff

    if-le v3, v4, :cond_15c

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_18c

    :cond_15c
    if-le v8, v3, :cond_15f

    goto :goto_166

    :cond_15f
    if-lt v9, v3, :cond_166

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_18c

    :cond_166
    :goto_166
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_16f

    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    goto :goto_18c

    :cond_16f
    if-eq v3, v7, :cond_188

    ushr-int/lit8 v4, v3, 0xa

    const v5, 0xd7c0

    add-int/2addr v4, v5

    int-to-char v4, v4

    add-int/lit8 v5, v2, 0x1

    aput-char v4, v0, v2

    and-int/lit16 v2, v3, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    add-int/lit8 v3, v5, 0x1

    aput-char v2, v0, v5

    goto :goto_18c

    :cond_188
    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    :goto_18c
    const/4 v10, 0x4

    :cond_18d
    :goto_18d
    add-int/2addr p1, v10

    goto :goto_195

    :cond_18f
    add-int/lit8 v3, v2, 0x1

    aput-char v7, v0, v2

    add-int/lit8 p1, p1, 0x1

    :goto_195
    move v2, v3

    goto/16 :goto_12

    :cond_198
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_19e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "size="

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p0, p0

    const-string v2, " beginIndex="

    const-string v3, " endIndex="

    invoke-static {v1, p0, v2, p1, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_a

    array-length p2, p0

    :cond_a
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
