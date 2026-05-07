.class public Lp3/g;
.super Lp3/f;
.source ""


# direct methods
.method public static final f(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Li1/i;->c(I)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    goto/16 :goto_6d

    :cond_16
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    const v6, -0x7fffffff

    const/4 v7, 0x1

    if-gez v5, :cond_39

    if-ne v1, v7, :cond_2a

    goto :goto_6d

    :cond_2a
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_32

    const/high16 v6, -0x80000000

    move v4, v7

    goto :goto_3b

    :cond_32
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6d

    move v4, v7

    move v7, v3

    goto :goto_3b

    :cond_39
    move v4, v3

    move v7, v4

    :goto_3b
    const v5, -0x38e38e3

    move v8, v5

    :goto_3f
    if-ge v4, v1, :cond_60

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, v0}, Ljava/lang/Character;->digit(II)I

    move-result v9

    if-gez v9, :cond_4c

    goto :goto_6d

    :cond_4c
    if-ge v3, v8, :cond_55

    if-ne v8, v5, :cond_6d

    div-int/lit8 v8, v6, 0xa

    if-ge v3, v8, :cond_55

    goto :goto_6d

    :cond_55
    mul-int/lit8 v3, v3, 0xa

    add-int v10, v6, v9

    if-ge v3, v10, :cond_5c

    goto :goto_6d

    :cond_5c
    sub-int/2addr v3, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_60
    if-eqz v7, :cond_67

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_6c

    :cond_67
    neg-int p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_6c
    move-object v2, p0

    :cond_6d
    :goto_6d
    return-object v2
.end method
