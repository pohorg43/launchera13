.class public Lm/d;
.super Lm/b;
.source ""


# instance fields
.field public final w:Landroid/graphics/Paint;

.field public final x:Landroid/graphics/Rect;

.field public final y:Landroid/graphics/Rect;

.field public z:Lh/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;Lm/e;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm/b;-><init>(Lcom/airbnb/lottie/j;Lm/e;)V

    new-instance p1, Lf/a;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lf/a;-><init>(I)V

    iput-object p1, p0, Lm/d;->w:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lm/d;->x:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lm/d;->y:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lr/c;)V
    .registers 4
    .param p2  # Lr/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lr/c<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lm/b;->u:Lh/m;

    invoke-virtual {v0, p1, p2}, Lh/m;->c(Ljava/lang/Object;Lr/c;)Z

    sget-object v0, Lcom/airbnb/lottie/o;->C:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x0

    if-nez p2, :cond_f

    iput-object p1, p0, Lm/d;->z:Lh/a;

    goto :goto_16

    :cond_f
    new-instance v0, Lh/n;

    invoke-direct {v0, p2, p1}, Lh/n;-><init>(Lr/c;Ljava/lang/Object;)V

    iput-object v0, p0, Lm/d;->z:Lh/a;

    :cond_16
    :goto_16
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .registers 8
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lm/d;->m()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_58

    :cond_d
    invoke-static {}, Lq/j;->c()F

    move-result v1

    iget-object v2, p0, Lm/d;->w:Landroid/graphics/Paint;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lm/d;->z:Lh/a;

    if-eqz p3, :cond_25

    iget-object v2, p0, Lm/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lh/a;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lm/d;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3, p3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lm/d;->y:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v3, v3, p3, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Lm/d;->x:Landroid/graphics/Rect;

    iget-object p3, p0, Lm/d;->y:Landroid/graphics/Rect;

    iget-object p0, p0, Lm/d;->w:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_58
    :goto_58
    return-void
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lm/b;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p0}, Lm/d;->m()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lq/j;->c()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lq/j;->c()F

    move-result p3

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, v0, p3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, p0, Lm/b;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_26
    return-void
.end method

.method public final m()Landroid/graphics/Bitmap;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lm/b;->o:Lm/e;

    iget-object v0, v0, Lm/e;->g:Ljava/lang/String;

    iget-object p0, p0, Lm/b;->n:Lcom/airbnb/lottie/j;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_11

    move-object p0, v4

    goto :goto_56

    :cond_11
    iget-object v1, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-nez v5, :cond_1c

    goto :goto_27

    :cond_1c
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_27

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    goto :goto_28

    :cond_27
    :goto_27
    move-object v5, v4

    :goto_28
    if-nez v5, :cond_2e

    iget-object v6, v1, Li/b;->a:Landroid/content/Context;

    if-eqz v6, :cond_36

    :cond_2e
    iget-object v1, v1, Li/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    :cond_36
    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    if-nez v1, :cond_3d

    iput-object v4, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    :cond_3d
    iget-object v1, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    if-nez v1, :cond_54

    new-instance v1, Li/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/airbnb/lottie/j;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/airbnb/lottie/j;->k:Lcom/airbnb/lottie/b;

    iget-object v8, p0, Lcom/airbnb/lottie/j;->b:Lcom/airbnb/lottie/d;

    iget-object v8, v8, Lcom/airbnb/lottie/d;->d:Ljava/util/Map;

    invoke-direct {v1, v5, v6, v7, v8}, Li/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/airbnb/lottie/b;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    :cond_54
    iget-object p0, p0, Lcom/airbnb/lottie/j;->i:Li/b;

    :goto_56
    if-eqz p0, :cond_f7

    iget-object v1, p0, Li/b;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/k;

    if-nez v1, :cond_64

    goto/16 :goto_f7

    :cond_64
    iget-object v5, v1, Lcom/airbnb/lottie/k;->e:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6b

    move-object v4, v5

    goto/16 :goto_f7

    :cond_6b
    iget-object v5, p0, Li/b;->c:Lcom/airbnb/lottie/b;

    if-eqz v5, :cond_7a

    invoke-interface {v5, v1}, Lcom/airbnb/lottie/b;->a(Lcom/airbnb/lottie/k;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_f7

    invoke-virtual {p0, v0, v4}, Li/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto/16 :goto_f7

    :cond_7a
    iget-object v5, v1, Lcom/airbnb/lottie/k;->d:Ljava/lang/String;

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/16 v7, 0xa0

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    const-string v7, "data:"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b6

    const-string v7, "base64,"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_b6

    const/16 v1, 0x2c

    :try_start_99
    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1
    :try_end_a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_99 .. :try_end_a6} :catch_af

    array-length v3, v1

    invoke-static {v1, v2, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Li/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_f7

    :catch_af
    move-exception p0

    const-string v0, "data URL did not have correct base64 format."

    invoke-static {v0, p0}, Lq/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f7

    :cond_b6
    :try_start_b6
    iget-object v2, p0, Li/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e9

    iget-object v2, p0, Li/b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Li/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_d9} :catch_f1

    invoke-static {v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, v1, Lcom/airbnb/lottie/k;->a:I

    iget v1, v1, Lcom/airbnb/lottie/k;->b:I

    invoke-static {v2, v3, v1}, Lq/j;->e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Li/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_f7

    :cond_e9
    :try_start_e9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f1} :catch_f1

    :catch_f1
    move-exception p0

    const-string v0, "Unable to open asset."

    invoke-static {v0, p0}, Lq/f;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f7
    :goto_f7
    return-object v4
.end method
