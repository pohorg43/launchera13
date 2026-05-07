.class public Lcom/oplus/lunarlib/LunarHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DIZHI:[Ljava/lang/String;

.field private static final LEAP_NAME:Ljava/lang/String; = "闰"

.field private static final LUNAR_DAYS:[Ljava/lang/String;

.field private static final LUNAR_MONTHS:[Ljava/lang/String;

.field private static final SHENGXIAO:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "lunarlib.LunarHelper"

.field private static final TIANGAN:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 31

    const-string v0, "oplusos_lunar"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v1, "甲"

    const-string v2, "乙"

    const-string v3, "丙"

    const-string v4, "丁"

    const-string v5, "戊"

    const-string v6, "己"

    const-string v7, "庚"

    const-string v8, "辛"

    const-string v9, "壬"

    const-string v10, "癸"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/lunarlib/LunarHelper;->TIANGAN:[Ljava/lang/String;

    const-string v1, "子"

    const-string v2, "丑"

    const-string v3, "寅"

    const-string v4, "卯"

    const-string v5, "辰"

    const-string v6, "巳"

    const-string v7, "午"

    const-string v8, "未"

    const-string v9, "申"

    const-string v10, "酉"

    const-string v11, "戌"

    const-string v12, "亥"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/lunarlib/LunarHelper;->DIZHI:[Ljava/lang/String;

    const-string v1, "鼠"

    const-string v2, "牛"

    const-string v3, "虎"

    const-string v4, "兔"

    const-string v5, "龙"

    const-string v6, "蛇"

    const-string v7, "马"

    const-string v8, "羊"

    const-string v9, "猴"

    const-string v10, "鸡"

    const-string v11, "狗"

    const-string v12, "猪"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/lunarlib/LunarHelper;->SHENGXIAO:[Ljava/lang/String;

    const-string v1, "正月"

    const-string v2, "二月"

    const-string v3, "三月"

    const-string v4, "四月"

    const-string v5, "五月"

    const-string v6, "六月"

    const-string v7, "七月"

    const-string v8, "八月"

    const-string v9, "九月"

    const-string v10, "十月"

    const-string v11, "冬月"

    const-string v12, "腊月"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/lunarlib/LunarHelper;->LUNAR_MONTHS:[Ljava/lang/String;

    const-string v1, "初一"

    const-string v2, "初二"

    const-string v3, "初三"

    const-string v4, "初四"

    const-string v5, "初五"

    const-string v6, "初六"

    const-string v7, "初七"

    const-string v8, "初八"

    const-string v9, "初九"

    const-string v10, "初十"

    const-string v11, "十一"

    const-string v12, "十二"

    const-string v13, "十三"

    const-string v14, "十四"

    const-string v15, "十五"

    const-string v16, "十六"

    const-string v17, "十七"

    const-string v18, "十八"

    const-string v19, "十九"

    const-string v20, "二十"

    const-string v21, "廿一"

    const-string v22, "廿二"

    const-string v23, "廿三"

    const-string v24, "廿四"

    const-string v25, "廿五"

    const-string v26, "廿六"

    const-string v27, "廿七"

    const-string v28, "廿八"

    const-string v29, "廿九"

    const-string v30, "三十"

    filled-new-array/range {v1 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/lunarlib/LunarHelper;->LUNAR_DAYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustLunarMonth(II)I
    .registers 3

    if-lez p1, :cond_11

    const/16 v0, 0xd

    if-ge p1, v0, :cond_11

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p0, :cond_d

    add-int/lit8 p0, p1, 0xc

    goto :goto_11

    :cond_d
    if-le p0, v0, :cond_11

    add-int/lit8 p0, p0, -0x1

    :cond_11
    :goto_11
    return p0
.end method

.method public static chineseDateToSunDate(III)[I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/lunarlib/LunarHelper;->nativeChineseDateToSunDate(III)[I

    move-result-object p0

    return-object p0
.end method

.method public static convertLunarToSolar(IIIZ)[I
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [I

    :try_start_3
    invoke-static {p0}, Lcom/oplus/lunarlib/LunarHelper;->getChLeapMonth(I)I

    move-result v1

    invoke-static {p1, v1, p3}, Lcom/oplus/lunarlib/LunarHelper;->reverseAdjustLunarMonth(IIZ)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/oplus/lunarlib/LunarHelper;->chineseDateToSunDate(III)[I

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_1c

    :catch_10
    move-exception p0

    const-string p1, "convertLunarToSolar failed. error = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "lunarlib.LunarHelper"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1c
    return-object v0
.end method

.method public static convertSolarToLunar([IIII)Z
    .registers 7

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    :try_start_4
    invoke-static {p1, p2, p3}, Lcom/oplus/lunarlib/LunarHelper;->sunDateToChineseDate(III)[I

    move-result-object v1

    aget p1, v1, v2

    invoke-static {p1}, Lcom/oplus/lunarlib/LunarHelper;->getChLeapMonth(I)I

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_1c

    :catch_f
    move-exception p1

    const-string p2, "convertSolarToLunar failed. error = "

    invoke-static {p2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "lunarlib.LunarHelper"

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move p1, v2

    :goto_1c
    const/4 p2, 0x1

    aget p3, v1, p2

    invoke-static {p3, p1}, Lcom/oplus/lunarlib/LunarHelper;->adjustLunarMonth(II)I

    move-result p1

    aput p1, v1, p2

    aget p1, v1, p2

    const/16 p3, 0xc

    if-le p1, p3, :cond_32

    aget p1, v1, p2

    sub-int/2addr p1, p3

    aput p1, v1, p2

    move p1, p2

    goto :goto_33

    :cond_32
    move p1, v2

    :goto_33
    if-eqz p0, :cond_45

    array-length p3, p0

    if-lt p3, v0, :cond_45

    aget p3, v1, v2

    aput p3, p0, v2

    aget p3, v1, p2

    aput p3, p0, p2

    const/4 p2, 0x2

    aget p3, v1, p2

    aput p3, p0, p2

    :cond_45
    return p1
.end method

.method public static getChLeapMonth(I)I
    .registers 1

    invoke-static {p0}, Lcom/oplus/lunarlib/LunarHelper;->nativeGetChineseLeapMonth(I)I

    move-result p0

    return p0
.end method

.method public static getChMonthDays(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/lunarlib/LunarHelper;->nativeGetChineseMonthDays(II)I

    move-result p0

    return p0
.end method

.method public static getLunarDayString(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/oplus/lunarlib/LunarHelper;->LUNAR_DAYS:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getLunarMonthString(IZ)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "闰"

    goto :goto_c

    :cond_a
    const-string p1, ""

    :goto_c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/oplus/lunarlib/LunarHelper;->LUNAR_MONTHS:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x1

    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShengxiao(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/oplus/lunarlib/LunarHelper;->SHENGXIAO:[Ljava/lang/String;

    add-int/lit8 p0, p0, -0x4

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getSolarMonthDays(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/lunarlib/LunarHelper;->nativeGetSunMonthDays(II)I

    move-result p0

    return p0
.end method

.method public static getTianGanDiZhi(I)Ljava/lang/String;
    .registers 4

    add-int/lit16 p0, p0, -0x76c

    add-int/lit8 p0, p0, 0x24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/lunarlib/LunarHelper;->TIANGAN:[Ljava/lang/String;

    rem-int/lit8 v2, p0, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/lunarlib/LunarHelper;->DIZHI:[Ljava/lang/String;

    rem-int/lit8 p0, p0, 0xc

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeChineseDateToSunDate(III)[I
.end method

.method private static native nativeGetChineseLeapMonth(I)I
.end method

.method private static native nativeGetChineseMonthDays(II)I
.end method

.method private static native nativeGetSunMonthDays(II)I
.end method

.method private static native nativeSunDateToChineseDate(III)[I
.end method

.method private static reverseAdjustLunarMonth(IIZ)I
    .registers 3

    if-lez p1, :cond_a

    if-gt p0, p1, :cond_8

    if-ne p0, p1, :cond_a

    if-eqz p2, :cond_a

    :cond_8
    add-int/lit8 p0, p0, 0x1

    :cond_a
    return p0
.end method

.method public static sunDateToChineseDate(III)[I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/lunarlib/LunarHelper;->nativeSunDateToChineseDate(III)[I

    move-result-object p0

    return-object p0
.end method
