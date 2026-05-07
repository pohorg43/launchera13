.class public final Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView$Companion;

.field private static final TAG:Ljava/lang/String; = "RapidBackgroundView"


# instance fields
.field private final bgLandscapeCenterOffset:F

.field private final bgLandscapeTopOffset:F

.field private final bgPortraitCenterOffset:F

.field private final bgPortraitTopOffset:F

.field private final bgWidth:F

.field private currentColor:I

.field private currentRotation:I

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/RectF;

.field private scaleFraction:F

.field private translation:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->Companion:Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a8c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a8e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitTopOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a8b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeTopOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a8d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitCenterOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070a8a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeCenterOffset:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    const p1, 0x33ffffff

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentColor:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->scaleFraction:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000  # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060698

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitTopOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeTopOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitCenterOffset:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070a8a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeCenterOffset:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    const p1, 0x33ffffff

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentColor:I

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->scaleFraction:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000  # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060698

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getBgColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentColor:I

    return p0
.end method

.method public final getDisplacement()F
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentRotation:I

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitTopOffset:F

    goto :goto_1b

    :cond_12
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeTopOffset:F

    goto :goto_1b

    :cond_17
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitTopOffset:F

    :goto_1b
    sub-float/2addr v0, p0

    return v0
.end method

.method public final getScaleFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->scaleFraction:F

    return p0
.end method

.method public final getTranslation()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->translation:F

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgWidth:F

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->scaleFraction:F

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->scale(F)V

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentRotation:I

    const/4 v3, 0x2

    if-eqz v2, :cond_5a

    const/4 v4, 0x1

    if-eq v2, v4, :cond_43

    if-eq v2, v3, :cond_5a

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2c

    goto :goto_70

    :cond_2c
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeCenterOffset:F

    add-float/2addr v2, v4

    neg-float v2, v2

    int-to-float v4, v3

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_70

    :cond_43
    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgLandscapeCenterOffset:F

    add-float/2addr v0, v4

    int-to-float v4, v3

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_70

    :cond_5a
    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    int-to-float v2, v3

    div-float/2addr v0, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->bgPortraitCenterOffset:F

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v2

    neg-float v2, v4

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_70
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onRotationChange(I)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentRotation:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentRotation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final setBgColor(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->currentColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setScaleFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->scaleFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setTranslation(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RapidBackgroundView;->translation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
