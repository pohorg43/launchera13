.class public Lcom/coui/appcompat/lunarutil/COUILunarUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[J

.field public static c:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    const-string/jumbo v0, "一"

    const-string/jumbo v1, "二"

    const-string/jumbo v2, "三"

    const-string/jumbo v3, "四"

    const-string/jumbo v4, "五"

    const-string/jumbo v5, "六"

    const-string/jumbo v6, "七"

    const-string/jumbo v7, "八"

    const-string/jumbo v8, "九"

    const-string/jumbo v9, "十"

    const-string/jumbo v10, "十一"

    const-string/jumbo v11, "十二"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a:[Ljava/lang/String;

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy年MM月dd日"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c:Ljava/text/SimpleDateFormat;

    return-void

    :array_3e
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x16a95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)[I
    .registers 15

    const-string v0, "COUILunar"

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_116

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p0, v4, :cond_22

    aput p0, v1, v5

    sub-int/2addr p1, v6

    rem-int/lit8 p0, p1, 0xc

    add-int/2addr p0, v6

    aput p0, v1, v6

    aput p2, v1, v3

    div-int/lit8 p1, p1, 0xc

    if-gtz p1, :cond_1f

    move v5, v6

    :cond_1f
    aput v5, v1, v2

    return-object v1

    :cond_22
    const/4 v7, 0x0

    :try_start_23
    sget-object v8, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c:Ljava/text/SimpleDateFormat;

    const-string v9, "1900年1月31日"

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8
    :try_end_2b
    .catch Ljava/text/ParseException; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_36

    :catch_2c
    move-exception v8

    const-string v9, "calculateLunarByGregorian(),parse baseDate error."

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    move-object v8, v7

    :goto_36
    if-nez v8, :cond_3e

    const-string p0, "baseDate is null,return lunar date:2000.1.1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "年"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "月"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "日"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_62
    sget-object p1, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->c:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7
    :try_end_68
    .catch Ljava/text/ParseException; {:try_start_62 .. :try_end_68} :catch_69

    goto :goto_72

    :catch_69
    move-exception p0

    const-string p1, "calculateLunarByGregorian(),parse currentDate error."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_72
    if-nez v7, :cond_7a

    const-string p0, "currentDate is null,return lunar date:2000.1.1"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7a
    const p0, 0x4ca4cb80  # 8.64E7f

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr p1, v7

    long-to-float p1, p1

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 p1, 0x2710

    const/16 p2, 0x76c

    move v0, v5

    :goto_91
    if-ge p2, p1, :cond_c4

    if-lez p0, :cond_c4

    if-ne p2, v4, :cond_99

    move v0, v5

    goto :goto_c0

    :cond_99
    const/16 v0, 0x15c

    const v7, 0x8000

    :goto_9e
    const/16 v8, 0x8

    if-le v7, v8, :cond_ba

    add-int/lit16 v8, p2, -0x76c

    if-ltz v8, :cond_b7

    sget-object v9, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    array-length v10, v9

    if-ge v8, v10, :cond_b7

    aget-wide v8, v9, v8

    int-to-long v10, v7

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b7

    add-int/lit8 v0, v0, 0x1

    :cond_b7
    shr-int/lit8 v7, v7, 0x1

    goto :goto_9e

    :cond_ba
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result v7

    add-int/2addr v7, v0

    move v0, v7

    :goto_c0
    sub-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_91

    :cond_c4
    if-gez p0, :cond_c9

    add-int/2addr p0, v0

    add-int/lit8 p2, p2, -0x1

    :cond_c9
    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result p1

    move v4, v5

    move v7, v4

    move v0, v6

    :goto_d0
    const/16 v8, 0xd

    if-ge v0, v8, :cond_f6

    if-lez p0, :cond_f6

    if-lez p1, :cond_e7

    add-int/lit8 v7, p1, 0x1

    if-ne v0, v7, :cond_e7

    if-nez v4, :cond_e7

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result v4

    move v7, v4

    move v4, v6

    goto :goto_eb

    :cond_e7
    invoke-static {p2, v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result v7

    :goto_eb
    sub-int/2addr p0, v7

    if-eqz v4, :cond_f3

    add-int/lit8 v8, p1, 0x1

    if-ne v0, v8, :cond_f3

    move v4, v5

    :cond_f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    :cond_f6
    if-nez p0, :cond_104

    if-lez p1, :cond_104

    add-int/2addr p1, v6

    if-ne v0, p1, :cond_104

    if-eqz v4, :cond_101

    move v4, v5

    goto :goto_104

    :cond_101
    add-int/lit8 v0, v0, -0x1

    move v4, v6

    :cond_104
    :goto_104
    if-gez p0, :cond_109

    add-int/2addr p0, v7

    add-int/lit8 v0, v0, -0x1

    :cond_109
    add-int/2addr p0, v6

    aput p2, v1, v5

    aput v0, v1, v6

    aput p0, v1, v3

    xor-int/lit8 p0, v4, 0x1

    aput p0, v1, v2

    return-object v1

    nop

    :array_116
    .array-data 4
        0x7d0
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public static b(I)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "初"

    const-string/jumbo v1, "十"

    const-string/jumbo v2, "廿"

    const-string/jumbo v3, "卅"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    rem-int/lit8 v1, p0, 0xa

    if-nez v1, :cond_17

    const/16 v1, 0x9

    goto :goto_19

    :cond_17
    add-int/lit8 v1, v1, -0x1

    :goto_19
    const/16 v2, 0x1e

    if-le p0, v2, :cond_20

    const-string p0, ""

    return-object p0

    :cond_20
    const/16 v3, 0xa

    if-ne p0, v3, :cond_28

    const-string/jumbo p0, "初十"

    return-object p0

    :cond_28
    const/16 v4, 0x14

    if-ne p0, v4, :cond_30

    const-string/jumbo p0, "二十"

    return-object p0

    :cond_30
    if-ne p0, v2, :cond_36

    const-string/jumbo p0, "三十"

    return-object p0

    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/2addr p0, v3

    aget-object p0, v0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->a:[Ljava/lang/String;

    aget-object p0, p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(IIIZ)I
    .registers 4

    if-nez p3, :cond_7

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p0

    goto :goto_b

    :cond_7
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result p0

    :goto_b
    if-le p2, p0, :cond_e

    return p0

    :cond_e
    return p2
.end method

.method public static d(II)I
    .registers 5

    const/16 v0, 0x1e

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_1d

    const/16 v1, 0x76c

    if-lt p0, v1, :cond_1d

    sget-object v2, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    sub-int/2addr p0, v1

    aget-wide v1, v2, p0

    const/high16 p0, 0x10000

    shr-int/2addr p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v1

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_1d

    const/16 p0, 0x1d

    return p0

    :cond_1d
    return v0
.end method

.method public static e(I)I
    .registers 5

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    add-int/lit16 p0, p0, -0x76c

    aget-wide v0, v0, p0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_19

    const/16 p0, 0x1e

    return p0

    :cond_19
    const/16 p0, 0x1d

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static f(I)I
    .registers 5

    const/16 v0, 0x76c

    if-lt p0, v0, :cond_13

    const/16 v1, 0x834

    if-le p0, v1, :cond_9

    goto :goto_13

    :cond_9
    sget-object v1, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    sub-int/2addr p0, v0

    aget-wide v0, v1, p0

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_13
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get leapMonth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "is out of range.return 0."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "COUILunar"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static g(IIIZ)Ljava/util/Date;
    .registers 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x76c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p0, v0, :cond_23

    const/16 v3, 0x801

    if-le p0, v3, :cond_b

    goto :goto_23

    :cond_b
    if-lt p1, v2, :cond_23

    const/16 v3, 0xc

    if-le p1, v3, :cond_12

    goto :goto_23

    :cond_12
    if-lt p2, v2, :cond_23

    const/16 v3, 0x1e

    if-le p2, v3, :cond_19

    goto :goto_23

    :cond_19
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result v3

    if-eqz p3, :cond_21

    if-ne p1, v3, :cond_23

    :cond_21
    move v3, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v3, v1

    :goto_24
    const/4 v4, 0x0

    if-nez v3, :cond_28

    return-object v4

    :cond_28
    :goto_28
    if-ge v0, p0, :cond_53

    const/16 v3, 0x15c

    const v5, 0x8000

    :goto_2f
    const/16 v6, 0x8

    if-lt v5, v6, :cond_4a

    sget-object v6, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->b:[J

    add-int/lit16 v7, v0, -0x76c

    aget-wide v6, v6, v7

    const-wide/32 v8, 0xfff0

    and-long/2addr v6, v8

    int-to-long v8, v5

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_47

    add-int/lit8 v3, v3, 0x1

    :cond_47
    shr-int/lit8 v5, v5, 0x1

    goto :goto_2f

    :cond_4a
    invoke-static {v0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_53
    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->f(I)I

    move-result v0

    if-eqz p3, :cond_5c

    if-eq v0, p1, :cond_5c

    return-object v4

    :cond_5c
    if-eqz v0, :cond_8e

    if-lt p1, v0, :cond_8e

    if-ne p1, v0, :cond_65

    if-nez p3, :cond_65

    goto :goto_8e

    :cond_65
    :goto_65
    if-ge v2, p1, :cond_6f

    invoke-static {p0, v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p3

    add-int/2addr v1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_6f
    if-le p1, v0, :cond_7f

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p0

    if-le p2, p0, :cond_7d

    return-object v4

    :cond_7d
    add-int/2addr p3, p2

    goto :goto_a1

    :cond_7f
    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p0}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->e(I)I

    move-result p0

    if-le p2, p0, :cond_8b

    return-object v4

    :cond_8b
    add-int p3, p1, p2

    goto :goto_a1

    :cond_8e
    :goto_8e
    if-ge v2, p1, :cond_98

    invoke-static {p0, v2}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p3

    add-int/2addr v1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_98
    invoke-static {p0, p1}, Lcom/coui/appcompat/lunarutil/COUILunarUtil;->d(II)I

    move-result p0

    if-le p2, p0, :cond_9f

    return-object v4

    :cond_9f
    add-int p3, v1, p2

    :goto_a1
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo p1, "yyyyMMdd"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_a9
    const-string p1, "19000130"

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_af
    .catch Ljava/text/ParseException; {:try_start_a9 .. :try_end_af} :catch_bf

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0

    :catch_bf
    move-exception p0

    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    return-object v4
.end method
