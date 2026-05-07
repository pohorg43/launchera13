.class public Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;
.super Landroid/graphics/RectF;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplusOrientationRectF"
.end annotation


# instance fields
.field private height:F

.field private originRectF:Landroid/graphics/RectF;

.field private width:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->originRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    iput p3, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->width:F

    iput p4, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->height:F

    return-void
.end method


# virtual methods
.method public final getHeight()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->height:F

    return p0
.end method

.method public final getOriginRectF()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->originRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final getWidth()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->width:F

    return p0
.end method

.method public final setHeight(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->height:F

    return-void
.end method

.method public final setWidth(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl$OplusOrientationRectF;->width:F

    return-void
.end method
