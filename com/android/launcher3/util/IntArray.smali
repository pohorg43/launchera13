.class public Lcom/android/launcher3/util/IntArray;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/IntArray$ValueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_INT:[I

.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field public mSize:I

.field public mValues:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    sget-object p1, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    iput-object p1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    goto :goto_e

    :cond_a
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    :goto_e
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method private constructor <init>([II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iput p2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method private static checkBounds(II)V
    .registers 5

    if-ltz p1, :cond_5

    if-le p0, p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "length="

    const-string v2, "; index="

    invoke-static {v1, p0, v2, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    array-length v2, v1

    if-lt p1, v2, :cond_1c

    const/4 v2, 0x6

    if-ge v0, v2, :cond_e

    const/16 v2, 0xc

    goto :goto_10

    :cond_e
    shr-int/lit8 v2, v0, 0x1

    :goto_10
    add-int/2addr v2, v0

    if-le v2, p1, :cond_14

    move p1, v2

    :cond_14
    new-array p1, p1, [I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    :cond_1c
    return-void
.end method

.method public static fromConcatString(Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;
    .registers 5

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array v1, p0, [I

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_25
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/util/IntArray;-><init>([II)V

    return-object v0
.end method

.method public static varargs wrap([I)Lcom/android/launcher3/util/IntArray;
    .registers 3

    new-instance v0, Lcom/android/launcher3/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;->ensureCapacity(I)V

    iget v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    sub-int v2, v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v1, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    if-eqz v2, :cond_17

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    iget-object p0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aput p2, p0, p1

    return-void
.end method

.method public addAll(Lcom/android/launcher3/util/IntArray;)V
    .registers 6

    iget v0, p1, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/IntArray;->ensureCapacity(I)V

    iget-object p1, p1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget-object v1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget v2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method public clone()Lcom/android/launcher3/util/IntArray;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clone()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public copyFrom(Lcom/android/launcher3/util/IntArray;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/util/IntArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    check-cast p1, Lcom/android/launcher3/util/IntArray;

    iget v1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    iget v3, p1, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ne v1, v3, :cond_25

    move v1, v2

    :goto_12
    iget v3, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v1, v3, :cond_24

    iget-object v3, p1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    return v0

    :cond_25
    return v2
.end method

.method public get(I)I
    .registers 3

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    iget-object p0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget p0, p0, p1

    return p0
.end method

.method public indexOf(I)I
    .registers 5

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_f

    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_c

    return v1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/IntArray$ValueIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/IntArray$ValueIterator;-><init>(Lcom/android/launcher3/util/IntArray;)V

    return-object v0
.end method

.method public removeAllValues(Lcom/android/launcher3/util/IntArray;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v0, v1, :cond_f

    iget-object v1, p1, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method public removeIndex(I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return-void
.end method

.method public removeValue(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    :cond_9
    return-void
.end method

.method public set(II)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    invoke-static {v0, p1}, Lcom/android/launcher3/util/IntArray;->checkBounds(II)V

    iget-object p0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aput p2, p0, p1

    return-void
.end method

.method public size()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    return p0
.end method

.method public toArray()[I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-nez v0, :cond_7

    sget-object p0, Lcom/android/launcher3/util/IntArray;->EMPTY_INT:[I

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public toConcatString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget v2, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    if-ge v1, v2, :cond_1b

    if-lez v1, :cond_11

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-object v2, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
