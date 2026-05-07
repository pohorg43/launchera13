.class public final Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUICutoutDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COUICollapseTextHelper"
.end annotation


# instance fields
.field public A:[I

.field public B:Z

.field public C:Landroid/view/animation/Interpolator;

.field public D:Landroid/view/animation/Interpolator;

.field public final a:Landroid/view/View;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/text/TextPaint;

.field public final f:Landroid/text/TextPaint;

.field public g:Z

.field public h:F

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:Ljava/lang/CharSequence;

.field public v:Ljava/lang/CharSequence;

.field public w:Z

.field public x:Landroid/graphics/Bitmap;

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j:I

    const/high16 v0, 0x41f00000  # 30.0f

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d:Landroid/graphics/RectF;

    return-void
.end method

.method public static i(FFFLandroid/view/animation/Interpolator;)F
    .registers 4

    if-eqz p3, :cond_6

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_6
    invoke-static {p1, p0, p2, p0}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method public static l(Landroid/graphics/Rect;IIII)Z
    .registers 6

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_12

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_12

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method


# virtual methods
.method public a()F
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method public final b(F)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->s:F

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->C:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t:F

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->D:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_cc

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->A:[I

    if-eqz v2, :cond_81

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_85

    :cond_81
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    :goto_85
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->g()I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, p1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v5, v4

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v6, v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p1

    add-float/2addr v7, v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    float-to-int p1, v5

    float-to-int v1, v6

    float-to-int v3, v7

    float-to-int v2, v2

    invoke-static {p1, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_d5

    :cond_cc
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_d5
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final c(F)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f  # 0.001f

    cmpg-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v2, :cond_26

    move v2, v4

    goto :goto_27

    :cond_26
    move v2, v5

    :goto_27
    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v2, :cond_30

    iget p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    iput v6, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->y:F

    goto :goto_5d

    :cond_30
    iget v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    sub-float v7, p1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v3, v7, v3

    if-gez v3, :cond_3e

    move v3, v4

    goto :goto_3f

    :cond_3e
    move v3, v5

    :goto_3f
    if-eqz v3, :cond_44

    iput v6, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->y:F

    goto :goto_49

    :cond_44
    iget v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    div-float/2addr p1, v3

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->y:F

    :goto_49
    iget p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    iget v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    div-float/2addr p1, v3

    mul-float v3, v1, p1

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5b

    div-float/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_5c

    :cond_5b
    move v0, v1

    :goto_5c
    move p1, v2

    :goto_5d
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_74

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->z:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_6e

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->B:Z

    if-nez v1, :cond_6e

    move v1, v5

    goto :goto_6f

    :cond_6e
    move v1, v4

    :goto_6f
    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->z:F

    iput-boolean v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->B:Z

    goto :goto_75

    :cond_74
    move v1, v5

    :goto_75
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    if-eqz p1, :cond_7b

    if-eqz v1, :cond_a4

    :cond_7b
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->z:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->y:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_8c

    move v1, v4

    goto :goto_8d

    :cond_8c
    move v1, v5

    :goto_8d
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, v1, v0, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a4

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    :cond_a4
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_ad

    goto :goto_ae

    :cond_ad
    move v4, v5

    :goto_ae
    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w:Z

    return-void
.end method

.method public d(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    if-eqz v1, :cond_33

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->g:Z

    if-eqz v1, :cond_33

    iget v6, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->s:F

    iget v7, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->t:F

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->y:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_25

    invoke-virtual {p1, v1, v1, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_25
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_3b

    :cond_33
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    const-string v1, " "

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_3b
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public e(Landroid/graphics/RectF;)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    if-nez v1, :cond_13

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    goto :goto_1b

    :cond_13
    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a()F

    move-result v2

    sub-float/2addr v0, v2

    :goto_1b
    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iput v3, p1, Landroid/graphics/RectF;->top:F

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a()F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_2f

    :cond_2c
    iget v0, v2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    :goto_2f
    iput v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f()F

    move-result p0

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public f()F
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const v0, 0x3fa66666  # 1.3f

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    mul-float/2addr p0, v0

    return p0

    :cond_23
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public g()I
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->A:[I

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_c
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public h()F
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "my"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    const p0, 0x3fa66666  # 1.3f

    mul-float/2addr v0, p0

    :cond_28
    return v0
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->g:Z

    return-void
.end method

.method public k()V
    .registers 12

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_151

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_151

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->z:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l:F

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c(F)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_29

    :cond_28
    move v1, v2

    :goto_29
    iget v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j:I

    iget-boolean v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w:Z

    invoke-static {v4, v5}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000  # 2.0f

    if-eq v5, v7, :cond_65

    if-eq v5, v6, :cond_5d

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    sub-float/2addr v5, v9

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    iput v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    goto :goto_96

    :cond_5d
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    goto :goto_96

    :cond_65
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v9, "my"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    const v10, 0x3fa66666  # 1.3f

    mul-float/2addr v9, v10

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    goto :goto_96

    :cond_88
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->p:F

    :goto_96
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_b1

    if-eq v4, v9, :cond_a8

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r:F

    goto :goto_bc

    :cond_a8
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r:F

    goto :goto_bc

    :cond_b1
    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->r:F

    :goto_bc
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c(F)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    if-eqz v1, :cond_cf

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    :cond_cf
    iget v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i:I

    iget-boolean v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->w:Z

    invoke-static {v1, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v3, v1, 0x70

    if-eq v3, v7, :cond_10b

    if-eq v3, v6, :cond_103

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v8

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o:F

    goto :goto_119

    :cond_103
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o:F

    goto :goto_119

    :cond_10b
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->o:F

    :goto_119
    and-int/2addr v1, v5

    if-eq v1, v10, :cond_12f

    if-eq v1, v9, :cond_126

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q:F

    goto :goto_13a

    :cond_126
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q:F

    goto :goto_13a

    :cond_12f
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->q:F

    :goto_13a
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_144

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x:Landroid/graphics/Bitmap;

    :cond_144
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c(F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b(F)V

    :cond_151
    return-void
.end method

.method public m(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->B:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCollapsedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapseTextHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public n(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_9
    return-void
.end method

.method public o(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_9
    return-void
.end method

.method public p(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->l(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->B:Z

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->j()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setExpandedBounds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapseTextHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public q(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_9
    return-void
.end method

.method public r(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->i:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_9
    return-void
.end method

.method public s(F)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k:F

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_b
    return-void
.end method

.method public t(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000  # 1.0f

    if-gez v1, :cond_9

    move p1, v0

    goto :goto_e

    :cond_9
    cmpl-float v0, p1, v2

    if-lez v0, :cond_e

    move p1, v2

    :cond_e
    :goto_e
    iget v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_19

    iput p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->h:F

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->b(F)V

    :cond_19
    return-void
.end method

.method public final u(F)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->c(F)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final v([I)Z
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->A:[I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->n:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-nez p1, :cond_18

    :cond_e
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->m:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1a

    :cond_18
    move p1, v0

    goto :goto_1b

    :cond_1a
    move p1, v1

    :goto_1b
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    return v0

    :cond_21
    return v1
.end method

.method public w(Ljava/lang/CharSequence;)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_a
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->u:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->v:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->x:Landroid/graphics/Bitmap;

    :cond_18
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    :cond_1b
    return-void
.end method

.method public x()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->e:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->a(Landroid/graphics/Paint;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->f:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->a(Landroid/graphics/Paint;Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->k()V

    return-void
.end method
