.class public final Lm0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lj0/c;


# instance fields
.field public final b:Lj0/c;

.field public final c:Lj0/c;


# direct methods
.method public constructor <init>(Lj0/c;Lj0/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/e;->b:Lj0/c;

    iput-object p2, p0, Lm0/e;->c:Lj0/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1  # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lm0/e;->b:Lj0/c;

    invoke-interface {v0, p1}, Lj0/c;->a(Ljava/security/MessageDigest;)V

    iget-object p0, p0, Lm0/e;->c:Lj0/c;

    invoke-interface {p0, p1}, Lj0/c;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lm0/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    check-cast p1, Lm0/e;

    iget-object v0, p0, Lm0/e;->b:Lj0/c;

    iget-object v2, p1, Lm0/e;->b:Lj0/c;

    invoke-interface {v0, v2}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lm0/e;->c:Lj0/c;

    iget-object p1, p1, Lm0/e;->c:Lj0/c;

    invoke-interface {p0, p1}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lm0/e;->b:Lj0/c;

    invoke-interface {v0}, Lj0/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lm0/e;->c:Lj0/c;

    invoke-interface {p0}, Lj0/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "DataCacheKey{sourceKey="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm0/e;->b:Lj0/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm0/e;->c:Lj0/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
