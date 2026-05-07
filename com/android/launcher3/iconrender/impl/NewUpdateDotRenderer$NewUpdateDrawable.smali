.class Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/span/ImagePrefixSpan$IMargin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewUpdateDrawable"
.end annotation


# static fields
.field private static final NEW_UPDATE_COLOR_GREEN:I = -0xd52e7f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mMargin:Landroid/graphics/RectF;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mMargin:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07094f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mRadius:I

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mMargin:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070951

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mMargin:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070952

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070953

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mWidth:I

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070950

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mHeight:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mPaint:Landroid/graphics/Paint;

    const p1, -0xd52e7f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mRadius:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mWidth:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mMargin:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getMargin()Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mMargin:Landroid/graphics/RectF;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/NewUpdateDotRenderer$NewUpdateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
