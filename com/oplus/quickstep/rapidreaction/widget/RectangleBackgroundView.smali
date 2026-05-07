.class public final Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView$Companion;

.field private static final STROKE_INSERT_SIZE:F = 2.0f

.field private static final STROKE_WIDTH:F = 4.0f

.field private static final TAG:Ljava/lang/String; = "RapidRectangleBackgroundView"


# instance fields
.field private basicAndLeftPaint:Landroid/graphics/Paint;

.field private basicAndLeftPath:Landroid/graphics/Path;

.field private basicAndLeftRect:Landroid/graphics/RectF;

.field private basicAndLeftStrokePaint:Landroid/graphics/Paint;

.field private basicAndLeftStrokePath:Landroid/graphics/Path;

.field private basicAndLeftStrokeRect:Landroid/graphics/RectF;

.field private basicBgWidth:F

.field private final bgHeight:F

.field private final bgLandscapeTopOffset:F

.field private final bgPortraitTopOffset:F

.field private final bgRectangleCornerRadius:F

.field private currentBasicAndLeftAlpha:F

.field private currentBasicAndLeftColor:I

.field private currentBasicAndLeftStrokeColor:I

.field private currentRightAlpha:F

.field private currentRightColor:I

.field private currentRightStrokeColor:I

.field private currentRotation:I

.field private final doubleBgIntervalSize:F

.field private final doubleBgPortraitHorizontalOffset:F

.field private final doubleBgSelectedWidth:F

.field private final doubleBgUnselectedWidth:F

.field private final doubleBgWidth:F

.field private isRtl:Z

.field private panelType:I

.field private positionOffset:F

.field private rightBgWidth:F

.field private rightPaint:Landroid/graphics/Paint;

.field private rightPath:Landroid/graphics/Path;

.field private rightRect:Landroid/graphics/RectF;

.field private rightStrokePaint:Landroid/graphics/Paint;

.field private rightStrokePath:Landroid/graphics/Path;

.field private rightStrokeRect:Landroid/graphics/RectF;

.field private scaleFraction:F

.field private selectedProgress:F

.field private selectedType:I

.field private final singleBgPortraitHorizontalOffset:F

.field private final singleBgSelectedWidth:F

.field private final singleBgWidth:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->Companion:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, 0x7f070a93

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgWidth:F

    const v0, 0x7f070a88

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    const v0, 0x7f070a89

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    const v0, 0x7f070a84

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    const v0, 0x7f070a8e

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgPortraitTopOffset:F

    const v0, 0x7f070a8b

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    const v0, 0x7f070a91

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgPortraitHorizontalOffset:F

    const v0, 0x7f070a85

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgPortraitHorizontalOffset:F

    const v0, 0x7f070a8f

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    const v0, 0x7f070a92

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgSelectedWidth:F

    const v0, 0x7f070a86

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgSelectedWidth:F

    const v0, 0x7f070a87

    invoke-static {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgUnselectedWidth:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    const v0, 0x33ffffff

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftColor:I

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightColor:I

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftStrokeColor:I

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightStrokeColor:I

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftAlpha:F

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightAlpha:F

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060698

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000  # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateConfiguration()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f070a93

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgWidth:F

    const p2, 0x7f070a88

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    const p2, 0x7f070a89

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    const p2, 0x7f070a84

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    const p2, 0x7f070a8e

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgPortraitTopOffset:F

    const p2, 0x7f070a8b

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    const p2, 0x7f070a91

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgPortraitHorizontalOffset:F

    const p2, 0x7f070a85

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgPortraitHorizontalOffset:F

    const p2, 0x7f070a8f

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    const p2, 0x7f070a92

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgSelectedWidth:F

    const p2, 0x7f070a86

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgSelectedWidth:F

    const p2, 0x7f070a87

    invoke-static {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/a;->a(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;I)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgUnselectedWidth:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    const p2, 0x33ffffff

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftColor:I

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightColor:I

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftStrokeColor:I

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightStrokeColor:I

    const/high16 p2, 0x3f800000  # 1.0f

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftAlpha:F

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightAlpha:F

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060698

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000  # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateConfiguration()V

    return-void
.end method

.method private static synthetic getPanelType$annotations()V
    .registers 0

    return-void
.end method

.method private static synthetic getSelectedType$annotations()V
    .registers 0
    .annotation runtime Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SelectedType;
    .end annotation

    return-void
.end method

.method private final insertWithCenter(Landroid/graphics/RectF;FF)V
    .registers 4

    iget p0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->left:F

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p3

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/RectF;->right:F

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p0, p3

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static synthetic reset$default(Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;IILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    :cond_6
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->reset(I)V

    return-void
.end method

.method private final scaleWithCenter(Landroid/graphics/RectF;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float v4, v0, v3

    sub-float/2addr p0, v4

    iput p0, p1, Landroid/graphics/RectF;->left:F

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private final updateConfiguration()V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_14

    :cond_9
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    goto :goto_14

    :cond_10
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgWidth:F

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    :goto_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final updatePositionOffset()V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->selectedType:I

    if-eqz v0, :cond_2d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_30

    :cond_b
    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    if-nez v0, :cond_14

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    goto :goto_18

    :cond_14
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    :goto_18
    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    goto :goto_30

    :cond_1c
    iget-boolean v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    goto :goto_29

    :cond_25
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    :goto_29
    sub-float/2addr v0, v1

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    goto :goto_30

    :cond_2d
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    :goto_30
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public final getBackgroundSelectedProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->selectedProgress:F

    return p0
.end method

.method public final getBackgroundSelectedWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgSelectedWidth:F

    return p0
.end method

.method public final getBackgroundUnselectedWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgUnselectedWidth:F

    return p0
.end method

.method public final getBasicAndLeftBackgroundAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftAlpha:F

    return p0
.end method

.method public final getBasicAndLeftBackgroundColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftColor:I

    return p0
.end method

.method public final getBasicAndLeftStrokeColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftStrokeColor:I

    return p0
.end method

.method public final getBasicBgWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    return p0
.end method

.method public final getDoubleBackgroundBaseWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    return p0
.end method

.method public final getRightBackgroundAlpha()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightAlpha:F

    return p0
.end method

.method public final getRightBackgroundColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightColor:I

    return p0
.end method

.method public final getRightBgWidth()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    return p0
.end method

.method public final getRightStrokeColor()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightStrokeColor:I

    return p0
.end method

.method public final getSelectDisplacementDistance()F
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgSelectedWidth:F

    iget p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRotation:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x40000000  # 2.0f

    if-eqz v2, :cond_1af

    if-eq v2, v3, :cond_eb

    if-eq v2, v4, :cond_1af

    const/4 v0, 0x3

    if-eq v2, v0, :cond_35

    goto/16 :goto_263

    :cond_35
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    invoke-virtual {v0, v5, v5, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    if-eq v0, v3, :cond_b9

    if-eq v0, v4, :cond_46

    goto/16 :goto_263

    :cond_46
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    add-float/2addr v3, v1

    int-to-float v7, v4

    div-float/2addr v3, v7

    iget v8, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    sub-float/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v0, v2, v3}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v2, v6

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v2, v3}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v7

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    sub-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    goto/16 :goto_263

    :cond_b9
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    sub-float/2addr v1, v3

    int-to-float v3, v4

    div-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    goto/16 :goto_263

    :cond_eb
    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    iget v8, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    invoke-virtual {v2, v5, v5, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    if-eq v2, v3, :cond_179

    if-eq v2, v4, :cond_fc

    goto/16 :goto_263

    :cond_fc
    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    sub-float v3, v0, v3

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    sub-float/2addr v3, v7

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    sub-float v7, v1, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    iget v9, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    add-float/2addr v7, v9

    invoke-virtual {v2, v3, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v2, v3, v7}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v3, v6

    iget-object v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v2, v3, v7}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    invoke-virtual {v2, v5, v5, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    add-float/2addr v1, v3

    div-float/2addr v1, v8

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    add-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    goto/16 :goto_263

    :cond_179
    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgLandscapeTopOffset:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    sub-float/2addr v1, v3

    int-to-float v3, v4

    div-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    goto/16 :goto_263

    :cond_1af
    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    invoke-virtual {v1, v5, v5, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    if-eq v1, v3, :cond_233

    if-eq v1, v4, :cond_1c0

    goto/16 :goto_263

    :cond_1c0
    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    sub-float v2, v0, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    sub-float/2addr v2, v7

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    add-float/2addr v2, v7

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgPortraitTopOffset:F

    invoke-virtual {v1, v2, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v1, v2, v7}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v2, v6

    iget-object v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v1, v2, v7}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    iget v7, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgHeight:F

    invoke-virtual {v1, v5, v5, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgIntervalSize:F

    add-float/2addr v0, v2

    div-float/2addr v0, v3

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgPortraitTopOffset:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    goto :goto_263

    :cond_233
    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    sub-float/2addr v0, v2

    int-to-float v2, v4

    div-float/2addr v0, v2

    iget v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgPortraitTopOffset:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleWithCenter(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v6, v6}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->insertWithCenter(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokeRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->bgRectangleCornerRadius:F

    add-float/2addr v1, v6

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    invoke-static {v0, v1, v2}, Lcom/oplus/quickstep/utils/SmoothRoundRectUtil;->getPath(Landroid/graphics/RectF;FLandroid/graphics/Path;)Landroid/graphics/Path;

    :goto_263
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    if-ne v0, v4, :cond_283

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_283
    return-void
.end method

.method public final onRotationChange(I)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRotation:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRotation:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_9
    return-void
.end method

.method public final reset(I)V
    .registers 5

    const-string v0, "reset: type="

    const-string v1, "RapidReaction"

    const-string v2, "RapidRectangleBackgroundView"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->positionOffset:F

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateSingleBackgroundSelectedProgress(F)V

    goto :goto_1d

    :cond_17
    iget p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->doubleBgWidth:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    :goto_1d
    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->resetBackgroundAlpha()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->resetBackgroundColor()V

    return-void
.end method

.method public final resetBackgroundAlpha()V
    .registers 2

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setBasicAndLeftBackgroundAlpha(F)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setRightBackgroundAlpha(F)V

    return-void
.end method

.method public final resetBackgroundColor()V
    .registers 2

    const v0, 0x33ffffff

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setBasicAndLeftBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setRightBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setBasicAndLeftStrokeColor(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->setRightStrokeColor(I)V

    return-void
.end method

.method public final setBasicAndLeftBackgroundAlpha(F)V
    .registers 4

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftAlpha:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftStrokeColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBasicAndLeftBackgroundColor(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBasicAndLeftStrokeColor(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentBasicAndLeftStrokeColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicAndLeftStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRightBackgroundAlpha(F)V
    .registers 4

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightAlpha:F

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightStrokeColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRightBackgroundColor(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setRightStrokeColor(I)V
    .registers 3

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->currentRightStrokeColor:I

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    :goto_12
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->scaleFraction:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_12
    :goto_12
    return-void
.end method

.method public final updateDoubleBackgroundSelectedProgress(FFFFFZ)V
    .registers 7

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->selectedProgress:F

    if-eqz p6, :cond_11

    invoke-static {p1, p2, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    invoke-static {p1, p3, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    goto :goto_1d

    :cond_11
    invoke-static {p1, p2, p4}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    invoke-static {p1, p3, p5}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->rightBgWidth:F

    :goto_1d
    iget-boolean p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->isRtl:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_27

    if-nez p6, :cond_26

    move p6, p2

    goto :goto_27

    :cond_26
    const/4 p6, 0x0

    :cond_27
    :goto_27
    if-eqz p6, :cond_2a

    const/4 p2, 0x2

    :cond_2a
    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateSelectedType(I)V

    return-void
.end method

.method public final updatePanelType(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->reset(I)V

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    if-ne v0, p1, :cond_8

    return-void

    :cond_8
    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->panelType:I

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updateConfiguration()V

    return-void
.end method

.method public final updateSelectedType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->selectedType:I

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->updatePositionOffset()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateSingleBackgroundSelectedProgress(F)V
    .registers 4

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->selectedProgress:F

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgWidth:F

    iget v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->singleBgSelectedWidth:F

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;->basicBgWidth:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
