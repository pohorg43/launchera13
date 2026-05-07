.class public Lcom/android/launcher3/icons/OplusDotRenderer;
.super Lcom/android/launcher3/icons/DotRenderer;
.source ""


# static fields
.field private static final BADGE_NUMBER_TEXT_SIZE_PERCENT:F = 0.24f

.field private static final DEBUG:Z = false

.field private static final DOT_SIZE_PERCENT:F = 0.2308f

.field private static final FLOAT_1:F = 1.0f

.field private static final INT_5:I = 0x5

.field private static final INT_9:I = 0x9

.field private static final MIN_NUMBER_TEXT_SIZE_PERCENT:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "OplusDotRenderer"


# instance fields
.field private final mBadgeNumBgHeight:I

.field private final mBadgeNumBgWidth:I

.field private final mBadgeNumEndOffset:I

.field private mBadgeNumOffsetRight:I

.field private mBadgeNumOffsetTop:I

.field private mBadgeNumPadding:I

.field private mBadgeNumPaint:Landroid/text/TextPaint;

.field private final mBadgeNumTextColor:I

.field private final mBadgeNumTextSize:I

.field private final mBadgeNumTopOffset:I

.field private final mDotDrawableRect:Landroid/graphics/Rect;

.field private final mDotEndOffset:I

.field private final mDotSize:I

.field private final mDotTopOffset:I

.field private mEllipPaint:Landroid/graphics/Paint;

.field private mEllipsize:I

.field private final mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

.field private mNumFormat:Ljava/text/NumberFormat;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Path;IIFI)V
    .registers 11

    invoke-direct {p0, p6, p2, p6}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "iconSizePx="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", iconVisibleSizePx="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "OplusDotRenderer"

    invoke-static {p4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p4, p4

    const/high16 p5, 0x43200000  # 160.0f

    div-float/2addr p4, p5

    invoke-static {}, Lcom/android/launcher/theme/OplusUIEngine;->isDefaultTheme()Z

    move-result p5

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p5, :cond_53

    const/high16 p5, 0x3f400000  # 0.75f

    const/high16 v1, 0x3e800000  # 0.25f

    int-to-float v2, p6

    mul-float/2addr v2, v0

    div-float/2addr v2, p4

    const/high16 v3, 0x42200000  # 40.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x41800000  # 16.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    add-float/2addr v2, p5

    goto :goto_54

    :cond_53
    move v2, v0

    :goto_54
    const p5, 0x3e75c28f  # 0.24f

    int-to-float p3, p3

    mul-float/2addr p5, p3

    mul-float/2addr p5, v2

    float-to-int p5, p5

    iput p5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    const p5, 0x7f070166

    invoke-virtual {p2, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    iput p5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipsize:I

    div-int/lit8 p5, p5, 0x2

    int-to-float p5, p5

    iput p5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    const p5, 0x3e6c56d6  # 0.2308f

    mul-float/2addr p3, p5

    mul-float/2addr p3, v2

    float-to-int p3, p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    const p3, 0x7f070165

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTopOffset:I

    const p3, 0x7f070161

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumEndOffset:I

    const p3, 0x7f070162

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    int-to-float p5, p6

    mul-float/2addr p5, v0

    const/high16 p6, 0x42600000  # 56.0f

    mul-float/2addr p4, p6

    div-float/2addr p5, p4

    mul-float/2addr p5, p3

    float-to-int p3, p5

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    const p3, 0x7f070163

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    const p3, 0x7f070164

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    const p3, 0x7f060438

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-direct {p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object p4

    iput-object p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumFormat:Ljava/text/NumberFormat;

    const p4, 0x7f070577

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotTopOffset:I

    const p4, 0x7f070576

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    iput p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:I

    new-instance p4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    const p0, 0x7f070160

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const p0, 0x7f060400

    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p1, p3, p0}, Lcom/android/launcher3/dot/DotUtils;->saveBadgeColor(Landroid/content/Context;II)V

    return-void
.end method

.method private initBadgeNumTextPaint()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_b

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPadding:I

    iget-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_41

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    :cond_41
    iget-object p0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public changeDotBranchSearchSupport()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    iput v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .registers 10

    if-nez p2, :cond_a

    const-string p0, "OplusDotRenderer"

    const-string p1, "Invalid null argument(s) passed in call to draw."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-boolean v4, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2a

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:I

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_39

    :cond_2a
    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    sub-int/2addr v3, v4

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v4

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotEndOffset:I

    add-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_39
    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotTopOffset:I

    sub-int/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    invoke-virtual {v4, v5, v5, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotSize:I

    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    sget-object v4, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v4}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object p0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mDotDrawableRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    add-float/2addr v3, v1

    add-float/2addr v2, v0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget p0, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {p1, p0, p0}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4}, Lcom/android/common/util/CacheUtils;->getDotDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawNumber(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    if-eqz v4, :cond_1ca

    if-lez v2, :cond_1ca

    const-string v4, "OplusDotRenderer"

    if-nez v3, :cond_18

    const-string v0, "drawNumber, Invalid null argument(s) passed in call to draw."

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    const/16 v6, 0x3e7

    if-le v2, v6, :cond_26

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2a

    :cond_26
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    :goto_2a
    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    iget v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    iget v8, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPadding:I

    mul-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    int-to-float v9, v9

    cmpl-float v9, v5, v9

    if-lez v9, :cond_42

    mul-int/lit8 v8, v8, 0x2

    int-to-float v7, v8

    add-float/2addr v5, v7

    float-to-int v7, v5

    :cond_42
    div-int/lit8 v5, v7, 0x2

    div-int/lit8 v8, v6, 0x2

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v10, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int v10, v5

    neg-int v11, v8

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    iget-object v10, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v9, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v10

    iget-boolean v11, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    const-string v12, "case dotOffsetX is larger than dotOffsetY\n"

    if-nez v11, :cond_db

    iget v11, v9, Landroid/graphics/Rect;->right:I

    int-to-float v13, v11

    iget v14, v9, Landroid/graphics/Rect;->top:I

    int-to-float v15, v14

    move/from16 v16, v13

    iget v13, v10, Landroid/graphics/Rect;->right:I

    move/from16 v17, v6

    sub-int v6, v13, v11

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v1, v3, 0x2

    if-lt v6, v1, :cond_8e

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int v1, v14, v1

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_81

    goto :goto_8e

    :cond_81
    const/16 v1, 0x9

    if-le v2, v1, :cond_8b

    sub-int/2addr v7, v3

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v11, v7

    int-to-float v13, v11

    goto :goto_cd

    :cond_8b
    move/from16 v13, v16

    goto :goto_cd

    :cond_8e
    :goto_8e
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v13, v11

    sub-int/2addr v3, v13

    int-to-float v1, v3

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v6

    sub-int/2addr v3, v14

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_b7

    invoke-static {v4, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v9, Landroid/graphics/Rect;->right:I

    iget v3, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v1

    sub-int v6, v5, v6

    sub-int v6, v1, v6

    int-to-float v13, v6

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v1

    sub-int/2addr v6, v3

    int-to-float v1, v6

    add-float/2addr v15, v1

    goto :goto_cd

    :cond_b7
    const-string v1, "case dotOffsetY is larger than dotOffsetX\n"

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v9, Landroid/graphics/Rect;->top:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v3

    sub-int v6, v8, v6

    add-int/2addr v6, v1

    int-to-float v15, v6

    iget v6, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v1, v5, v1

    sub-int/2addr v6, v1

    int-to-float v13, v6

    :goto_cd
    iget v1, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    int-to-float v1, v1

    sub-float/2addr v13, v1

    iget v1, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    int-to-float v1, v1

    add-float/2addr v15, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v13, v15}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_146

    :cond_db
    move/from16 v17, v6

    iget v3, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v3

    iget v11, v9, Landroid/graphics/Rect;->top:I

    int-to-float v13, v11

    iget v14, v10, Landroid/graphics/Rect;->left:I

    sub-int v15, v3, v14

    if-lt v15, v5, :cond_fc

    iget v15, v10, Landroid/graphics/Rect;->top:I

    sub-int v15, v11, v15

    if-ge v15, v8, :cond_f0

    goto :goto_fc

    :cond_f0
    const/16 v9, 0x9

    if-le v2, v9, :cond_13b

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    const/4 v9, 0x2

    invoke-static {v7, v6, v9, v3}, Landroidx/appcompat/widget/a;->a(IIII)I

    move-result v3

    goto :goto_13a

    :cond_fc
    :goto_fc
    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v14

    sub-int/2addr v6, v3

    int-to-float v3, v6

    iget v6, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgHeight:I

    div-int/lit8 v6, v6, 0x2

    iget v7, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v7

    sub-int/2addr v6, v11

    int-to-float v6, v6

    cmpl-float v3, v3, v6

    if-lez v3, :cond_127

    invoke-static {v4, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v9, Landroid/graphics/Rect;->left:I

    iget v6, v10, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v6

    sub-int v7, v5, v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    iget v9, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumBgWidth:I

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v3, v6

    sub-int/2addr v9, v3

    int-to-float v3, v9

    add-float/2addr v13, v3

    move v6, v7

    goto :goto_13b

    :cond_127
    invoke-static {v4, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v9, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int v7, v3, v6

    sub-int v7, v8, v7

    add-int/2addr v7, v3

    int-to-float v13, v7

    iget v7, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v6

    sub-int v3, v5, v3

    add-int/2addr v3, v7

    :goto_13a
    int-to-float v6, v3

    :cond_13b
    :goto_13b
    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetRight:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumOffsetTop:I

    int-to-float v3, v3

    add-float/2addr v13, v3

    invoke-virtual {v1, v6, v13}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_146
    move-object/from16 v3, p3

    iget v6, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    sub-int/2addr v5, v5

    int-to-float v5, v5

    move/from16 v6, v17

    int-to-float v6, v6

    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-static {v6, v7}, Lcom/android/common/util/IconUtils;->getBaselineInVerticalCenter(FLandroid/graphics/Paint;)F

    move-result v6

    int-to-float v7, v8

    sub-float/2addr v6, v7

    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    iget v8, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mGradientNumBg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v8, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    iget v8, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAlpha(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current scale is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-static {v7, v3, v4}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_1bb

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipsize:I

    mul-int/lit8 v3, v2, 0x5

    int-to-float v3, v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    int-to-float v2, v2

    div-float/2addr v2, v4

    neg-float v3, v3

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumTextColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    iget-object v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    const/high16 v3, 0x40a00000  # 5.0f

    mul-float/2addr v3, v2

    iget-object v4, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mRadius:F

    const/high16 v3, 0x41100000  # 9.0f

    mul-float/2addr v3, v2

    iget-object v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mEllipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1c7

    :cond_1bb
    iget-object v3, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumFormat:Ljava/text/NumberFormat;

    int-to-long v7, v2

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1c7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1ca
    return-void
.end method

.method public initTextPaint()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mBadgeNumPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/android/launcher3/icons/OplusDotRenderer;->initBadgeNumTextPaint()V

    invoke-static {}, Lcom/android/common/util/CacheUtils;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/icons/OplusDotRenderer;->mNumFormat:Ljava/text/NumberFormat;

    return-void
.end method
