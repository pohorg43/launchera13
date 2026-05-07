.class public Lcom/oplus/uxicon/ui/util/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/util/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:Lcom/oplus/uxicon/ui/util/b;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/res/Resources;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 5
    .param p2  # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/uxicon/ui/util/c;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->i:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->k:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->l:Ljava/util/Map;

    const-string v0, "iconPackName:"

    const-string v1, "OplusIconPackUtil"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/c;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    new-instance p1, Lcom/oplus/uxicon/ui/util/b;

    const/16 p2, 0xc8

    invoke-direct {p1, p2}, Lcom/oplus/uxicon/ui/util/b;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/c;->c:Lcom/oplus/uxicon/ui/util/b;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/util/c;->a:I

    return-void
.end method

.method public static a(FF)F
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_6

    move p0, p1

    :cond_6
    cmpl-float p1, p0, v0

    if-nez p1, :cond_c

    const/high16 p0, 0x3f800000  # 1.0f

    :cond_c
    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    if-nez p2, :cond_9

    goto :goto_3c

    :cond_9
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->c:Lcom/oplus/uxicon/ui/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/oplus/uxicon/ui/util/b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)F

    move-result p2

    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "getDrawableNormalizeScale key:"

    const-string v1, "OplusIconPackUtil"

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->k:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    :cond_2f
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->k:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_3b
    return p2

    :cond_3c
    :goto_3c
    const/4 p0, 0x0

    return p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;FFI)Landroid/graphics/Bitmap;
    .registers 27
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    const/4 v5, 0x1

    move/from16 v6, p8

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    instance-of v6, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v6, :cond_1f

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_39

    :cond_1f
    instance-of v6, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_39

    move-object v6, v0

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_39

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    if-nez v7, :cond_39

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    :cond_39
    :goto_39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v6, :cond_57

    if-lez v7, :cond_57

    int-to-float v8, v6

    int-to-float v9, v7

    div-float/2addr v8, v9

    if-le v6, v7, :cond_4f

    int-to-float v6, v5

    div-float/2addr v6, v8

    float-to-int v6, v6

    move v7, v5

    goto :goto_59

    :cond_4f
    if-le v7, v6, :cond_57

    int-to-float v6, v5

    mul-float/2addr v6, v8

    float-to-int v6, v6

    move v7, v6

    move v6, v5

    goto :goto_59

    :cond_57
    move v6, v5

    move v7, v6

    :goto_59
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15}, Landroid/graphics/Canvas;-><init>()V

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v10, v5, v7

    div-int/lit8 v10, v10, 0x2

    sub-int v11, v5, v6

    div-int/lit8 v11, v11, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v12, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v12, :cond_a3

    int-to-float v12, v5

    const v13, 0x3c2aaaab

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v7, v10, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v10

    invoke-virtual {v0, v10, v10, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a8

    :cond_a3
    add-int/2addr v7, v10

    add-int/2addr v6, v11

    invoke-virtual {v0, v10, v11, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_a8
    invoke-virtual {v15}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v5

    const/high16 v7, 0x40000000  # 2.0f

    div-float v13, v6, v7

    move/from16 v10, p6

    invoke-virtual {v15, v10, v10, v13, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v15}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v0, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v2, :cond_139

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v5, v4, v0

    if-gez v5, :cond_10e

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v10, -0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    sub-float v10, v0, v4

    mul-float/2addr v10, v6

    div-float/2addr v10, v7

    add-float/2addr v0, v10

    sub-float v7, v6, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v15

    move/from16 v16, v13

    move v13, v6

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 p0, v15

    move-object v15, v5

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v10, p0

    move v12, v0

    move v13, v0

    move v14, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v7

    move v13, v6

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v0

    move v12, v7

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_114

    :cond_10e
    move/from16 v16, v13

    move-object/from16 v17, v14

    move-object/from16 p0, v15

    :goto_114
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    move/from16 v6, v16

    invoke-virtual {v0, v4, v4, v6, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    goto :goto_13d

    :cond_139
    move v6, v13

    move-object/from16 v17, v14

    move-object v0, v15

    :goto_13d
    if-eqz v1, :cond_166

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v4, v4, v6, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_166
    if-eqz v3, :cond_181

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v0, v4, v4, v6, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    :cond_181
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v17
.end method

.method public final a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    invoke-static {p2}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    div-int/lit8 v1, p3, 0x64

    int-to-float v1, v1

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0, v0, p2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method public final a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/uxicon/ui/util/c;->b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_b

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "OplusIconPackUtil"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "getDrawableIconForPackage componentName is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_b
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    :cond_37
    if-nez v2, :cond_49

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    :cond_49
    if-nez v2, :cond_82

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/uxicon/ui/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_66

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    goto :goto_82

    :cond_66
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/uxicon/ui/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_82

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    goto :goto_82

    :cond_81
    move-object v2, v1

    :cond_82
    :goto_82
    if-nez v2, :cond_90

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/uxicon/ui/util/c$a;

    :cond_90
    if-eqz v2, :cond_b4

    iget v3, v2, Lcom/oplus/uxicon/ui/util/c$a;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_98

    goto :goto_a4

    :cond_98
    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    iget-object v4, v2, Lcom/oplus/uxicon/ui/util/c$a;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/uxicon/ui/util/c;->e:Ljava/lang/String;

    const-string v6, "drawable"

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_a4
    if-lez v3, :cond_b4

    iput v3, v2, Lcom/oplus/uxicon/ui/util/c$a;->b:I

    const-string p1, "getDrawableIconForPackage getDrawable id:"

    invoke-static {p1, v3, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    invoke-virtual {p0, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_b4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_c7

    :cond_c3
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_c7
    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->l:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p0, :cond_db

    const-string p1, "getDrawableIconForPackage getDrawable id is 0, try mGenerateCache get OK!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_db
    const-string p0, "getDrawableIconForPackage getDrawable id is 0, try mGenerateCache get null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public a(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p2  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    :cond_c
    if-nez p1, :cond_44

    :cond_e
    const-string v0, "generateIconPackDrawable has null:"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_2a

    move p0, v1

    goto :goto_2b

    :cond_2a
    move p0, v2

    :goto_2b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "  CN:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    move v1, v2

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusIconPackUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_44
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_57

    :cond_53
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_57
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_66
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_80

    const v0, 0x3f7851ec  # 0.97f

    iput v0, p0, Lcom/oplus/uxicon/ui/util/c;->b:F

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    const/16 v3, 0xc8

    invoke-virtual {p0, p2, v2, v3}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v3, v0

    goto :goto_81

    :cond_80
    move-object v3, p2

    :goto_81
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_8c

    move-object v5, v0

    goto :goto_9c

    :cond_8c
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    iget v1, p0, Lcom/oplus/uxicon/ui/util/c;->a:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, p2

    :goto_9c
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a6

    move-object v6, v0

    goto :goto_b6

    :cond_a6
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->h:Ljava/util/List;

    iget v1, p0, Lcom/oplus/uxicon/ui/util/c;->a:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v6, p2

    :goto_b6
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c0

    move-object v7, v0

    goto :goto_d0

    :cond_c0
    iget-object p2, p0, Lcom/oplus/uxicon/ui/util/c;->i:Ljava/util/List;

    iget v0, p0, Lcom/oplus/uxicon/ui/util/c;->a:I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, p2

    :goto_d0
    invoke-virtual {p0, p1, v3}, Lcom/oplus/uxicon/ui/util/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result p2

    const-string v0, "iconback"

    invoke-virtual {p0, v0, v5}, Lcom/oplus/uxicon/ui/util/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result v0

    const-string v1, "iconupon"

    invoke-virtual {p0, v1, v7}, Lcom/oplus/uxicon/ui/util/c;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/uxicon/ui/util/c;->a(FF)F

    move-result v9

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    iget v0, p0, Lcom/oplus/uxicon/ui/util/c;->b:F

    mul-float v8, p2, v0

    const/16 v10, 0xc8

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;FFI)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->l:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/oplus/uxicon/ui/util/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lcom/oplus/uxicon/ui/util/c;->a(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method public final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/uxicon/ui/util/c$a;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    goto/16 :goto_ae

    :cond_a
    invoke-virtual {p0, p1}, Lcom/oplus/uxicon/ui/util/c;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_ae

    :cond_12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_ae

    :cond_20
    const/4 v0, 0x0

    const-string v1, "component"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "drawable"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ae

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto/16 :goto_ae

    :cond_3b
    const-string v3, "ComponentInfo{"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_ae

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_ae

    :cond_5a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7d

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_7d
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_81
    if-eqz v3, :cond_ae

    new-instance v1, Lcom/oplus/uxicon/ui/util/c$a;

    invoke-direct {v1}, Lcom/oplus/uxicon/ui/util/c$a;-><init>()V

    iput-object v0, v1, Lcom/oplus/uxicon/ui/util/c$a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9b

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9b
    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ae
    :goto_ae
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v2, :cond_4

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "iconmask"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "iconback"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "iconupon"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "scale"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "adaptive_path"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    :goto_2c
    return p0
.end method

.method public final declared-synchronized a(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/uxicon/ui/util/c;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c4

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit p0

    return v2

    :cond_e
    :try_start_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_c2

    const-string v1, "iconback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uxicon/ui/util/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseComposedIcon mIconBack size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusIconPackUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0

    :cond_40
    const-string v1, "iconmask"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->h:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uxicon/ui/util/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto/16 :goto_c0

    :cond_4f
    const-string v1, "iconupon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->i:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/oplus/uxicon/ui/util/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    goto :goto_c0

    :cond_5d
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const/4 v0, 0x0

    const-string v1, "factor"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_78

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ne v1, v3, :cond_78

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_78
    if-eqz v0, :cond_80

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/util/c;->b:F

    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseComposedIcon factor: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusIconPackUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_97
    const-string v1, "adaptive_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    const-string p1, "OplusIconPackUtil"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseComposedIcon adaptivePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/c;->d:Ljava/lang/String;

    if-nez v1, :cond_b6

    move v2, v3

    :cond_b6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_e .. :try_end_c0} :catchall_c4

    :cond_c0
    :goto_c0
    monitor-exit p0

    return v3

    :cond_c2
    monitor-exit p0

    return v2

    :catchall_c4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const-string p0, "drawable"

    invoke-virtual {p1, p3, p0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x0

    if-lez p0, :cond_e

    invoke-virtual {p1, p0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_e
    return-object p2
.end method

.method public b()V
    .registers 13

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/util/c;->f:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/util/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/util/c;->j:Ljava/util/Map;

    const-string v3, "appfilter"

    const-string v4, "xml"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_34

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    goto :goto_50

    :cond_34
    :try_start_34
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v5, "appfilter.xml"

    invoke-virtual {v3, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_4c

    :try_start_3e
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4b} :catch_4d

    goto :goto_4d

    :catch_4c
    move-object v3, v4

    :catch_4d
    :goto_4d
    move-object v11, v4

    move-object v4, v3

    move-object v3, v11

    :goto_50
    const-string v5, "OplusIconPackUtil"

    if-eqz v3, :cond_bb

    :try_start_54
    invoke-virtual {p0, v3, v2}, Lcom/oplus/uxicon/ui/util/c;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_57} :catch_82
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_61
    .catchall {:try_start_54 .. :try_end_57} :catchall_5f

    instance-of p0, v3, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_5c

    goto :goto_9f

    :cond_5c
    if-eqz v4, :cond_bb

    goto :goto_a7

    :catchall_5f
    move-exception p0

    goto :goto_ab

    :catch_61
    move-exception p0

    :try_start_62
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIconResMapFromXml-->IOException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_5f

    instance-of p0, v3, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_7f

    goto :goto_9f

    :cond_7f
    if-eqz v4, :cond_bb

    goto :goto_a7

    :catch_82
    move-exception p0

    :try_start_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIconResMapFromXml-->XmlPullParserException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_83 .. :try_end_9b} :catchall_5f

    instance-of p0, v3, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_a5

    :goto_9f
    check-cast v3, Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_bb

    :cond_a5
    if-eqz v4, :cond_bb

    :goto_a7
    :try_start_a7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_bb

    goto :goto_bb

    :goto_ab
    instance-of v0, v3, Landroid/content/res/XmlResourceParser;

    if-nez v0, :cond_b5

    if-eqz v4, :cond_ba

    :try_start_b1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_ba

    goto :goto_ba

    :cond_b5
    check-cast v3, Landroid/content/res/XmlResourceParser;

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :catch_ba
    :cond_ba
    :goto_ba
    throw p0

    :catch_bb
    :cond_bb
    :goto_bb
    const-string p0, "theme_iconpack"

    const-string v3, "array"

    invoke-virtual {v0, p0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_cb

    const-string p0, "icon_pack"

    invoke-virtual {v0, p0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    :cond_cb
    if-eqz p0, :cond_170

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v3, v1

    :goto_d4
    if-ge v3, v0, :cond_15b

    aget-object v4, p0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e0

    goto/16 :goto_157

    :cond_e0
    const-string v6, "_"

    const-string v7, "."

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/oplus/uxicon/ui/util/c$a;

    invoke-direct {v8}, Lcom/oplus/uxicon/ui/util/c$a;-><init>()V

    iput-object v4, v8, Lcom/oplus/uxicon/ui/util/c$a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_100

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_157

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_10f

    goto :goto_157

    :cond_10f
    invoke-virtual {v6, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11a

    goto :goto_157

    :cond_11a
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_127

    goto :goto_157

    :cond_127
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v7, v6}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v8, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/oplus/uxicon/ui/util/c$a;

    invoke-direct {v6}, Lcom/oplus/uxicon/ui/util/c$a;-><init>()V

    iput-object v4, v6, Lcom/oplus/uxicon/ui/util/c$a;->a:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_157

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_157
    :goto_157
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d4

    :cond_15b
    const-string p0, "getIconResMapFromXml cache size: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    :cond_170
    const-string p0, "getIconResMapFromXml array id is 0"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_175
    return-void
.end method
