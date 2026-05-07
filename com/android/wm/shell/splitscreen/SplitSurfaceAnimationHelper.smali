.class public Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mTmpDestinationRectF:Landroid/graphics/RectF;

.field private final mTmpFloat9:[F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpSourceRectF:Landroid/graphics/RectF;

.field private final mTmpTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpFloat9:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpTransform:Landroid/graphics/Matrix;

    return-void
.end method

.method private scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    invoke-virtual {p3, v0, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpTransform:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpSourceRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpDestinationRectF:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget v0, p4, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p4, p4, Landroid/graphics/Rect;->top:I

    int-to-float p4, p4

    invoke-virtual {p3, v0, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpTransform:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpFloat9:[F

    invoke-virtual {p1, p2, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public animateBounds(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V
    .registers 11

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p5

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p5

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p3

    int-to-float p4, p4

    mul-float/2addr p4, p5

    float-to-int p4, p4

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p6, p3}, Lcom/android/wm/shell/splitscreen/SplitSurfaceAnimationHelper;->scale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
