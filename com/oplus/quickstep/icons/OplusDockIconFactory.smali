.class public final Lcom/oplus/quickstep/icons/OplusDockIconFactory;
.super Lcom/android/launcher3/icons/BaseIconFactory;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;
    }
.end annotation


# static fields
.field private static final BLUR_FACTOR:F = 0.010416667f

.field public static final Companion:Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

.field private static final NUMBER_2:I = 0x2


# instance fields
.field private final tmpCanvas:Landroid/graphics/Canvas;

.field private final tmpOldBounds:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->Companion:Lcom/oplus/quickstep/icons/OplusDockIconFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpOldBounds:Landroid/graphics/Rect;

    new-instance p0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x4

    const/4 p3, 0x2

    invoke-direct {p0, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void
.end method


# virtual methods
.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 10

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x2

    if-eqz v0, :cond_5f

    const v0, 0x3c2aaaab

    int-to-float v2, p3

    mul-float/2addr v0, v2

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    const/4 v3, 0x1

    int-to-float v3, v3

    sub-float/2addr v3, p2

    mul-float/2addr v3, v2

    int-to-float p2, v1

    div-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p3, p2

    sub-int/2addr p3, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    move-result p3

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    int-to-float p2, p2

    invoke-virtual {v0, p2, p2}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of p2, p1, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    if-eqz p2, :cond_54

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/icons/BitmapInfo$Extender;

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-interface {p2, v0}, Lcom/android/launcher3/icons/BitmapInfo$Extender;->drawForPersistence(Landroid/graphics/Canvas;)V

    goto :goto_59

    :cond_54
    iget-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_59
    iget-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_c0

    :cond_5f
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7f

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz p4, :cond_7f

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-nez v2, :cond_7f

    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_7f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v0, :cond_9d

    if-lez v2, :cond_9d

    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    if-le v0, v2, :cond_96

    int-to-float v0, p3

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v2, v0

    move v0, p3

    goto :goto_9f

    :cond_96
    if-le v2, v0, :cond_9d

    int-to-float v0, p3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    move v2, p3

    goto :goto_9f

    :cond_9d
    move v0, p3

    move v2, v0

    :goto_9f
    sub-int v3, p3, v0

    div-int/2addr v3, v1

    sub-int v4, p3, v2

    div-int/2addr v4, v1

    add-int/2addr v0, v3

    add-int/2addr v2, v4

    invoke-virtual {p1, v3, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    div-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v0, p2, p2, p3, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :goto_c0
    iget-object p2, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/quickstep/icons/OplusDockIconFactory;->tmpCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p4
.end method
