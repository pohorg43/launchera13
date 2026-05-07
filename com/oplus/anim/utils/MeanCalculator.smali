.class public Lcom/oplus/anim/utils/MeanCalculator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private n:I

.field private sum:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 4

    iget v0, p0, Lcom/oplus/anim/utils/MeanCalculator;->sum:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/anim/utils/MeanCalculator;->sum:F

    iget p1, p0, Lcom/oplus/anim/utils/MeanCalculator;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/anim/utils/MeanCalculator;->n:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_19

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/anim/utils/MeanCalculator;->sum:F

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/oplus/anim/utils/MeanCalculator;->n:I

    :cond_19
    return-void
.end method

.method public getMean()F
    .registers 2

    iget v0, p0, Lcom/oplus/anim/utils/MeanCalculator;->n:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oplus/anim/utils/MeanCalculator;->sum:F

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method
