.class public Lcom/android/common/sort/ContactSortUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z

.field public static final LOCALE_ARABIC:Ljava/util/Locale;

.field public static final LOCALE_GREEK:Ljava/util/Locale;

.field public static final LOCALE_HEBREW:Ljava/util/Locale;

.field public static final LOCALE_SERBIAN:Ljava/util/Locale;

.field public static final LOCALE_THAI:Ljava/util/Locale;

.field public static final LOCALE_UKRAINIAN:Ljava/util/Locale;

.field private static final NUMBER_STRING:Ljava/lang/String; = "#"

.field public static final TAG:Ljava/lang/String; = "ContactSortUtils"

.field private static sCurrentLocales:Lcom/android/common/sort/LocaleSet;

.field private static sLocales:Lcom/android/common/sort/LocaleSet;

.field private static sSingleton:Lcom/android/common/sort/ContactSortUtils;


# instance fields
.field private final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mExtenedBuckets:[C

.field private final mNeedPinyin:Z

.field private final mNeedZhuyin:Z

.field private final mNumberBucketIndex:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/sort/ContactSortUtils;->DEBUG:Z

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "el"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_GREEK:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string v1, "he"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "sr"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "uk"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "th"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/sort/ContactSortUtils;->LOCALE_THAI:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/android/common/sort/LocaleSet;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object p1

    sput-object p1, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    goto :goto_2a

    :cond_c
    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ur_PK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/util/Locale;

    const-string v1, "ar_EG"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/common/sort/LocaleSet;

    invoke-direct {v1, v0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    sput-object v1, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    goto :goto_2a

    :cond_28
    sput-object p1, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    :goto_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/sort/ContactSortUtils;->mNeedZhuyin:Z

    invoke-static {}, Lcom/android/common/sort/ZhuyinUtils;->needPinyinFun()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/common/sort/ContactSortUtils;->mNeedPinyin:Z

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->getSecondaryLocale()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v3

    sget-boolean v4, Lcom/android/common/sort/ContactSortUtils;->DEBUG:Z

    const-string v5, "ContactSortUtils"

    if-eqz v4, :cond_69

    const-string/jumbo v6, "the locales.getPrimaryLocale() is "

    invoke-static {v6}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const/4 p1, 0x1

    if-eqz v2, :cond_73

    new-array v6, p1, [Ljava/util/Locale;

    aput-object v2, v6, v0

    invoke-virtual {v3, v6}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    :cond_73
    new-array v2, p1, [Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v6, v2, v0

    invoke-virtual {v3, v2}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_THAI:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_ARABIC:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_HEBREW:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_GREEK:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_UKRAINIAN:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v2

    new-array v3, p1, [Ljava/util/Locale;

    sget-object v6, Lcom/android/common/sort/ContactSortUtils;->LOCALE_SERBIAN:Ljava/util/Locale;

    aput-object v6, v3, v0

    invoke-virtual {v2, v3}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    array-length v1, v1

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndexBucketCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    if-eqz v4, :cond_106

    const-string p1, "AddressBook Labels ["

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v0}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/sort/ContactSortUtils;->getLabels()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_106
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/common/sort/ContactSortUtils;
    .registers 4

    const-class v0, Lcom/android/common/sort/ContactSortUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/sort/ContactSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

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

    sput-object v2, Lcom/android/common/sort/ContactSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    :cond_22
    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object v1

    sput-object v1, Lcom/android/common/sort/ContactSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    sget-boolean v2, Lcom/android/common/sort/ContactSortUtils;->DEBUG:Z

    if-eqz v2, :cond_5c

    sget-object v2, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    if-eqz v2, :cond_5c

    if-eqz v1, :cond_5c

    const-string v1, "ContactSortUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInstance,the mLocals is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v3}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", the mCuurentLocales is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/common/sort/ContactSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v3}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    sget-object v1, Lcom/android/common/sort/ContactSortUtils;->sSingleton:Lcom/android/common/sort/ContactSortUtils;

    if-eqz v1, :cond_74

    sget-object v1, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    if-eqz v1, :cond_7f

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/sort/ContactSortUtils;->sCurrentLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {v2}, Lcom/android/common/sort/LocaleSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    :cond_74
    new-instance v1, Lcom/android/common/sort/ContactSortUtils;

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/common/sort/ContactSortUtils;-><init>(Lcom/android/common/sort/LocaleSet;)V

    sput-object v1, Lcom/android/common/sort/ContactSortUtils;->sSingleton:Lcom/android/common/sort/ContactSortUtils;

    :cond_7f
    sget-object v1, Lcom/android/common/sort/ContactSortUtils;->sSingleton:Lcom/android/common/sort/ContactSortUtils;
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_83

    monitor-exit v0

    return-object v1

    :catchall_83
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setLocales(Lcom/android/common/sort/LocaleSet;)V
    .registers 3

    const-class v0, Lcom/android/common/sort/ContactSortUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/common/sort/ContactSortUtils;->sSingleton:Lcom/android/common/sort/ContactSortUtils;

    if-eqz v1, :cond_d

    invoke-virtual {v1, p0}, Lcom/android/common/sort/ContactSortUtils;->isLocale(Lcom/android/common/sort/LocaleSet;)Z

    move-result v1

    if-nez v1, :cond_14

    :cond_d
    new-instance v1, Lcom/android/common/sort/ContactSortUtils;

    invoke-direct {v1, p0}, Lcom/android/common/sort/ContactSortUtils;-><init>(Lcom/android/common/sort/LocaleSet;)V

    sput-object v1, Lcom/android/common/sort/ContactSortUtils;->sSingleton:Lcom/android/common/sort/ContactSortUtils;
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
.method public getBucketCount()I
    .registers 1

    iget p0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndexBucketCount:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBucketFromExtened(Ljava/lang/String;)I
    .registers 6

    iget-boolean v0, p0, Lcom/android/common/sort/ContactSortUtils;->mNeedZhuyin:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2b

    invoke-static {p1}, Lcom/android/common/sort/HanziToPinyin;->getZhuyinFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2b

    const/16 v0, 0x3105

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v0, v3, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x3129

    if-gt v0, v3, :cond_2b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/common/sort/ContactSortUtils;->searchExtenedBucket(C)I

    move-result p0

    return p0

    :cond_2b
    return v1
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .registers 9

    if-nez p1, :cond_5

    iget p0, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    const/4 v3, 0x1

    if-ge v2, v0, :cond_41

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_40

    const/16 v5, 0x23

    if-ne v4, v5, :cond_1d

    goto :goto_40

    :cond_1d
    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v6

    if-nez v6, :cond_3a

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_3a

    const/16 v6, 0x28

    if-eq v4, v6, :cond_3a

    const/16 v6, 0x29

    if-eq v4, v6, :cond_3a

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_3a

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_3a

    if-eq v4, v5, :cond_3a

    goto :goto_41

    :cond_3a
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_b

    :cond_40
    :goto_40
    move v1, v3

    :cond_41
    :goto_41
    if-eqz v1, :cond_46

    iget p0, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/common/sort/ContactSortUtils;->getBucketFromExtened(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4d

    return v0

    :cond_4d
    iget-boolean v0, p0, Lcom/android/common/sort/ContactSortUtils;->mNeedPinyin:Z

    if-eqz v0, :cond_5e

    :try_start_51
    invoke-static {p1}, Lcom/android/common/sort/WordQuery;->getWholePinyinStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception v0

    const-string v1, "ContactSortUtils"

    const-string v2, "change to pinyin error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_67

    return p1

    :cond_67
    if-gtz p1, :cond_6c

    iget p0, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    return p0

    :cond_6c
    iget v0, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    if-lt p1, v0, :cond_72

    add-int/2addr v0, v3

    return v0

    :cond_72
    iget-object p0, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    array-length p0, p0

    add-int/2addr p1, p0

    return p1
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .registers 5

    const-string v0, "#"

    if-ltz p1, :cond_3e

    iget v1, p0, Lcom/android/common/sort/ContactSortUtils;->mNumberBucketIndex:I

    if-ne p1, v1, :cond_9

    goto :goto_3e

    :cond_9
    if-lez p1, :cond_19

    iget-object v1, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    array-length v2, v1

    if-gt p1, v2, :cond_19

    add-int/lit8 p1, p1, -0x1

    aget-char p0, v1, p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    if-lez p1, :cond_1f

    iget-object v1, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    array-length v1, v1

    sub-int/2addr p1, v1

    :cond_1f
    if-ltz p1, :cond_3e

    iget-object v1, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result v1

    if-ge p1, v1, :cond_3e

    iget-object v0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lcom/android/common/sort/ContactSortUtils;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {p0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object p0

    goto :goto_3d

    :cond_3c
    const/4 p0, 0x0

    :goto_3d
    return-object p0

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/common/sort/ContactSortUtils;->getBucketCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    invoke-virtual {p0, v2}, Lcom/android/common/sort/ContactSortUtils;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v1
.end method

.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isLocale(Lcom/android/common/sort/LocaleSet;)Z
    .registers 2

    sget-object p0, Lcom/android/common/sort/ContactSortUtils;->sLocales:Lcom/android/common/sort/LocaleSet;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public searchExtenedBucket(C)I
    .registers 8

    iget-object v0, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    array-length v1, v0

    const/4 v2, -0x1

    if-nez v1, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    :goto_f
    if-ge v1, v0, :cond_42

    iget-object v4, p0, Lcom/android/common/sort/ContactSortUtils;->mExtenedBuckets:[C

    aget-char v5, v4, v1

    if-ne v5, p1, :cond_1a

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_1a
    aget-char v5, v4, v0

    if-ne v5, p1, :cond_21

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_21
    aget-char v5, v4, v3

    if-ne v5, p1, :cond_28

    add-int/lit8 v3, v3, 0x1

    return v3

    :cond_28
    aget-char v4, v4, v3

    if-ge v4, p1, :cond_37

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    goto :goto_f

    :cond_37
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v3, -0x1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    goto :goto_f

    :cond_42
    return v2
.end method
