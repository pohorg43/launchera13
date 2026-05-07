.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "EUC_JP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_11

    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    return-object v1

    :cond_11
    array-length v1, v0

    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_2d

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_2d

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_2d

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_2d

    move v2, v5

    goto :goto_2e

    :cond_2d
    move v2, v6

    :goto_2e
    move v7, v5

    move v8, v7

    move v3, v6

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_3e
    if-ge v9, v1, :cond_ee

    if-nez v5, :cond_46

    if-nez v7, :cond_46

    if-eqz v8, :cond_ee

    :cond_46
    aget-byte v4, v0, v9

    and-int/lit16 v4, v4, 0xff

    if-eqz v8, :cond_7a

    if-lez v10, :cond_57

    and-int/lit16 v0, v4, 0x80

    if-nez v0, :cond_54

    :cond_52
    :goto_52
    const/4 v8, 0x0

    goto :goto_7a

    :cond_54
    add-int/lit8 v10, v10, -0x1

    goto :goto_7a

    :cond_57
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_7a

    and-int/lit8 v0, v4, 0x40

    if-nez v0, :cond_60

    goto :goto_52

    :cond_60
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_69

    add-int/lit8 v12, v12, 0x1

    goto :goto_7a

    :cond_69
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_72

    add-int/lit8 v13, v13, 0x1

    goto :goto_7a

    :cond_72
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_52

    add-int/lit8 v14, v14, 0x1

    :cond_7a
    :goto_7a
    const/16 v0, 0x7f

    if-eqz v5, :cond_98

    if-le v4, v0, :cond_86

    const/16 v0, 0xa0

    if-ge v4, v0, :cond_86

    const/4 v5, 0x0

    goto :goto_98

    :cond_86
    const/16 v0, 0x9f

    if-le v4, v0, :cond_98

    const/16 v0, 0xc0

    if-lt v4, v0, :cond_96

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_96

    const/16 v0, 0xf7

    if-ne v4, v0, :cond_98

    :cond_96
    add-int/lit8 v16, v16, 0x1

    :cond_98
    :goto_98
    if-eqz v7, :cond_e7

    if-lez v11, :cond_ac

    const/16 v0, 0x40

    if-lt v4, v0, :cond_e6

    const/16 v0, 0x7f

    if-eq v4, v0, :cond_e6

    const/16 v0, 0xfc

    if-le v4, v0, :cond_a9

    goto :goto_e6

    :cond_a9
    add-int/lit8 v11, v11, -0x1

    goto :goto_e7

    :cond_ac
    const/16 v0, 0x80

    if-eq v4, v0, :cond_e6

    const/16 v0, 0xa0

    if-eq v4, v0, :cond_e6

    const/16 v0, 0xef

    if-le v4, v0, :cond_b9

    goto :goto_e6

    :cond_b9
    const/16 v0, 0xa0

    if-le v4, v0, :cond_d0

    const/16 v0, 0xe0

    if-ge v4, v0, :cond_d0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_cb

    move v15, v0

    move/from16 v18, v15

    goto :goto_cd

    :cond_cb
    move/from16 v18, v0

    :goto_cd
    const/16 v17, 0x0

    goto :goto_e7

    :cond_d0
    const/16 v0, 0x7f

    if-le v4, v0, :cond_e1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v17, 0x1

    if-le v0, v6, :cond_de

    move v6, v0

    move/from16 v17, v6

    goto :goto_e3

    :cond_de
    move/from16 v17, v0

    goto :goto_e3

    :cond_e1
    const/16 v17, 0x0

    :goto_e3
    const/16 v18, 0x0

    goto :goto_e7

    :cond_e6
    :goto_e6
    const/4 v7, 0x0

    :cond_e7
    :goto_e7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x3

    goto/16 :goto_3e

    :cond_ee
    if-eqz v8, :cond_f3

    if-lez v10, :cond_f3

    const/4 v8, 0x0

    :cond_f3
    if-eqz v7, :cond_f8

    if-lez v11, :cond_f8

    const/4 v7, 0x0

    :cond_f8
    const-string v0, "UTF8"

    if-eqz v8, :cond_103

    if-nez v2, :cond_102

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_103

    :cond_102
    return-object v0

    :cond_103
    const-string v2, "SJIS"

    if-eqz v7, :cond_111

    sget-boolean v4, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v4, :cond_110

    const/4 v4, 0x3

    if-ge v15, v4, :cond_110

    if-lt v6, v4, :cond_111

    :cond_110
    return-object v2

    :cond_111
    const-string v4, "ISO8859_1"

    if-eqz v5, :cond_123

    if-eqz v7, :cond_123

    const/4 v6, 0x2

    if-ne v15, v6, :cond_11c

    if-eq v3, v6, :cond_122

    :cond_11c
    mul-int/lit8 v0, v16, 0xa

    if-lt v0, v1, :cond_121

    goto :goto_122

    :cond_121
    move-object v2, v4

    :cond_122
    :goto_122
    return-object v2

    :cond_123
    if-eqz v5, :cond_126

    return-object v4

    :cond_126
    if-eqz v7, :cond_129

    return-object v2

    :cond_129
    if-eqz v8, :cond_12c

    return-object v0

    :cond_12c
    sget-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    return-object v0
.end method
