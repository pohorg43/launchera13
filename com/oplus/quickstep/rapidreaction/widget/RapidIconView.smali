.class public final Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView$Companion;

.field private static final TAG:Ljava/lang/String; = "RapidIconView"


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconColor:I

.field private iconMatrix:Landroid/graphics/Matrix;

.field private iconRectF:Landroid/graphics/RectF;

.field private iconScale:F

.field private imageRectF:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->Companion:Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconScale:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    const v0, -0x4c000001

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconScale:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    const v0, -0x4c000001

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_14

    :cond_12
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_14
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const-string p0, "bitmap"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconScale:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconColor(Z)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060698

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v2, 0x7f0706fa

    const/4 v3, 0x0

    if-eqz p2, :cond_69

    sget-object v4, Lcom/android/launcher3/R$styleable;->RapidIconView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez p2, :cond_65

    goto :goto_76

    :cond_65
    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_76

    :cond_69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    invoke-virtual {p0, v3, v3, p1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_76
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getIconColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconScale:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->imageRectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIconColor(I)V
    .registers 5

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIconColor(Z)V
    .registers 5

    if-eqz p1, :cond_6

    const p1, -0x4c000001

    goto :goto_9

    :cond_6
    const p1, -0x26000001

    :goto_9
    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const-string v0, "drawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_e

    goto :goto_1b

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->setIconSize(FF)V

    :goto_1b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setIconSize(FF)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconRectF:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final updateIconScale(F)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidIconView;->iconScale:F

    return-void
.end method
