.class Lcom/android/common/sort/LocaleSet$LocaleWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/sort/LocaleSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleWrapper"
.end annotation


# instance fields
.field private final mLanguage:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mLocaleIsCJK:Z


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLanguage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->isLanguageCJK(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocaleIsCJK:Z

    goto :goto_1e

    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLanguage:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocaleIsCJK:Z

    :goto_1e
    return-void
.end method

.method private static isLanguageCJK(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/common/sort/LocaleSet;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public hasLocale()Z
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isLanguage(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLanguage:Ljava/lang/String;

    if-nez p0, :cond_a

    if-nez p1, :cond_8

    const/4 p0, 0x1

    goto :goto_e

    :cond_8
    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public isLocale(Ljava/util/Locale;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-nez p0, :cond_a

    if-nez p1, :cond_8

    const/4 p0, 0x1

    goto :goto_e

    :cond_8
    const/4 p0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_e
    return p0
.end method

.method public isLocaleCJK()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocaleIsCJK:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/common/sort/LocaleSet$LocaleWrapper;->mLocale:Ljava/util/Locale;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_9
    const-string p0, "(null)"

    :goto_b
    return-object p0
.end method
