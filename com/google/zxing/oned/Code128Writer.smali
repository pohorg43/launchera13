.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source ""


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = 'ñ'

.field private static final ESCAPE_FNC_2:C = 'ò'

.field private static final ESCAPE_FNC_3:C = 'ó'

.field private static final ESCAPE_FNC_4:C = 'ô'


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .registers 7

    add-int/2addr p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_5
    const/4 v1, 0x0

    if-ge p1, p2, :cond_20

    if-ge p1, v0, :cond_20

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_16

    const/16 v3, 0x39

    if-le v2, v3, :cond_1d

    :cond_16
    const/16 v3, 0xf1

    if-eq v2, v3, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_20
    if-gt p2, v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_9

    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can only encode CODE_128, but got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Ljava/lang/String;)[Z
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_dc

    const/16 v1, 0x50

    if-gt p0, v1, :cond_dc

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    const/16 v3, 0x20

    if-ge v2, p0, :cond_38

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_1b

    const/16 v3, 0x7e

    if-le v4, v3, :cond_35

    :cond_1b
    packed-switch v4, :pswitch_data_e8

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad character in input: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :pswitch_35  #0xf1, 0xf2, 0xf3, 0xf4
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    move v3, v1

    move v4, v3

    move v5, v4

    :cond_41
    :goto_41
    if-ge v3, p0, :cond_98

    const/16 v7, 0x63

    if-ne v5, v7, :cond_49

    const/4 v8, 0x2

    goto :goto_4a

    :cond_49
    const/4 v8, 0x4

    :goto_4a
    invoke-static {p1, v3, v8}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v8

    const/16 v9, 0x64

    if-eqz v8, :cond_53

    goto :goto_54

    :cond_53
    move v7, v9

    :goto_54
    if-ne v7, v5, :cond_7d

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_f4

    if-ne v5, v9, :cond_6f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v9, v7, -0x20

    goto :goto_7b

    :pswitch_66  #0xf3
    const/16 v9, 0x60

    goto :goto_7b

    :pswitch_69  #0xf2
    const/16 v9, 0x61

    goto :goto_7b

    :pswitch_6c  #0xf1
    const/16 v9, 0x66

    goto :goto_7b

    :cond_6f
    add-int/lit8 v7, v3, 0x2

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v3, 0x1

    :goto_7b
    :pswitch_7b  #0xf4
    add-int/2addr v3, v0

    goto :goto_8a

    :cond_7d
    if-nez v5, :cond_88

    if-ne v7, v9, :cond_84

    const/16 v5, 0x68

    goto :goto_86

    :cond_84
    const/16 v5, 0x69

    :goto_86
    move v9, v5

    goto :goto_89

    :cond_88
    move v9, v7

    :goto_89
    move v5, v7

    :goto_8a
    sget-object v7, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v7, v7, v9

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v9, v6

    add-int/2addr v4, v9

    if-eqz v3, :cond_41

    add-int/lit8 v6, v6, 0x1

    goto :goto_41

    :cond_98
    rem-int/lit8 v4, v4, 0x67

    sget-object p0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object p1, p0, v4

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x6a

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move p1, v1

    :cond_ad
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    array-length v4, v3

    move v5, v1

    :goto_bb
    if-ge v5, v4, :cond_ad

    aget v6, v3, v5

    add-int/2addr p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    :cond_c3
    new-array p0, p1, [Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_db

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {p0, v1, v2, v0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_c9

    :cond_db
    return-object p0

    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v0, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_e8
    .packed-switch 0xf1
        :pswitch_35  #000000f1
        :pswitch_35  #000000f2
        :pswitch_35  #000000f3
        :pswitch_35  #000000f4
    .end packed-switch

    :pswitch_data_f4
    .packed-switch 0xf1
        :pswitch_6c  #000000f1
        :pswitch_69  #000000f2
        :pswitch_66  #000000f3
        :pswitch_7b  #000000f4
    .end packed-switch
.end method
