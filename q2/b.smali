.class public final Lq2/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lp2/a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lq2/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Lp2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lp2/b$a;

.field public c:Lp2/b$a;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lq2/b;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne p1, p0, :cond_c

    goto/16 :goto_80

    :cond_c
    iget-object v1, p0, Lq2/b;->a:Lp2/a;

    if-eqz v1, :cond_13

    iget v2, v1, Lp2/a;->e:I

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    iget-object v3, p1, Lq2/b;->a:Lp2/a;

    if-eqz v3, :cond_1b

    iget v4, v3, Lp2/a;->e:I

    goto :goto_1c

    :cond_1b
    move v4, v0

    :goto_1c
    if-eq v2, v4, :cond_22

    sub-int v0, v2, v4

    goto/16 :goto_80

    :cond_22
    if-eqz v1, :cond_27

    iget v1, v1, Lp2/a;->f:I

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz v3, :cond_2d

    iget v2, v3, Lp2/a;->f:I

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    if-eq v1, v2, :cond_33

    sub-int v0, v1, v2

    goto :goto_80

    :cond_33
    iget-object v1, p0, Lq2/b;->b:Lp2/b$a;

    iget-object v2, p1, Lq2/b;->b:Lp2/b$a;

    if-eq v1, v2, :cond_44

    if-eqz v1, :cond_3e

    iget p0, v1, Lp2/b$a;->a:I

    goto :goto_3f

    :cond_3e
    move p0, v0

    :goto_3f
    if-eqz v2, :cond_7e

    iget v0, v2, Lp2/b$a;->a:I

    goto :goto_7e

    :cond_44
    iget-object v1, p0, Lq2/b;->c:Lp2/b$a;

    iget-object v2, p1, Lq2/b;->c:Lp2/b$a;

    if-eq v1, v2, :cond_55

    if-eqz v1, :cond_4f

    iget p0, v1, Lp2/b$a;->a:I

    goto :goto_50

    :cond_4f
    move p0, v0

    :goto_50
    if-eqz v2, :cond_7e

    iget v0, v2, Lp2/b$a;->a:I

    goto :goto_7e

    :cond_55
    iget v1, p0, Lq2/b;->d:I

    iget v2, p1, Lq2/b;->d:I

    if-eq v1, v2, :cond_6a

    if-eqz v1, :cond_62

    invoke-static {v1}, Lj/b;->m(I)I

    move-result p0

    goto :goto_63

    :cond_62
    move p0, v0

    :goto_63
    if-eqz v2, :cond_7e

    invoke-static {v2}, Lj/b;->m(I)I

    move-result v0

    goto :goto_7e

    :cond_6a
    iget p0, p0, Lq2/b;->e:I

    iget p1, p1, Lq2/b;->e:I

    if-eq p0, p1, :cond_80

    if-eqz p0, :cond_77

    invoke-static {p0}, Lj/b;->m(I)I

    move-result p0

    goto :goto_78

    :cond_77
    move p0, v0

    :goto_78
    if-eqz p1, :cond_7e

    invoke-static {p1}, Lj/b;->m(I)I

    move-result v0

    :cond_7e
    :goto_7e
    sub-int v0, p0, v0

    :cond_80
    :goto_80
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lq2/b;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lq2/b;

    iget-object v2, p1, Lq2/b;->a:Lp2/a;

    iget-object v3, p0, Lq2/b;->a:Lp2/a;

    if-ne v2, v3, :cond_2e

    iget-object v2, p1, Lq2/b;->b:Lp2/b$a;

    iget-object v3, p0, Lq2/b;->b:Lp2/b$a;

    if-ne v2, v3, :cond_2e

    iget-object v2, p1, Lq2/b;->c:Lp2/b$a;

    iget-object v3, p0, Lq2/b;->c:Lp2/b$a;

    if-ne v2, v3, :cond_2e

    iget v2, p1, Lq2/b;->d:I

    iget v3, p0, Lq2/b;->d:I

    if-ne v2, v3, :cond_2e

    iget p1, p1, Lq2/b;->e:I

    iget p0, p0, Lq2/b;->e:I

    if-ne p1, p0, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 9

    iget-object v0, p0, Lq2/b;->a:Lp2/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, v0, Lp2/a;->e:I

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    int-to-long v2, v2

    const/16 v4, 0x32b

    int-to-long v4, v4

    mul-long/2addr v2, v4

    if-eqz v0, :cond_13

    iget v0, v0, Lp2/a;->f:I

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object v0, p0, Lq2/b;->b:Lp2/b$a;

    if-eqz v0, :cond_1e

    iget v0, v0, Lp2/b$a;->a:I

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget-object v0, p0, Lq2/b;->c:Lp2/b$a;

    if-eqz v0, :cond_29

    iget v0, v0, Lp2/b$a;->a:I

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget v0, p0, Lq2/b;->d:I

    if-eqz v0, :cond_36

    invoke-static {v0}, Lj/b;->m(I)I

    move-result v0

    goto :goto_37

    :cond_36
    move v0, v1

    :goto_37
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget p0, p0, Lq2/b;->e:I

    if-eqz p0, :cond_42

    invoke-static {p0}, Lj/b;->m(I)I

    move-result v1

    :cond_42
    int-to-long v0, v1

    add-long/2addr v2, v0

    const/16 p0, 0x20

    shr-long v0, v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
