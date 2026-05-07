.class public Lcom/android/common/sort/LocaleSet;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/sort/LocaleSet$LocaleWrapper;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final SCRIPT_SIMPLIFIED_CHINESE:Ljava/lang/String; = "Hans"

.field private static final SCRIPT_TRADITIONAL_CHINESE:Ljava/lang/String; = "Hant"


# instance fields
.field private final mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

.field private final mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/sort/LocaleSet;->CHINESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/sort/LocaleSet;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/sort/LocaleSet;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/util/Locale;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-direct {v0, p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    new-instance p1, Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {v0, p2}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLocale(Ljava/util/Locale;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p2, 0x0

    :cond_13
    invoke-direct {p1, p2}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;-><init>(Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/sort/LocaleSet;->CHINESE_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/sort/LocaleSet;->JAPANESE_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/sort/LocaleSet;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefault()Lcom/android/common/sort/LocaleSet;
    .registers 2

    new-instance v0, Lcom/android/common/sort/LocaleSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public static getLocaleSet(Ljava/lang/String;)Lcom/android/common/sort/LocaleSet;
    .registers 5

    if-eqz p0, :cond_4d

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "und"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    array-length v1, p0

    const/4 v3, 0x1

    if-le v1, v3, :cond_47

    aget-object v1, p0, v3

    if-eqz v1, :cond_47

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_47

    new-instance v1, Lcom/android/common/sort/LocaleSet;

    invoke-direct {v1, v0, p0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    return-object v1

    :cond_47
    new-instance p0, Lcom/android/common/sort/LocaleSet;

    invoke-direct {p0, v0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    return-object p0

    :cond_4d
    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object p0

    return-object p0
.end method

.method public static isLocaleSimplifiedChinese(Ljava/util/Locale;)Z
    .registers 3

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/common/sort/LocaleSet;->CHINESE_LANGUAGE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2b

    :cond_f
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hans"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_24
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method

.method public static isLocaleTraditionalChinese(Ljava/util/Locale;)Z
    .registers 3

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/common/sort/LocaleSet;->CHINESE_LANGUAGE:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2b

    :cond_f
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_24
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/common/sort/LocaleSet;

    const/4 v2, 0x0

    if-eqz v1, :cond_26

    check-cast p1, Lcom/android/common/sort/LocaleSet;

    iget-object v1, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/common/sort/LocaleSet;->isPrimaryLocale(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/common/sort/LocaleSet;->isSecondaryLocale(Ljava/util/Locale;)Z

    move-result p0

    if-eqz p0, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    return v0

    :cond_26
    return v2
.end method

.method public getPrimaryLocale()Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryLocale()Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public hasSecondaryLocale()Z
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->hasLocale()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isPrimaryLanguage(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPrimaryLocale(Ljava/util/Locale;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public isPrimaryLocaleCJK()Z
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLocaleCJK()Z

    move-result p0

    return p0
.end method

.method public isPrimaryLocaleSimplifiedChinese()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/sort/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public isPrimaryLocaleTraditionalChinese()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/sort/LocaleSet;->isLocaleTraditionalChinese(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public isSecondaryLanguage(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSecondaryLocale(Ljava/util/Locale;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0, p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public isSecondaryLocaleCJK()Z
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLocaleCJK()Z

    move-result p0

    return p0
.end method

.method public isSecondaryLocaleSimplifiedChinese()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getSecondaryLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/sort/LocaleSet;->isLocaleSimplifiedChinese(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public isSecondaryLocaleTraditionalChinese()Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getSecondaryLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/sort/LocaleSet;->isLocaleTraditionalChinese(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method public normalize()Lcom/android/common/sort/LocaleSet;
    .registers 3

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->getDefault()Lcom/android/common/sort/LocaleSet;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->getSecondaryLocale()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/sort/LocaleSet;->isPrimaryLanguage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->isPrimaryLocaleCJK()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->isSecondaryLocaleCJK()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_3a

    :cond_28
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/sort/LocaleSet;->isSecondaryLanguage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance p0, Lcom/android/common/sort/LocaleSet;

    invoke-direct {p0, v0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    :cond_39
    return-object p0

    :cond_3a
    :goto_3a
    new-instance p0, Lcom/android/common/sort/LocaleSet;

    invoke-direct {p0, v0}, Lcom/android/common/sort/LocaleSet;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/sort/LocaleSet;->mPrimaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {v1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet;->hasSecondaryLocale()Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet;->mSecondaryLocale:Lcom/android/common/sort/LocaleSet$LocaleWrapper;

    invoke-virtual {p0}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
