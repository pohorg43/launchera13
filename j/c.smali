.class public Lj/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:F

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:F

.field public final h:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final j:F

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V
    .registers 12
    .param p8  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p9  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lj/c;->b:Ljava/lang/String;

    iput p3, p0, Lj/c;->c:F

    iput p4, p0, Lj/c;->d:I

    iput p5, p0, Lj/c;->e:I

    iput p6, p0, Lj/c;->f:F

    iput p7, p0, Lj/c;->g:F

    iput p8, p0, Lj/c;->h:I

    iput p9, p0, Lj/c;->i:I

    iput p10, p0, Lj/c;->j:F

    iput-boolean p11, p0, Lj/c;->k:Z

    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 7

    iget-object v0, p0, Lj/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lj/c;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lj/c;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lj/c;->d:I

    invoke-static {v1}, Lj/b;->f(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lj/c;->e:I

    add-int/2addr v1, v0

    iget v0, p0, Lj/c;->f:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lj/c;->h:I

    add-int/2addr v1, p0

    return v1
.end method
