.class public Lcom/oplus/anim/model/content/GradientColor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final colors:[I

.field private final positions:[F


# direct methods
.method public constructor <init>([F[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/model/content/GradientColor;->positions:[F

    iput-object p2, p0, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    return-void
.end method


# virtual methods
.method public getColors()[I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    return-object p0
.end method

.method public getPositions()[F
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientColor;->positions:[F

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length p0, p0

    return p0
.end method

.method public lerp(Lcom/oplus/anim/model/content/GradientColor;Lcom/oplus/anim/model/content/GradientColor;F)V
    .registers 8

    iget-object v0, p1, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length v0, v0

    iget-object v1, p2, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length v1, v1

    if-ne v0, v1, :cond_32

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p1, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length v1, v1

    if-ge v0, v1, :cond_31

    iget-object v1, p0, Lcom/oplus/anim/model/content/GradientColor;->positions:[F

    iget-object v2, p1, Lcom/oplus/anim/model/content/GradientColor;->positions:[F

    aget v2, v2, v0

    iget-object v3, p2, Lcom/oplus/anim/model/content/GradientColor;->positions:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    iget-object v2, p1, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    aget v2, v2, v0

    iget-object v3, p2, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, Lcom/oplus/anim/utils/GammaEvaluator;->evaluate(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_31
    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "Cannot interpolate between gradients. Lengths vary ("

    invoke-static {p3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p1, p1, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/oplus/anim/model/content/GradientColor;->colors:[I

    array-length p1, p1

    const-string p2, ")"

    invoke-static {p3, p1, p2}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
