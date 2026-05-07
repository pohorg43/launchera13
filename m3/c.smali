.class public final Lm3/c;
.super Lz2/y;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Lz2/y;-><init>()V

    iput p3, p0, Lm3/c;->a:I

    iput p2, p0, Lm3/c;->b:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_e

    if-gt p1, p2, :cond_11

    goto :goto_12

    :cond_e
    if-lt p1, p2, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lm3/c;->c:Z

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move p1, p2

    :goto_18
    iput p1, p0, Lm3/c;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    iget-boolean p0, p0, Lm3/c;->c:Z

    return p0
.end method

.method public nextInt()I
    .registers 3

    iget v0, p0, Lm3/c;->d:I

    iget v1, p0, Lm3/c;->b:I

    if-ne v0, v1, :cond_14

    iget-boolean v1, p0, Lm3/c;->c:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    iput-boolean v1, p0, Lm3/c;->c:Z

    goto :goto_19

    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_14
    iget v1, p0, Lm3/c;->a:I

    add-int/2addr v1, v0

    iput v1, p0, Lm3/c;->d:I

    :goto_19
    return v0
.end method
