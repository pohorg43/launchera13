.class public final Ln0/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ln0/k;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln0/l$c;

.field public b:I

.field public c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Ln0/l$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/l$b;->a:Ln0/l$c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Ln0/l$b;->a:Ln0/l$c;

    invoke-virtual {v0, p0}, Lk/m;->d(Ln0/k;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ln0/l$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    check-cast p1, Ln0/l$b;

    iget v0, p0, Ln0/l$b;->b:I

    iget v2, p1, Ln0/l$b;->b:I

    if-ne v0, v2, :cond_18

    iget-object p0, p0, Ln0/l$b;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Ln0/l$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1}, Lg1/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Ln0/l$b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ln0/l$b;->c:Landroid/graphics/Bitmap$Config;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Ln0/l$b;->b:I

    iget-object p0, p0, Ln0/l$b;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, Ln0/l;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
