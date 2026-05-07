.class public Lcom/android/common/sort/WordQuery;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX:I = 0xf979

.field private static final MIN:I = 0x3007

.field private static final NAN:[Ljava/lang/Object;

.field private static final OBJECT_ARRAY:[[I

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "WordQuery"


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v2

    const/4 v5, 0x2

    aput-object v4, v1, v5

    sput-object v1, Lcom/android/common/sort/WordQuery;->NAN:[Ljava/lang/Object;

    const/16 v1, 0x33

    new-array v1, v1, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_1da

    aput-object v4, v1, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_1e2

    aput-object v3, v1, v2

    new-array v2, v5, [I

    fill-array-data v2, :array_1ea

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_1f2

    aput-object v2, v1, v0

    new-array v0, v5, [I

    fill-array-data v0, :array_1fa

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_202

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_20a

    const/4 v2, 0x6

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_212

    const/4 v2, 0x7

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_21a

    const/16 v2, 0x8

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_222

    const/16 v2, 0x9

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_22a

    const/16 v2, 0xa

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_232

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_23a

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_242

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_24a

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_252

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_25a

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_262

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_26a

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_272

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_27a

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_282

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_28a

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_292

    const/16 v2, 0x17

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_29a

    const/16 v2, 0x18

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2a2

    const/16 v2, 0x19

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2aa

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2b2

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2ba

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2c2

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2ca

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2d2

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2da

    const/16 v2, 0x20

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2e2

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2ea

    const/16 v2, 0x22

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2f2

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_2fa

    const/16 v2, 0x24

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_302

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_30a

    const/16 v2, 0x26

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_312

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_31a

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_322

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_32a

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_332

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_33a

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_342

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_34a

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_352

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_35a

    const/16 v2, 0x30

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_362

    const/16 v2, 0x31

    aput-object v0, v1, v2

    new-array v0, v5, [I

    fill-array-data v0, :array_36a

    const/16 v2, 0x32

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/common/sort/WordQuery;->OBJECT_ARRAY:[[I

    return-void

    :array_1da
    .array-data 4
        0x3007
        0x4fa1
    .end array-data

    :array_1e2
    .array-data 4
        0x4fa2
        0x5141
    .end array-data

    :array_1ea
    .array-data 4
        0x5142
        0x52e8
    .end array-data

    :array_1f2
    .array-data 4
        0x52e9
        0x548a
    .end array-data

    :array_1fa
    .array-data 4
        0x548b
        0x562f
    .end array-data

    :array_202
    .array-data 4
        0x5630
        0x57d0
    .end array-data

    :array_20a
    .array-data 4
        0x57d1
        0x5971
    .end array-data

    :array_212
    .array-data 4
        0x5972
        0x5b11
    .end array-data

    :array_21a
    .array-data 4
        0x5b12
        0x5cb1
    .end array-data

    :array_222
    .array-data 4
        0x5cb2
        0x5e52
    .end array-data

    :array_22a
    .array-data 4
        0x5e53
        0x5ff2
    .end array-data

    :array_232
    .array-data 4
        0x5ff3
        0x6193
    .end array-data

    :array_23a
    .array-data 4
        0x6194
        0x6333
    .end array-data

    :array_242
    .array-data 4
        0x6334
        0x64d3
    .end array-data

    :array_24a
    .array-data 4
        0x64d4
        0x6674
    .end array-data

    :array_252
    .array-data 4
        0x6675
        0x6819
    .end array-data

    :array_25a
    .array-data 4
        0x681a
        0x69bb
    .end array-data

    :array_262
    .array-data 4
        0x69bc
        0x6b5b
    .end array-data

    :array_26a
    .array-data 4
        0x6b5c
        0x6cfc
    .end array-data

    :array_272
    .array-data 4
        0x6cfd
        0x6e9c
    .end array-data

    :array_27a
    .array-data 4
        0x6e9d
        0x703c
    .end array-data

    :array_282
    .array-data 4
        0x703d
        0x71dd
    .end array-data

    :array_28a
    .array-data 4
        0x71de
        0x737e
    .end array-data

    :array_292
    .array-data 4
        0x737f
        0x7525
    .end array-data

    :array_29a
    .array-data 4
        0x7526
        0x76c6
    .end array-data

    :array_2a2
    .array-data 4
        0x76c7
        0x7867
    .end array-data

    :array_2aa
    .array-data 4
        0x7868
        0x7a08
    .end array-data

    :array_2b2
    .array-data 4
        0x7a09
        0x7ba9
    .end array-data

    :array_2ba
    .array-data 4
        0x7baa
        0x7d49
    .end array-data

    :array_2c2
    .array-data 4
        0x7d4a
        0x7eea
    .end array-data

    :array_2ca
    .array-data 4
        0x7eeb
        0x808b
    .end array-data

    :array_2d2
    .array-data 4
        0x808c
        0x822c
    .end array-data

    :array_2da
    .array-data 4
        0x822d
        0x83cd
    .end array-data

    :array_2e2
    .array-data 4
        0x83ce
        0x856e
    .end array-data

    :array_2ea
    .array-data 4
        0x856f
        0x8710
    .end array-data

    :array_2f2
    .array-data 4
        0x8711
        0x88b1
    .end array-data

    :array_2fa
    .array-data 4
        0x88b2
        0x8a52
    .end array-data

    :array_302
    .array-data 4
        0x8a53
        0x8bf2
    .end array-data

    :array_30a
    .array-data 4
        0x8bf3
        0x8d92
    .end array-data

    :array_312
    .array-data 4
        0x8d93
        0x8f32
    .end array-data

    :array_31a
    .array-data 4
        0x8f33
        0x90d3
    .end array-data

    :array_322
    .array-data 4
        0x90d4
        0x9273
    .end array-data

    :array_32a
    .array-data 4
        0x9274
        0x9414
    .end array-data

    :array_332
    .array-data 4
        0x9415
        0x95b5
    .end array-data

    :array_33a
    .array-data 4
        0x95b6
        0x9758
    .end array-data

    :array_342
    .array-data 4
        0x9759
        0x98f8
    .end array-data

    :array_34a
    .array-data 4
        0x98f9
        0x9a98
    .end array-data

    :array_352
    .array-data 4
        0x9a99
        0x9c38
    .end array-data

    :array_35a
    .array-data 4
        0x9c39
        0x9dd8
    .end array-data

    :array_362
    .array-data 4
        0x9dd9
        0x9f78
    .end array-data

    :array_36a
    .array-data 4
        0x9f79
        0xf979
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtenedBuckets(Ljava/lang/String;)[C
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    sget-object p0, Lcom/android/common/sort/OplusExtenedBucket;->BUCKET_TW:[C

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getPolyPinyinsByIndex(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/common/sort/PolyphoneData;->getPolyPinyinsByIndex(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSinglePinyinStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_f

    goto :goto_2d

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object v0

    :cond_1d
    invoke-static {p0}, Lcom/android/common/sort/WordQuery;->search(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Lcom/android/common/sort/WordQuery;->NAN:[Ljava/lang/Object;

    if-ne p0, v1, :cond_26

    return-object v0

    :cond_26
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2e

    return-object p0

    :cond_2d
    :goto_2d
    return-object v0

    :catch_2e
    move-exception p0

    const-string v1, "WordQuery"

    const-string v2, "Error occur, e = "

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getWholePinyinStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_2e

    :cond_1f
    invoke-static {v1}, Lcom/android/common/sort/WordQuery;->search(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v5, v3, v4

    if-nez v5, :cond_29

    goto :goto_2b

    :cond_29
    aget-object v1, v3, v4

    :goto_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2e
    move v1, v2

    goto :goto_a

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isPolyphone(C)I
    .registers 1

    invoke-static {p0}, Lcom/android/common/sort/PolyphoneData;->isPolyphone(C)I

    move-result p0

    return p0
.end method

.method private static search(I[[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-gt v2, v0, :cond_21

    add-int v3, v2, v0

    shr-int/lit8 v3, v3, 0x1

    aget-object v4, p1, v3

    aget-object v5, v4, v1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne p0, v5, :cond_18

    return-object v4

    :cond_18
    if-ge p0, v5, :cond_1e

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_5

    :cond_1e
    add-int/lit8 v2, v3, 0x1

    goto :goto_5

    :cond_21
    sget-object p0, Lcom/android/common/sort/WordQuery;->NAN:[Ljava/lang/Object;

    return-object p0
.end method

.method private static search(Ljava/lang/String;)[Ljava/lang/Object;
    .registers 8

    invoke-static {p0}, Lcom/android/common/sort/WordQuery;->toUnicode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3007

    if-lt v0, v1, :cond_1d1

    const v1, 0xf979

    if-le v0, v1, :cond_f

    goto/16 :goto_1d1

    :cond_f
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    sget-object v3, Lcom/android/common/sort/WordQuery;->OBJECT_ARRAY:[[I

    array-length v4, v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v2, v4, :cond_26

    aget-object v3, v3, v2

    aget v4, v3, v1

    if-lt v0, v4, :cond_23

    aget v3, v3, v6

    if-gt v0, v3, :cond_23

    goto :goto_27

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    move v2, v5

    :goto_27
    packed-switch v2, :pswitch_data_1d4

    sget-object v0, Lcom/android/common/sort/WordQuery;->NAN:[Ljava/lang/Object;

    goto/16 :goto_1b6

    :pswitch_2e  #0x32
    sget-object v2, Lcom/android/common/sort/DictData$DictData50;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_36  #0x31
    sget-object v2, Lcom/android/common/sort/DictData$DictData49;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_3e  #0x30
    sget-object v2, Lcom/android/common/sort/DictData$DictData48;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_46  #0x2f
    sget-object v2, Lcom/android/common/sort/DictData$DictData47;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_4e  #0x2e
    sget-object v2, Lcom/android/common/sort/DictData$DictData46;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_56  #0x2d
    sget-object v2, Lcom/android/common/sort/DictData$DictData45;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_5e  #0x2c
    sget-object v2, Lcom/android/common/sort/DictData$DictData44;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_66  #0x2b
    sget-object v2, Lcom/android/common/sort/DictData$DictData43;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_6e  #0x2a
    sget-object v2, Lcom/android/common/sort/DictData$DictData42;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_76  #0x29
    sget-object v2, Lcom/android/common/sort/DictData$DictData41;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_7e  #0x28
    sget-object v2, Lcom/android/common/sort/DictData$DictData40;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_86  #0x27
    sget-object v2, Lcom/android/common/sort/DictData$DictData39;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_8e  #0x26
    sget-object v2, Lcom/android/common/sort/DictData$DictData38;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_96  #0x25
    sget-object v2, Lcom/android/common/sort/DictData$DictData37;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_9e  #0x24
    sget-object v2, Lcom/android/common/sort/DictData$DictData36;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_a6  #0x23
    sget-object v2, Lcom/android/common/sort/DictData$DictData35;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_ae  #0x22
    sget-object v2, Lcom/android/common/sort/DictData$DictData34;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_b6  #0x21
    sget-object v2, Lcom/android/common/sort/DictData$DictData33;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_be  #0x20
    sget-object v2, Lcom/android/common/sort/DictData$DictData32;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_c6  #0x1f
    sget-object v2, Lcom/android/common/sort/DictData$DictData31;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_ce  #0x1e
    sget-object v2, Lcom/android/common/sort/DictData$DictData30;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_d6  #0x1d
    sget-object v2, Lcom/android/common/sort/DictData$DictData29;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_de  #0x1c
    sget-object v2, Lcom/android/common/sort/DictData$DictData28;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_e6  #0x1b
    sget-object v2, Lcom/android/common/sort/DictData$DictData27;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_ee  #0x1a
    sget-object v2, Lcom/android/common/sort/DictData$DictData26;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_f6  #0x19
    sget-object v2, Lcom/android/common/sort/DictData$DictData25;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_fe  #0x18
    sget-object v2, Lcom/android/common/sort/DictData$DictData24;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_106  #0x17
    sget-object v2, Lcom/android/common/sort/DictData$DictData23;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_10e  #0x16
    sget-object v2, Lcom/android/common/sort/DictData$DictData22;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_116  #0x15
    sget-object v2, Lcom/android/common/sort/DictData$DictData21;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_11e  #0x14
    sget-object v2, Lcom/android/common/sort/DictData$DictData20;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_126  #0x13
    sget-object v2, Lcom/android/common/sort/DictData$DictData19;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_12e  #0x12
    sget-object v2, Lcom/android/common/sort/DictData$DictData18;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_136  #0x11
    sget-object v2, Lcom/android/common/sort/DictData$DictData17;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_13e  #0x10
    sget-object v2, Lcom/android/common/sort/DictData$DictData16;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_146  #0xf
    sget-object v2, Lcom/android/common/sort/DictData$DictData15;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1b6

    :pswitch_14e  #0xe
    sget-object v2, Lcom/android/common/sort/DictData$DictData14;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_155  #0xd
    sget-object v2, Lcom/android/common/sort/DictData$DictData13;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_15c  #0xc
    sget-object v2, Lcom/android/common/sort/DictData$DictData12;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_163  #0xb
    sget-object v2, Lcom/android/common/sort/DictData$DictData11;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_16a  #0xa
    sget-object v2, Lcom/android/common/sort/DictData$DictData10;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_171  #0x9
    sget-object v2, Lcom/android/common/sort/DictData$DictData9;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_178  #0x8
    sget-object v2, Lcom/android/common/sort/DictData$DictData8;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_17f  #0x7
    sget-object v2, Lcom/android/common/sort/DictData$DictData7;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_186  #0x6
    sget-object v2, Lcom/android/common/sort/DictData$DictData6;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_18d  #0x5
    sget-object v2, Lcom/android/common/sort/DictData$DictData5;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_194  #0x4
    sget-object v2, Lcom/android/common/sort/DictData$DictData4;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_19b  #0x3
    sget-object v2, Lcom/android/common/sort/DictData$DictData3;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_1a2  #0x2
    sget-object v2, Lcom/android/common/sort/DictData$DictData2;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_1a9  #0x1
    sget-object v2, Lcom/android/common/sort/DictData$DictData1;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b6

    :pswitch_1b0  #0x0
    sget-object v2, Lcom/android/common/sort/DictData$DictData0;->sData:[[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/common/sort/WordQuery;->search(I[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :goto_1b6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/android/common/sort/WordQuery;->isPolyphone(C)I

    move-result p0

    if-eq p0, v5, :cond_1d0

    invoke-static {p0}, Lcom/android/common/sort/WordQuery;->getPolyPinyinsByIndex(I)[Ljava/lang/String;

    move-result-object p0

    aget-object v2, v0, v6

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1d0

    if-eqz p0, :cond_1d0

    aget-object p0, p0, v1

    aput-object p0, v0, v6

    :cond_1d0
    return-object v0

    :cond_1d1
    :goto_1d1
    sget-object p0, Lcom/android/common/sort/WordQuery;->NAN:[Ljava/lang/Object;

    return-object p0

    :pswitch_data_1d4
    .packed-switch 0x0
        :pswitch_1b0  #00000000
        :pswitch_1a9  #00000001
        :pswitch_1a2  #00000002
        :pswitch_19b  #00000003
        :pswitch_194  #00000004
        :pswitch_18d  #00000005
        :pswitch_186  #00000006
        :pswitch_17f  #00000007
        :pswitch_178  #00000008
        :pswitch_171  #00000009
        :pswitch_16a  #0000000a
        :pswitch_163  #0000000b
        :pswitch_15c  #0000000c
        :pswitch_155  #0000000d
        :pswitch_14e  #0000000e
        :pswitch_146  #0000000f
        :pswitch_13e  #00000010
        :pswitch_136  #00000011
        :pswitch_12e  #00000012
        :pswitch_126  #00000013
        :pswitch_11e  #00000014
        :pswitch_116  #00000015
        :pswitch_10e  #00000016
        :pswitch_106  #00000017
        :pswitch_fe  #00000018
        :pswitch_f6  #00000019
        :pswitch_ee  #0000001a
        :pswitch_e6  #0000001b
        :pswitch_de  #0000001c
        :pswitch_d6  #0000001d
        :pswitch_ce  #0000001e
        :pswitch_c6  #0000001f
        :pswitch_be  #00000020
        :pswitch_b6  #00000021
        :pswitch_ae  #00000022
        :pswitch_a6  #00000023
        :pswitch_9e  #00000024
        :pswitch_96  #00000025
        :pswitch_8e  #00000026
        :pswitch_86  #00000027
        :pswitch_7e  #00000028
        :pswitch_76  #00000029
        :pswitch_6e  #0000002a
        :pswitch_66  #0000002b
        :pswitch_5e  #0000002c
        :pswitch_56  #0000002d
        :pswitch_4e  #0000002e
        :pswitch_46  #0000002f
        :pswitch_3e  #00000030
        :pswitch_36  #00000031
        :pswitch_2e  #00000032
    .end packed-switch
.end method

.method private static toUnicode(Ljava/lang/String;)I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method
