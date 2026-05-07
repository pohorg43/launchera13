.class public Lr/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/lottie/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final d:Landroid/view/animation/Interpolator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:F

.field public f:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public g:F

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:Landroid/graphics/PointF;

.field public n:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/d;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .registers 8
    .param p2  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/d;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lr/a;->g:F

    iput v0, p0, Lr/a;->h:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lr/a;->i:I

    iput v0, p0, Lr/a;->j:I

    const/4 v0, 0x1

    iput v0, p0, Lr/a;->k:F

    iput v0, p0, Lr/a;->l:F

    const/4 v0, 0x0

    iput-object v0, p0, Lr/a;->m:Landroid/graphics/PointF;

    iput-object v0, p0, Lr/a;->n:Landroid/graphics/PointF;

    iput-object p1, p0, Lr/a;->a:Lcom/airbnb/lottie/d;

    iput-object p2, p0, Lr/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lr/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lr/a;->d:Landroid/view/animation/Interpolator;

    iput p5, p0, Lr/a;->e:F

    iput-object p6, p0, Lr/a;->f:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lr/a;->g:F

    iput v0, p0, Lr/a;->h:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lr/a;->i:I

    iput v0, p0, Lr/a;->j:I

    const/4 v0, 0x1

    iput v0, p0, Lr/a;->k:F

    iput v0, p0, Lr/a;->l:F

    const/4 v1, 0x0

    iput-object v1, p0, Lr/a;->m:Landroid/graphics/PointF;

    iput-object v1, p0, Lr/a;->n:Landroid/graphics/PointF;

    iput-object v1, p0, Lr/a;->a:Lcom/airbnb/lottie/d;

    iput-object p1, p0, Lr/a;->b:Ljava/lang/Object;

    iput-object p1, p0, Lr/a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lr/a;->d:Landroid/view/animation/Interpolator;

    iput v0, p0, Lr/a;->e:F

    const p1, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lr/a;->f:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public a(F)Z
    .registers 3
    .param p1  # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    invoke-virtual {p0}, Lr/a;->c()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lr/a;->b()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public b()F
    .registers 4

    iget-object v0, p0, Lr/a;->a:Lcom/airbnb/lottie/d;

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_7

    return v1

    :cond_7
    iget v0, p0, Lr/a;->l:F

    const/4 v2, 0x1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2c

    iget-object v0, p0, Lr/a;->f:Ljava/lang/Float;

    if-nez v0, :cond_15

    iput v1, p0, Lr/a;->l:F

    goto :goto_2c

    :cond_15
    invoke-virtual {p0}, Lr/a;->c()F

    move-result v0

    iget-object v1, p0, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lr/a;->e:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lr/a;->a:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->c()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    iput v1, p0, Lr/a;->l:F

    :cond_2c
    :goto_2c
    iget p0, p0, Lr/a;->l:F

    return p0
.end method

.method public c()F
    .registers 4

    iget-object v0, p0, Lr/a;->a:Lcom/airbnb/lottie/d;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget v1, p0, Lr/a;->k:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_19

    iget v1, p0, Lr/a;->e:F

    iget v2, v0, Lcom/airbnb/lottie/d;->k:F

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->c()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lr/a;->k:F

    :cond_19
    iget p0, p0, Lr/a;->k:F

    return p0
.end method

.method public d()Z
    .registers 1

    iget-object p0, p0, Lr/a;->d:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Keyframe{startValue="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lr/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lr/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lr/a;->f:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
