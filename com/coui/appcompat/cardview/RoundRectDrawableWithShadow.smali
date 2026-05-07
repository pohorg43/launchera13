.class Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field public static final q:D

.field public static r:Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field public final a:I

.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/RectF;

.field public f:F

.field public g:Landroid/graphics/Path;

.field public h:F

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Z

.field public final m:I

.field public final n:I

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-wide v0, 0x4046800000000000L  # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->q:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .registers 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->o:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->p:Z

    sget v1, Lcom/support/appcompat/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->m:I

    sget v1, Lcom/support/appcompat/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->n:I

    sget v1, Lcom/support/appcompat/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p3, p1

    float-to-int p1, p3

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p4, p5}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d(FF)V

    return-void
.end method

.method public static a(FFZ)F
    .registers 9

    if-eqz p2, :cond_c

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sget-wide v4, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_c
    return p0
.end method

.method public static b(FFZ)F
    .registers 9

    const/high16 v0, 0x3fc00000  # 1.5f

    if-eqz p2, :cond_10

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sget-wide v4, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double/2addr v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0

    :cond_10
    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final c(Landroid/content/res/ColorStateList;)V
    .registers 4

    if-nez p1, :cond_7

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final d(FF)V
    .registers 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const-string v2, ". Must be >= 0"

    if-ltz v1, :cond_68

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_4e

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    add-int/lit8 p1, p1, -0x1

    :cond_16
    int-to-float p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    rem-int/lit8 v1, p2, 0x2

    if-ne v1, v2, :cond_1f

    add-int/lit8 p2, p2, -0x1

    :cond_1f
    int-to-float p2, p2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_2b

    iget-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->p:Z

    if-nez p1, :cond_2a

    iput-boolean v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->p:Z

    :cond_2a
    move p1, p2

    :cond_2b
    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_38

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_38

    return-void

    :cond_38
    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    iput p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    const/high16 p2, 0x3fc00000  # 1.5f

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    iput-boolean v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid max shadow size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid shadow size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-boolean v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    const/high16 v8, 0x42b40000  # 90.0f

    const/high16 v9, 0x43870000  # 270.0f

    const/high16 v10, 0x43340000  # 180.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_e9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    const/high16 v5, 0x3fc00000  # 1.5f

    mul-float/2addr v5, v4

    iget-object v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v4

    iget v13, v1, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v13, v5

    iget v14, v1, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v14, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    invoke-virtual {v6, v12, v13, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v1, Landroid/graphics/RectF;

    iget v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v5, v4

    invoke-direct {v1, v5, v5, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    neg-float v5, v5

    invoke-virtual {v4, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    if-nez v5, :cond_4e

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    goto :goto_51

    :cond_4e
    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    :goto_51
    iget-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    neg-float v6, v6

    invoke-virtual {v5, v6, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v10, v8, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    const/high16 v5, -0x3d4c0000  # -90.0f

    invoke-virtual {v4, v1, v9, v5, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    add-float/2addr v4, v1

    div-float/2addr v1, v4

    iget-object v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/RadialGradient;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget v12, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    add-float v15, v6, v12

    const/4 v6, 0x3

    new-array v12, v6, [I

    iget v8, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->m:I

    aput v8, v12, v3

    aput v8, v12, v2

    iget v8, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->n:I

    const/16 v19, 0x2

    aput v8, v12, v19

    new-array v8, v6, [F

    aput v11, v8, v3

    aput v1, v8, v2

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, v8, v19

    sget-object v18, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v12

    move-object v12, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    invoke-direct/range {v12 .. v18}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    const/16 v21, 0x0

    iget v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v5, v5

    iget v8, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    add-float v22, v5, v8

    const/16 v23, 0x0

    sub-float v24, v5, v8

    new-array v5, v6, [I

    iget v8, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->m:I

    aput v8, v5, v3

    aput v8, v5, v2

    iget v8, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->n:I

    aput v8, v5, v19

    new-array v6, v6, [F

    fill-array-data v6, :array_208

    sget-object v27, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v20, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    invoke-direct/range {v20 .. v27}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iput-boolean v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    :cond_e9
    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    const/high16 v8, 0x40000000  # 2.0f

    div-float/2addr v1, v8

    invoke-virtual {v7, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v4, v1

    iget v5, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    sub-float v12, v4, v5

    iget v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    iget v4, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    div-float/2addr v4, v8

    add-float v13, v4, v1

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float v14, v13, v8

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_110

    move v15, v2

    goto :goto_111

    :cond_110
    move v15, v3

    :goto_111
    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float/2addr v1, v14

    cmpl-float v1, v1, v11

    if-lez v1, :cond_11f

    move/from16 v16, v2

    goto :goto_121

    :cond_11f
    move/from16 v16, v3

    :goto_121
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_153

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v5, v1

    iget-object v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v12

    move v11, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_154

    :cond_153
    move v11, v6

    :goto_154
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v15, :cond_18a

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v1, v1

    iget v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->i:F

    add-float v5, v1, v3

    iget-object v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_18a
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_1bc

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v5, v1

    iget-object v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1bc
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v13

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v13

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000  # 90.0f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->g:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_1f0

    const/4 v2, 0x0

    iget-object v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    sub-float v4, v1, v14

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    neg-float v5, v1

    iget-object v6, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1f0
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v1, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->j:F

    neg-float v1, v1

    div-float/2addr v1, v8

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v1, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->r:Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v2, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->e:Landroid/graphics/RectF;

    iget v3, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget-object v0, v0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-interface {v1, v7, v2, v3, v0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void

    nop

    :array_208
    .array-data 4
        0x0
        0x3f000000  # 0.5f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    iget v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget-boolean v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->o:Z

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->h:F

    iget v2, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->f:F

    iget-boolean p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->o:Z

    invoke-static {v1, v2, p0}, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->a(FFZ)F

    move-result p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    return-void
.end method

.method public onStateChange([I)Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, p1, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->l:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->d:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/cardview/RoundRectDrawableWithShadow;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
