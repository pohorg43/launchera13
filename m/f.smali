.class public Lm/f;
.super Lm/b;
.source ""


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    return-void
.end method


# virtual methods
.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 4

    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
