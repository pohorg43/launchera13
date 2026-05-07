.class public abstract Lcom/android/launcher3/util/AbsGridOccupancy;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findVacantCell([I[[ZIIII)Z
    .registers 15

    const/4 p0, 0x0

    move v0, p0

    :goto_2
    add-int v1, v0, p6

    if-gt v1, p4, :cond_38

    move v2, p0

    :goto_7
    add-int v3, v2, p5

    if-gt v3, p3, :cond_35

    aget-object v4, p2, v2

    aget-boolean v4, v4, v0

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    move v6, v2

    :goto_12
    if-ge v6, v3, :cond_2b

    move v7, v0

    :goto_15
    if-ge v7, v1, :cond_28

    if-eqz v4, :cond_21

    aget-object v4, p2, v6

    aget-boolean v4, v4, v7

    if-nez v4, :cond_21

    move v4, v5

    goto :goto_22

    :cond_21
    move v4, p0

    :goto_22
    if-nez v4, :cond_25

    goto :goto_2b

    :cond_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_2b
    :goto_2b
    if-eqz v4, :cond_32

    aput v2, p1, p0

    aput v0, p1, v5

    return v5

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_38
    return p0
.end method
