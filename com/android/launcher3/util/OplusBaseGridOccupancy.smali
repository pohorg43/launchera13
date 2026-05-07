.class Lcom/android/launcher3/util/OplusBaseGridOccupancy;
.super Lcom/android/launcher3/util/AbsGridOccupancy;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusBaseGridOccupancy"


# instance fields
.field public cells:[[Z

.field public mCountX:I

.field public mCountY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/util/AbsGridOccupancy;-><init>()V

    return-void
.end method


# virtual methods
.method public findConsecutiveVacantCellsInTail(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_8
    if-ltz v0, :cond_31

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    sub-int/2addr v3, v1

    :goto_d
    if-ltz v3, :cond_2b

    iget-object v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v0

    if-nez v4, :cond_2a

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_2a
    move v2, v1

    :cond_2b
    if-eqz v2, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3a

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_3a
    return-void
.end method

.method public findLastOccupiedCell([I)Z
    .registers 7

    if-nez p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_5
    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    const/4 v2, 0x0

    if-ltz v0, :cond_24

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    sub-int/2addr v3, v1

    :goto_f
    if-ltz v3, :cond_21

    iget-object v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1e

    aput v3, p1, v2

    aput v0, p1, v1

    return v1

    :cond_1e
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_24
    return v2
.end method

.method public findLastVacantCell([III)Z
    .registers 13

    const/4 v0, 0x2

    if-nez p1, :cond_5

    new-array p1, v0, [I

    :cond_5
    iget v1, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    const/4 v2, 0x0

    if-gt p2, v1, :cond_77

    iget v1, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-le p3, v1, :cond_10

    goto/16 :goto_77

    :cond_10
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->findLastOccupiedCell([I)Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x1

    aget v3, v0, v1

    add-int/2addr v3, p3

    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-le v3, v4, :cond_21

    return v2

    :cond_21
    aget v3, v0, v2

    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_2d

    aget v3, v0, v2

    add-int/2addr v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    aget v5, v0, v2

    sub-int/2addr v4, v1

    if-ge v5, v4, :cond_36

    aget v0, v0, v1

    goto :goto_39

    :cond_36
    aget v0, v0, v1

    add-int/2addr v0, v1

    :goto_39
    add-int v4, v0, p3

    iget v5, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-gt v4, v5, :cond_76

    :goto_3f
    add-int v5, v3, p2

    iget v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-gt v5, v6, :cond_72

    iget-object v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v6, v6, v3

    aget-boolean v6, v6, v0

    xor-int/2addr v6, v1

    move v7, v3

    :goto_4d
    if-ge v7, v5, :cond_68

    move v8, v0

    :goto_50
    if-ge v8, v4, :cond_65

    if-eqz v6, :cond_5e

    iget-object v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v6, v6, v7

    aget-boolean v6, v6, v8

    if-nez v6, :cond_5e

    move v6, v1

    goto :goto_5f

    :cond_5e
    move v6, v2

    :goto_5f
    if-nez v6, :cond_62

    goto :goto_68

    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_68
    :goto_68
    if-eqz v6, :cond_6f

    aput v3, p1, v2

    aput v0, p1, v1

    return v1

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_72
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_39

    :cond_76
    return v2

    :cond_77
    :goto_77
    const-string p1, "findLastVacantCell out of range! spanX = "

    const-string v0, ", spanY = "

    const-string v1, ", mCountX = "

    invoke-static {p1, p2, v0, p3, v1}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mCountY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseGridOccupancy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public findPreferVacantCell([IIIII)Z
    .registers 14

    invoke-virtual {p0, p4, p5, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v0

    const-string v1, ", y="

    const-string v2, "findPreferVacantCell(), available x="

    const-string v3, "OplusBaseGridOccupancy"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_16

    invoke-static {v2, p4, v1, p5, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    aput p4, p1, v4

    aput p5, p1, v5

    return v5

    :cond_16
    move v0, v4

    :goto_17
    add-int v6, v0, p3

    iget v7, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-gt v6, v7, :cond_2e

    invoke-virtual {p0, p4, v0, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-eqz v6, :cond_2b

    aput p4, p1, v4

    aput v0, p1, v5

    invoke-static {v2, p4, v1, v0, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2e
    move v0, v4

    :goto_2f
    add-int v6, v0, p2

    iget v7, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-gt v6, v7, :cond_46

    invoke-virtual {p0, v0, p5, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-eqz v6, :cond_43

    aput v0, p1, v4

    aput p5, p1, v5

    invoke-static {v2, p4, v1, p5, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_46
    move p5, v4

    :goto_47
    add-int v0, p5, p3

    iget v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-gt v0, v6, :cond_68

    move v0, v4

    :goto_4e
    add-int v6, v0, p2

    iget v7, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-gt v6, v7, :cond_65

    invoke-virtual {p0, v0, p5, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v6

    if-eqz v6, :cond_62

    aput v0, p1, v4

    aput p5, p1, v5

    invoke-static {v2, p4, v1, p5, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_65
    add-int/lit8 p5, p5, 0x1

    goto :goto_47

    :cond_68
    return v4
.end method

.method public findPreferVacantVDFCell([IIIII)Z
    .registers 12

    invoke-virtual {p0, p4, p5, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v0

    const-string v1, " y = "

    const-string v2, "OplusBaseGridOccupancy"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_16

    const-string p0, "findPreferVacantCell preferxy is available X = "

    invoke-static {p0, p4, v1, p5, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    aput p4, p1, v3

    aput p5, p1, v4

    return v4

    :cond_16
    move p4, v3

    :goto_17
    add-int v0, p4, p2

    iget v5, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-gt v0, v5, :cond_30

    invoke-virtual {p0, p4, p5, p2, p3}, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->isAvailable(IIII)Z

    move-result v0

    if-eqz v0, :cond_2d

    aput p4, p1, v3

    aput p5, p1, v4

    const-string p0, "findPreferVacantCell prefery is available X = "

    invoke-static {p0, p4, v1, p5, v2}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    return v4

    :cond_2d
    add-int/lit8 p4, p4, 0x1

    goto :goto_17

    :cond_30
    return v3
.end method

.method public findVacantCellBackwards([III)Z
    .registers 13

    if-nez p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_5
    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_9
    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4b

    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    sub-int/2addr v2, v1

    :goto_11
    add-int/lit8 v4, p2, -0x1

    if-lt v2, v4, :cond_48

    iget-object v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v0

    xor-int/2addr v4, v1

    sub-int v5, v2, p2

    add-int/2addr v5, v1

    sub-int v6, v0, p3

    add-int/2addr v6, v1

    move v7, v2

    :goto_23
    if-lt v7, v5, :cond_3e

    move v8, v0

    :goto_26
    if-lt v8, v6, :cond_3b

    if-eqz v4, :cond_34

    iget-object v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v4, v4, v7

    aget-boolean v4, v4, v8

    if-nez v4, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    if-nez v4, :cond_38

    goto :goto_3e

    :cond_38
    add-int/lit8 v8, v8, -0x1

    goto :goto_26

    :cond_3b
    add-int/lit8 v7, v7, -0x1

    goto :goto_23

    :cond_3e
    :goto_3e
    if-eqz v4, :cond_45

    aput v5, p1, v3

    aput v6, p1, v1

    return v1

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_4b
    return v3
.end method

.method public findVacantCellReverse([III)Z
    .registers 14

    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    sub-int/2addr v0, p3

    :goto_3
    sub-int v1, v0, p3

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v1, v3, :cond_41

    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    sub-int/2addr v4, p2

    :goto_c
    sub-int v5, v4, p2

    if-lt v5, v3, :cond_3e

    iget-object v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v6, v6, v4

    aget-boolean v6, v6, v0

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    move v8, v4

    :goto_19
    if-le v8, v5, :cond_34

    move v9, v0

    :goto_1c
    if-le v9, v1, :cond_31

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v6, v6, v8

    aget-boolean v6, v6, v9

    if-nez v6, :cond_2a

    move v6, v7

    goto :goto_2b

    :cond_2a
    move v6, v2

    :goto_2b
    if-nez v6, :cond_2e

    goto :goto_34

    :cond_2e
    add-int/lit8 v9, v9, -0x1

    goto :goto_1c

    :cond_31
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    :cond_34
    :goto_34
    if-eqz v6, :cond_3b

    aput v4, p1, v2

    aput v0, p1, v7

    return v7

    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_41
    return v2
.end method

.method public getCountX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    return p0
.end method

.method public getCountY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    return p0
.end method

.method public isAvailable(IIII)Z
    .registers 9

    add-int/2addr p3, p1

    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_30

    add-int/2addr p4, p2

    iget v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-le p4, v0, :cond_c

    goto :goto_30

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    :goto_14
    if-ge p1, p3, :cond_2f

    move v3, p2

    :goto_17
    if-ge v3, p4, :cond_2c

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, v3

    if-nez v0, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    if-nez v0, :cond_29

    return v1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_2f
    return v2

    :cond_30
    :goto_30
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    iget v4, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-ge v3, v4, :cond_28

    move v4, v2

    :goto_d
    iget v5, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-ge v4, v5, :cond_22

    iget-object v5, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v5, v5, v4

    aget-boolean v5, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
