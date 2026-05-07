.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_a

    return-object v1

    :cond_a
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_29

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    const/16 v3, 0x30

    if-lt v2, v3, :cond_37

    const/16 v3, 0x39

    if-gt v2, v3, :cond_37

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_37
    return-object v1

    :cond_38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_28

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_22

    invoke-static {p1, p0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .registers 24

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return-object v2

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    :goto_23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_281

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_30

    return-object v2

    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v18, v3

    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v20, v3

    const/16 v20, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v21

    move/from16 p1, v3

    sparse-switch v21, :sswitch_data_28a

    :goto_4f
    move/from16 v19, v20

    goto/16 :goto_228

    :sswitch_53
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_4f

    :cond_5c
    const/16 v19, 0x22

    goto/16 :goto_228

    :sswitch_60
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_4f

    :cond_69
    const/16 v19, 0x21

    goto/16 :goto_228

    :sswitch_6d
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    goto :goto_4f

    :cond_76
    const/16 v19, 0x20

    goto/16 :goto_228

    :sswitch_7a
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_4f

    :cond_83
    const/16 v19, 0x1f

    goto/16 :goto_228

    :sswitch_87
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    goto :goto_4f

    :cond_90
    const/16 v19, 0x1e

    goto/16 :goto_228

    :sswitch_94
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    goto :goto_4f

    :cond_9d
    const/16 v19, 0x1d

    goto/16 :goto_228

    :sswitch_a1
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_aa

    goto :goto_4f

    :cond_aa
    const/16 v19, 0x1c

    goto/16 :goto_228

    :sswitch_ae
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    goto :goto_4f

    :cond_b7
    const/16 v19, 0x1b

    goto/16 :goto_228

    :sswitch_bb
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    goto :goto_4f

    :cond_c4
    const/16 v19, 0x1a

    goto/16 :goto_228

    :sswitch_c8
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    goto/16 :goto_4f

    :cond_d2
    const/16 v19, 0x19

    goto/16 :goto_228

    :sswitch_d6
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e0

    goto/16 :goto_4f

    :cond_e0
    const/16 v19, 0x18

    goto/16 :goto_228

    :sswitch_e4
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ee

    goto/16 :goto_4f

    :cond_ee
    const/16 v19, 0x17

    goto/16 :goto_228

    :sswitch_f2
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_fc

    goto/16 :goto_4f

    :cond_fc
    const/16 v19, 0x16

    goto/16 :goto_228

    :sswitch_100
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10a

    goto/16 :goto_4f

    :cond_10a
    const/16 v19, 0x15

    goto/16 :goto_228

    :sswitch_10e
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_118

    goto/16 :goto_4f

    :cond_118
    const/16 v19, 0x14

    goto/16 :goto_228

    :sswitch_11c
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_126

    goto/16 :goto_4f

    :cond_126
    const/16 v19, 0x13

    goto/16 :goto_228

    :sswitch_12a
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_134

    goto/16 :goto_4f

    :cond_134
    const/16 v19, 0x12

    goto/16 :goto_228

    :sswitch_138
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    goto/16 :goto_4f

    :cond_142
    const/16 v19, 0x11

    goto/16 :goto_228

    :sswitch_146
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_150

    goto/16 :goto_4f

    :cond_150
    const/16 v19, 0x10

    goto/16 :goto_228

    :sswitch_154
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15e

    goto/16 :goto_4f

    :cond_15e
    const/16 v19, 0xf

    goto/16 :goto_228

    :sswitch_162
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16c

    goto/16 :goto_4f

    :cond_16c
    const/16 v19, 0xe

    goto/16 :goto_228

    :sswitch_170
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17a

    goto/16 :goto_4f

    :cond_17a
    const/16 v19, 0xd

    goto/16 :goto_228

    :sswitch_17e
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_188

    goto/16 :goto_4f

    :cond_188
    const/16 v19, 0xc

    goto/16 :goto_228

    :sswitch_18c
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_196

    goto/16 :goto_4f

    :cond_196
    const/16 v19, 0xb

    goto/16 :goto_228

    :sswitch_19a
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a4

    goto/16 :goto_4f

    :cond_1a4
    const/16 v19, 0xa

    goto/16 :goto_228

    :sswitch_1a8
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b2

    goto/16 :goto_4f

    :cond_1b2
    const/16 v19, 0x9

    goto/16 :goto_228

    :sswitch_1b6
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c0

    goto/16 :goto_4f

    :cond_1c0
    const/16 v19, 0x8

    goto/16 :goto_228

    :sswitch_1c4
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ce

    goto/16 :goto_4f

    :cond_1ce
    const/16 v19, 0x7

    goto :goto_228

    :sswitch_1d1
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1db

    goto/16 :goto_4f

    :cond_1db
    const/16 v19, 0x6

    goto :goto_228

    :sswitch_1de
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e8

    goto/16 :goto_4f

    :cond_1e8
    const/16 v19, 0x5

    goto :goto_228

    :sswitch_1eb
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f5

    goto/16 :goto_4f

    :cond_1f5
    const/16 v19, 0x4

    goto :goto_228

    :sswitch_1f8
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_202

    goto/16 :goto_4f

    :cond_202
    const/16 v19, 0x3

    goto :goto_228

    :sswitch_205
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_228

    goto/16 :goto_4f

    :sswitch_20f
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_219

    goto/16 :goto_4f

    :cond_219
    const/16 v19, 0x1

    goto :goto_228

    :sswitch_21c
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_226

    goto/16 :goto_4f

    :cond_226
    const/16 v19, 0x0

    :cond_228
    :goto_228
    packed-switch v19, :pswitch_data_318

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    goto :goto_27c

    :pswitch_230  #0x1f, 0x20, 0x21, 0x22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_239

    const/4 v3, 0x0

    return-object v3

    :cond_239
    const/4 v3, 0x0

    const/4 v15, 0x3

    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v15, v16

    move-object/from16 v16, v1

    goto :goto_27c

    :pswitch_24d  #0x1b, 0x1c, 0x1d, 0x1e
    const/4 v3, 0x0

    const/4 v15, 0x3

    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object v15, v2

    goto :goto_27c

    :pswitch_255  #0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a
    const/4 v3, 0x0

    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "LB"

    goto :goto_266

    :pswitch_25e  #0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10
    const/4 v3, 0x0

    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "KG"

    :goto_266
    move-object v12, v2

    goto :goto_27c

    :pswitch_268  #0x6
    const/4 v3, 0x0

    move-object v11, v2

    goto :goto_27c

    :pswitch_26b  #0x5
    const/4 v3, 0x0

    move-object v10, v2

    goto :goto_27c

    :pswitch_26e  #0x4
    const/4 v3, 0x0

    move-object v9, v2

    goto :goto_27c

    :pswitch_271  #0x3
    const/4 v3, 0x0

    move-object v8, v2

    goto :goto_27c

    :pswitch_274  #0x2
    const/4 v3, 0x0

    move-object v7, v2

    goto :goto_27c

    :pswitch_277  #0x1
    const/4 v3, 0x0

    move-object v5, v2

    goto :goto_27c

    :pswitch_27a  #0x0
    const/4 v3, 0x0

    move-object v6, v2

    :goto_27c
    move/from16 v3, p1

    const/4 v2, 0x0

    goto/16 :goto_23

    :cond_281
    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    :sswitch_data_28a
    .sparse-switch
        0x600 -> :sswitch_21c
        0x601 -> :sswitch_20f
        0x61f -> :sswitch_205
        0x620 -> :sswitch_1f8
        0x622 -> :sswitch_1eb
        0x624 -> :sswitch_1de
        0x626 -> :sswitch_1d1
        0x17ecde -> :sswitch_1c4
        0x17ecdf -> :sswitch_1b6
        0x17ece0 -> :sswitch_1a8
        0x17ece1 -> :sswitch_19a
        0x17ece2 -> :sswitch_18c
        0x17ece3 -> :sswitch_17e
        0x17ece4 -> :sswitch_170
        0x17ece5 -> :sswitch_162
        0x17ece6 -> :sswitch_154
        0x17ece7 -> :sswitch_146
        0x17f09f -> :sswitch_138
        0x17f0a0 -> :sswitch_12a
        0x17f0a1 -> :sswitch_11c
        0x17f0a2 -> :sswitch_10e
        0x17f0a3 -> :sswitch_100
        0x17f0a4 -> :sswitch_f2
        0x17f0a5 -> :sswitch_e4
        0x17f0a6 -> :sswitch_d6
        0x17f0a7 -> :sswitch_c8
        0x17f0a8 -> :sswitch_bb
        0x180b24 -> :sswitch_ae
        0x180b25 -> :sswitch_a1
        0x180b26 -> :sswitch_94
        0x180b27 -> :sswitch_87
        0x180b43 -> :sswitch_7a
        0x180b44 -> :sswitch_6d
        0x180b45 -> :sswitch_60
        0x180b46 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_318
    .packed-switch 0x0
        :pswitch_27a  #00000000
        :pswitch_277  #00000001
        :pswitch_274  #00000002
        :pswitch_271  #00000003
        :pswitch_26e  #00000004
        :pswitch_26b  #00000005
        :pswitch_268  #00000006
        :pswitch_25e  #00000007
        :pswitch_25e  #00000008
        :pswitch_25e  #00000009
        :pswitch_25e  #0000000a
        :pswitch_25e  #0000000b
        :pswitch_25e  #0000000c
        :pswitch_25e  #0000000d
        :pswitch_25e  #0000000e
        :pswitch_25e  #0000000f
        :pswitch_25e  #00000010
        :pswitch_255  #00000011
        :pswitch_255  #00000012
        :pswitch_255  #00000013
        :pswitch_255  #00000014
        :pswitch_255  #00000015
        :pswitch_255  #00000016
        :pswitch_255  #00000017
        :pswitch_255  #00000018
        :pswitch_255  #00000019
        :pswitch_255  #0000001a
        :pswitch_24d  #0000001b
        :pswitch_24d  #0000001c
        :pswitch_24d  #0000001d
        :pswitch_24d  #0000001e
        :pswitch_230  #0000001f
        :pswitch_230  #00000020
        :pswitch_230  #00000021
        :pswitch_230  #00000022
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p0

    return-object p0
.end method
