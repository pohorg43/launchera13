.class public Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OneHandedBackgroundPanelEx"

.field public static final mEnable:Z = true


# instance fields
.field private mArrowBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mArrowUpGap:I

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mBlurBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/onehanded/BackgroundWindowManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mTmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->one_handed_arrow_up_margin_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mArrowUpGap:I

    return-void
.end method

.method private createBackgroundBitmap(II)Landroid/graphics/Bitmap;
    .registers 15

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBackgroundBitmap width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3b

    iget-object v4, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mTmpRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3b
    invoke-direct {p0}, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->getArrowBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_66

    int-to-double v4, p1

    const-wide v6, 0x3fba12f684bda12fL  # 0.10185185185185185

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v8, v4

    int-to-double v4, p2

    const-wide v6, 0x3f8e9131abf0b767L  # 0.014925373134328358

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v9, v4

    iget-object v7, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mTmpRect:Landroid/graphics/Rect;

    move-object v6, p0

    move v10, p1

    move v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->getArrowDrawRect(Landroid/graphics/Rect;IIII)V

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, p0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_66
    const/16 p0, 0x1f

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method private getArrowBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mArrowBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mArrowBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_13
    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->one_handed_arrow_up_png:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mArrowBitmap:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method private getArrowDrawRect(Landroid/graphics/Rect;IIII)V
    .registers 6

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iput p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p5

    const/high16 p5, 0x3f000000  # 0.5f

    mul-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    sub-int/2addr p4, p3

    iget p0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mArrowUpGap:I

    sub-int/2addr p4, p0

    iput p4, p1, Landroid/graphics/Rect;->top:I

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private getBlurBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBlurBitmap:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBlurBitmap:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_13
    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->one_handed_backgroud_blur_png:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBlurBitmap:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method private releaseBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b
    return-void
.end method


# virtual methods
.method public setCustomBackgroundDrawable(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_2d

    :cond_1a
    iget-object v0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->releaseBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->createBackgroundBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    :cond_2d
    iget-object p2, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_42

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4e

    :cond_42
    sget-object p0, Lcom/oplus/onehanded/OneHandedBackgroundPanelEx;->TAG:Ljava/lang/String;

    const-string p1, "no custom background exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4e
    return-void
.end method
