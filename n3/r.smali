.class public final Ln3/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/r$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/s;

.field public final b:Ln3/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ln3/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ln3/r;-><init>(Ln3/s;Ln3/p;)V

    return-void
.end method

.method public constructor <init>(Ln3/s;Ln3/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ln3/r;->a:Ln3/s;

    iput-object p1, p0, Ln3/r;->b:Ln3/p;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ln3/r;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Ln3/r;

    iget-object v1, p0, Ln3/r;->a:Ln3/s;

    iget-object v3, p1, Ln3/r;->a:Ln3/s;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Ln3/r;->b:Ln3/p;

    iget-object p1, p1, Ln3/r;->b:Ln3/p;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ln3/r;->a:Ln3/s;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ln3/r;->b:Ln3/p;

    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ln3/r;->a:Ln3/s;

    const/4 v1, -0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_f

    :cond_7
    sget-object v2, Ln3/r$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_f
    if-eq v0, v1, :cond_47

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    const-string v0, "out "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ln3/r;->b:Ln3/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_2a
    new-instance p0, Ly2/h;

    invoke-direct {p0}, Ly2/h;-><init>()V

    throw p0

    :cond_30
    const-string v0, "in "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ln3/r;->b:Ln3/p;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_40
    iget-object p0, p0, Ln3/r;->b:Ln3/p;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_47
    const-string p0, "*"

    :goto_49
    return-object p0
.end method
