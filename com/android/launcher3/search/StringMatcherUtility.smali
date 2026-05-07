.class public Lcom/android/launcher3/search/StringMatcherUtility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBreak(III)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_38

    packed-switch p1, :pswitch_data_3a

    const/4 v1, 0x0

    if-eq p0, v0, :cond_31

    const/4 p2, 0x2

    if-eq p0, p2, :cond_29

    const/4 p2, 0x3

    if-eq p0, p2, :cond_34

    const/16 p2, 0x14

    if-eq p0, p2, :cond_28

    packed-switch p0, :pswitch_data_44

    packed-switch p0, :pswitch_data_4e

    return v1

    :pswitch_1a  #0x9, 0xa, 0xb
    const/16 p0, 0x9

    if-eq p1, p0, :cond_27

    const/16 p0, 0xa

    if-eq p1, p0, :cond_27

    const/16 p0, 0xb

    if-eq p1, p0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :cond_28
    :goto_28
    :pswitch_28  #0x18, 0x19, 0x1a
    return v0

    :cond_29
    const/4 p0, 0x5

    if-gt p1, p0, :cond_30

    if-gtz p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :cond_30
    :goto_30
    return v0

    :cond_31
    if-ne p2, v0, :cond_34

    return v0

    :cond_34
    if-eq p1, v0, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :cond_38
    :goto_38
    :pswitch_38  #0xc, 0xd, 0xe
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0xc
        :pswitch_38  #0000000c
        :pswitch_38  #0000000d
        :pswitch_38  #0000000e
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x9
        :pswitch_1a  #00000009
        :pswitch_1a  #0000000a
        :pswitch_1a  #0000000b
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x18
        :pswitch_28  #00000018
        :pswitch_28  #00000019
        :pswitch_28  #0000001a
    .end packed-switch
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_6f

    if-gtz v0, :cond_e

    goto :goto_6f

    :cond_e
    invoke-static {p0}, Lcom/android/launcher3/search/StringMatcherUtility;->requestSimpleFuzzySearch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v3

    sub-int v4, v1, v0

    move v5, v2

    move v6, v5

    :goto_29
    if-gt v5, v4, :cond_6f

    const/4 v7, 0x1

    add-int/lit8 v8, v1, -0x1

    if-ge v5, v8, :cond_3b

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_3c

    :cond_3b
    move v8, v2

    :goto_3c
    sget-boolean v9, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v9, :cond_5d

    invoke-static {}, Lcom/android/common/sort/ComplexSortUtils;->getInstance()Lcom/android/common/sort/ComplexSortUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/common/sort/ComplexSortUtils;->isLocaleEn()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-static {v3, v6, v8}, Lcom/android/launcher3/search/StringMatcherUtility;->isBreak(III)Z

    move-result v6

    if-eqz v6, :cond_6a

    :cond_50
    add-int v6, v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p0, v6}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    return v7

    :cond_5d
    add-int v6, v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p0, v6}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    return v7

    :cond_6a
    add-int/lit8 v5, v5, 0x1

    move v6, v3

    move v3, v8

    goto :goto_29

    :cond_6f
    :goto_6f
    return v2
.end method

.method private static requestSimpleFuzzySearch(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    sget-object v3, Lcom/android/launcher3/search/StringMatcherUtility$1;->$SwitchMap$java$lang$Character$UnicodeScript:[I

    invoke-static {v2}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    goto :goto_2

    :cond_21
    return v3

    :cond_22
    return v0
.end method
