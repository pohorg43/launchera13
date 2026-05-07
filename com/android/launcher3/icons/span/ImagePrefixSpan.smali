.class public Lcom/android/launcher3/icons/span/ImagePrefixSpan;
.super Landroid/text/style/ImageSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;
    }
.end annotation


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mMargin:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    instance-of p2, p1, Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;

    if-eqz p2, :cond_f

    check-cast p1, Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;

    invoke-interface {p1}, Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;->getMargin()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mMargin:Landroid/graphics/RectF;

    :cond_f
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    :cond_19
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int p3, p8, p3

    iget p4, p0, Landroid/text/style/ImageSpan;->mVerticalAlignment:I

    const/4 p7, 0x1

    if-ne p4, p7, :cond_1f

    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_1d
    sub-int/2addr p3, p4

    goto :goto_30

    :cond_1f
    const/4 p7, 0x2

    if-ne p4, p7, :cond_30

    invoke-static {p8, p6, p7, p6}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    div-int/2addr p4, p7

    goto :goto_1d

    :cond_30
    :goto_30
    iget-object p0, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mMargin:Landroid/graphics/RectF;

    iget p4, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p5, p4

    int-to-float p3, p3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p0

    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/text/style/DynamicDrawableSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mMargin:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public setMargin(Landroid/graphics/RectF;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/icons/span/ImagePrefixSpan;->mMargin:Landroid/graphics/RectF;

    return-void
.end method
