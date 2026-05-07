.class public Lcom/android/common/sort/ComplexSortUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CHINESE_CHARACTER_END:I = 0x9fa5

.field private static final CHINESE_CHARACTER_START:I = 0x4e00

.field private static final LOCALE_ARABIC:Ljava/util/Locale;

.field private static final LOCALE_GREEK:Ljava/util/Locale;

.field private static final LOCALE_HEBREW:Ljava/util/Locale;

.field private static final LOCALE_SERBIAN:Ljava/util/Locale;

.field private static final LOCALE_THAI:Ljava/util/Locale;

.field private static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final SPECIAL_CHARACTERS_HEX:Ljava/lang/String; = "202b"

.field public static final TAG:Ljava/lang/String; = "ComplexSortUtils"

.field private static sCurrentLocales:Lcom/android/common/sort/LocaleSet;

.field private static sLocales:Lcom/android/common/sort/LocaleSet;

.field private static sSingleton:Lcom/android/common/sort/ComplexSortUtils;


# instance fields
.field private final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mNumberBucketIndex:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_GREEK:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_THAI:Ljava/util/Locale;

    return-void
.end method

.method private constructor <init>(Lcom/android/common/sort/LocaleSet;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object p1

    sput-object p1, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    goto :goto_2a

    :cond_c
    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur_PK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance p1, Ljava/util/Locale;

    const-string v0, "ar_EG"

    invoke-direct {p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/common/sort/LocaleSet;

    invoke-direct {v0, p1}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    goto :goto_2a

    :cond_28
    sput-object p1, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    :goto_2a
    sget-object p1, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->getSecondaryLocale()Ljava/util/Locale;

    move-result-object p1

    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4c

    new-array v3, v2, [Ljava/util/Locale;

    aput-object p1, v3, v1

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    :cond_4c
    new-array p1, v2, [Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v3, p1, v1

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_THAI:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_GREEK:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    new-array v0, v2, [Ljava/util/Locale;

    sget-object v3, Lcom/android/common/sort/ComplexSortUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/sort/ComplexSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result p1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/common/sort/ComplexSortUtils;
    .registers 3

    const-class v0, Lcom/android/common/sort/ComplexSortUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ur_PK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    new-instance v1, Ljava/util/Locale;

    const-string v2, "ar_EG"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/common/sort/LocaleSet;

    invoke-direct {v2, v1}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    sput-object v2, Lcom/android/common/sort/ComplexSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    :cond_22
    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object v1

    sput-object v1, Lcom/android/common/sort/ComplexSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sSingleton:Lcom/android/common/sort/ComplexSortUtils;

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/sort/ComplexSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v2}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    :cond_3e
    new-instance v1, Lcom/android/common/sort/ComplexSortUtils;

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/sort/ComplexSortUtils;-><init>(Lcom/android/common/sort/LocaleSet;)V

    sput-object v1, Lcom/android/common/sort/ComplexSortUtils;->sSingleton:Lcom/android/common/sort/ComplexSortUtils;

    :cond_49
    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sSingleton:Lcom/android/common/sort/ComplexSortUtils;
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4d

    monitor-exit v0

    return-object v1

    :catchall_4d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isChinese(C)Z
    .registers 2

    const/16 p0, 0x4e00

    if-lt p1, p0, :cond_b

    const p0, 0x9fa5

    if-gt p1, p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static isLetter(C)Z
    .registers 2

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private isLocale(Lcom/android/common/sort/LocaleSet;)Z
    .registers 2

    sget-object p0, Lcom/android/common/sort/ComplexSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized setLocale(Ljava/util/Locale;)V
    .registers 3

    const-class v0, Lcom/android/common/sort/ComplexSortUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/android/common/sort/LocaleSet;

    invoke-direct {v1, p0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    invoke-static {v1}, Lcom/android/common/sort/ComplexSortUtils;->setLocales(Lcom/android/common/sort/LocaleSet;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized setLocales(Lcom/android/common/sort/LocaleSet;)V
    .registers 3

    const-class v0, Lcom/android/common/sort/ComplexSortUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/sort/ComplexSortUtils;->sSingleton:Lcom/android/common/sort/ComplexSortUtils;

    if-eqz v1, :cond_d

    invoke-direct {v1, p0}, Lcom/android/common/sort/ComplexSortUtils;->isLocale(Lcom/android/common/sort/LocaleSet;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_d
    new-instance v1, Lcom/android/common/sort/ComplexSortUtils;

    invoke-direct {v1, p0}, Lcom/android/common/sort/ComplexSortUtils;-><init>(Lcom/android/common/sort/LocaleSet;)V

    sput-object v1, Lcom/android/common/sort/ComplexSortUtils;->sSingleton:Lcom/android/common/sort/ComplexSortUtils;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBucketIndex(Ljava/lang/String;)I
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {p1}, Lcom/android/common/sort/ZhuyinUtils;->getZhuyinFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_27
    move v1, v2

    :goto_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_52

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/common/sort/ComplexSortUtils;->isChinese(C)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-static {v3}, Lcom/android/common/sort/ZhuyinUtils;->getFirstSpell(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_40
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "202b"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_52
    :goto_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v2

    :goto_5b
    const/4 v4, 0x1

    if-ge v3, v1, :cond_90

    invoke-static {v0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(I)Z

    move-result v6

    if-nez v6, :cond_8e

    const/16 v6, 0x23

    if-ne v5, v6, :cond_6d

    goto :goto_8e

    :cond_6d
    invoke-static {v5}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v6

    if-nez v6, :cond_88

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_88

    const/16 v6, 0x28

    if-eq v5, v6, :cond_88

    const/16 v6, 0x29

    if-eq v5, v6, :cond_88

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_88

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_88

    goto :goto_90

    :cond_88
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_5b

    :cond_8e
    :goto_8e
    move v1, v4

    goto :goto_91

    :cond_90
    :goto_90
    move v1, v2

    :goto_91
    if-eqz v1, :cond_96

    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_96
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-boolean v3, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v3, :cond_a7

    invoke-static {v1}, Lcom/android/common/sort/ComplexSortUtils;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_a7

    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_a7
    iget-object v1, p0, Lcom/android/common/sort/ComplexSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v1, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/common/sort/ComplexSortUtils;->isChinese(C)Z

    move-result p1

    if-eqz p1, :cond_c4

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p1, :cond_c4

    invoke-virtual {p0}, Lcom/android/common/sort/ComplexSortUtils;->isLocaleZhOrEn()Z

    move-result p1

    if-nez p1, :cond_c4

    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_c4
    if-gez v0, :cond_c8

    const/4 p0, -0x1

    return p0

    :cond_c8
    if-nez v0, :cond_cd

    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_cd
    iget p0, p0, Lcom/android/common/sort/ComplexSortUtils;->mNumberBucketIndex:I

    if-lt v0, p0, :cond_d2

    add-int/2addr v0, v4

    :cond_d2
    return v0
.end method

.method public isLocaleEn()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLocaleZhOrEn()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    :goto_1d
    return p0
.end method
