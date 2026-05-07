.class public Lcom/android/common/sort/AppNameComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CN_HANS_END:I = 0x9fa5

.field private static final CN_HANS_START:I = 0x4e00

.field public static final COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

.field private static final LOWERCASE_A:I = 0x61

.field private static final LOWERCASE_Z:I = 0x7a

.field private static final MULTI_USER_ID:I = 0x3e7

.field private static final NUM_0:I = 0x30

.field private static final NUM_9:I = 0x39

.field public static final SUPER_POWER_MODE_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

.field public static final TYPE_CHINESE:I = 0x2

.field public static final TYPE_LETTER:I = 0x1

.field public static final TYPE_NUMBER:I = 0x3

.field public static final TYPE_OTHER:I = 0x4

.field private static final UPPERCASE_A:I = 0x41

.field private static final UPPERCASE_Z:I = 0x5a


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mComplex:Z

.field private final mSuperPowerModeSort:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/sort/AppNameComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/sort/AppNameComparator;-><init>(Z)V

    sput-object v0, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    new-instance v0, Lcom/android/common/sort/AppNameComparator;

    invoke-direct {v0, v1, v1}, Lcom/android/common/sort/AppNameComparator;-><init>(ZZ)V

    sput-object v0, Lcom/android/common/sort/AppNameComparator;->SUPER_POWER_MODE_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/sort/AppNameComparator;-><init>(ZZ)V

    return-void
.end method

.method private constructor <init>(ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    iput-boolean p1, p0, Lcom/android/common/sort/AppNameComparator;->mComplex:Z

    iput-boolean p2, p0, Lcom/android/common/sort/AppNameComparator;->mSuperPowerModeSort:Z

    return-void
.end method

.method private compare2(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_69

    aget-char v6, v0, v5

    aget-char v7, v1, v5

    invoke-static {v6}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v8

    invoke-static {v7}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v9

    if-ne v8, v9, :cond_67

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2c

    if-ne v6, v7, :cond_25

    goto :goto_64

    :cond_25
    iget-object p0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2c
    const/4 v9, 0x3

    const/4 v10, 0x1

    if-ne v8, v9, :cond_4b

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/sort/AppNameComparator;->getNumber(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/common/sort/AppNameComparator;->getNumber(Ljava/lang/String;)I

    move-result v7

    if-eq v6, v7, :cond_64

    const/4 p0, -0x1

    if-ne v6, p0, :cond_46

    return v10

    :cond_46
    if-ne v7, p0, :cond_49

    return p0

    :cond_49
    sub-int/2addr v6, v7

    return v6

    :cond_4b
    if-ne v8, v10, :cond_60

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    if-ne v8, v9, :cond_5b

    if-eq v6, v7, :cond_5b

    sub-int/2addr v7, v6

    return v7

    :cond_5b
    if-ne v8, v9, :cond_5e

    goto :goto_64

    :cond_5e
    sub-int/2addr v8, v9

    return v8

    :cond_60
    if-eq v6, v7, :cond_64

    sub-int/2addr v6, v7

    return v6

    :cond_64
    :goto_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_67
    sub-int/2addr v8, v9

    return v8

    :cond_69
    sub-int/2addr v2, v3

    return v2
.end method

.method private compareInternal(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, -0x1

    if-nez p1, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x1

    if-nez p2, :cond_e

    return v2

    :cond_e
    instance-of v3, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_40

    instance-of v3, p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_40

    move-object v3, p1

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/16 v5, 0x3e7

    if-eq v4, v5, :cond_40

    move-object v4, p2

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-eq v6, v5, :cond_40

    iget-object v0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_40
    if-eqz v0, :cond_43

    return v0

    :cond_43
    if-ne p1, p2, :cond_54

    iget-object p0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_54
    invoke-static {p1}, Lcom/android/common/sort/AppNameComparator;->getType(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result v0

    invoke-static {p2}, Lcom/android/common/sort/AppNameComparator;->getType(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result v3

    if-eq v0, v3, :cond_60

    sub-int/2addr v0, v3

    return v0

    :cond_60
    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getAlphabeticIndex()I

    move-result v0

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getAlphabeticIndex()I

    move-result v3

    if-eq v0, v3, :cond_6e

    if-le v0, v3, :cond_6d

    move v1, v2

    :cond_6d
    return v1

    :cond_6e
    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getInitialChar()C

    move-result v0

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getInitialChar()C

    move-result v3

    const/16 v4, 0x30

    if-eq v0, v4, :cond_88

    if-eq v3, v4, :cond_88

    const/16 v4, 0x23

    if-eq v0, v4, :cond_88

    if-eq v3, v4, :cond_88

    if-eq v0, v3, :cond_88

    if-le v0, v3, :cond_87

    move v1, v2

    :cond_87
    return v1

    :cond_88
    iget-boolean v0, p0, Lcom/android/common/sort/AppNameComparator;->mComplex:Z

    if-eqz v0, :cond_91

    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->complexCompare(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result v0

    goto :goto_95

    :cond_91
    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compareTitle(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result v0

    :goto_95
    if-nez v0, :cond_a6

    iget-object p0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo2()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo2()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_a6
    return v0
.end method

.method private compareTitle(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I
    .registers 7

    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_49

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v1}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v2

    invoke-static {v0}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v3

    if-eq v2, v3, :cond_2a

    sub-int/2addr v2, v3

    return v2

    :cond_2a
    const/4 v3, 0x1

    if-ne v2, v3, :cond_44

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-ne v2, v3, :cond_3b

    if-eq v1, v0, :cond_3b

    sub-int/2addr v0, v1

    return v0

    :cond_3b
    if-ne v2, v3, :cond_42

    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_42
    sub-int/2addr v2, v3

    return v2

    :cond_44
    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_49
    :goto_49
    const/4 p0, -0x1

    return p0
.end method

.method private complexCompare(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I
    .registers 10

    invoke-interface {p1}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;->getOrderInfo()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_87

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_86

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v3

    invoke-static {v0}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result v5

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2e

    invoke-static {v2}, Lcom/android/common/sort/ZhuyinUtils;->getFirstSpell(C)C

    move-result v2

    :cond_2e
    if-ne v5, v6, :cond_34

    invoke-static {v0}, Lcom/android/common/sort/ZhuyinUtils;->getFirstSpell(C)C

    move-result v0

    :cond_34
    if-ne v3, v6, :cond_3e

    if-ne v5, v6, :cond_3e

    iget-object v0, p0, Lcom/android/common/sort/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :cond_3e
    if-ne v3, v4, :cond_54

    if-ne v5, v6, :cond_54

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p2, p1, :cond_52

    iget-boolean p0, p0, Lcom/android/common/sort/AppNameComparator;->mSuperPowerModeSort:Z

    if-eqz p0, :cond_51

    return v4

    :cond_51
    return v1

    :cond_52
    sub-int/2addr p1, p2

    return p1

    :cond_54
    if-ne v3, v6, :cond_6a

    if-ne v5, v4, :cond_6a

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    if-ne p2, p1, :cond_68

    iget-boolean p0, p0, Lcom/android/common/sort/AppNameComparator;->mSuperPowerModeSort:Z

    if-eqz p0, :cond_67

    return v1

    :cond_67
    return v4

    :cond_68
    sub-int/2addr p1, p2

    return p1

    :cond_6a
    if-eq v3, v5, :cond_6e

    sub-int/2addr v3, v5

    return v3

    :cond_6e
    if-ne v3, v4, :cond_81

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-ne v1, v0, :cond_7f

    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_7f
    sub-int/2addr v1, v0

    return v1

    :cond_81
    :goto_81
    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare2(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_86
    return v4

    :cond_87
    return v1
.end method

.method public static getFirstSpellForSearchBar(Ljava/lang/String;)C
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200e"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "200f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "202b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_34
    :goto_34
    invoke-static {v1}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result p0

    const/4 v0, 0x3

    const/16 v2, 0x23

    if-ne p0, v0, :cond_3e

    move v1, v2

    :cond_3e
    invoke-static {v1}, Lcom/android/common/sort/AppNameComparator;->getLetterType(C)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_59

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p0, :cond_54

    invoke-static {}, Lcom/android/common/sort/ComplexSortUtils;->getInstance()Lcom/android/common/sort/ComplexSortUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/common/sort/ComplexSortUtils;->isLocaleZhOrEn()Z

    move-result p0

    if-nez p0, :cond_54

    goto :goto_5a

    :cond_54
    invoke-static {v1}, Lcom/android/common/sort/ZhuyinUtils;->getFirstSpell(C)C

    move-result v2

    goto :goto_5a

    :cond_59
    move v2, v1

    :goto_5a
    return v2
.end method

.method public static getLetterType(C)I
    .registers 2

    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_b

    const v0, 0x9fa5

    if-gt p0, v0, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    invoke-static {p0}, Lcom/android/common/sort/AppNameComparator;->isNum(C)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    invoke-static {p0}, Lcom/android/common/sort/AppNameComparator;->isLetter(C)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x4

    return p0
.end method

.method private static getNumber(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_1e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1e

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1e
    const v1, 0x7fffffff

    const/16 v3, 0x8

    if-le v2, v3, :cond_27

    const/4 p0, -0x2

    return p0

    :cond_27
    if-lez v2, :cond_32

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_32
    return v1
.end method

.method private static getType(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x2

    :goto_5
    return p0
.end method

.method private static isLetter(C)Z
    .registers 2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-lt p0, v0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static isNum(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public compare(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compareInternal(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result p0

    if-gez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_b

    :cond_8
    if-lez p0, :cond_b

    const/4 p0, 0x1

    :cond_b
    :goto_b
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;

    check-cast p2, Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/sort/AppNameComparator;->compare(Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;Lcom/android/common/sort/AppNameComparator$IAppOrderInfo;)I

    move-result p0

    return p0
.end method
