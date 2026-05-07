.class public Lcom/oplus/fancyicon/clock/ClockHandView;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ALPHA_BASE:I = 0xff

.field private static final HOUR_HAND_ALPHA_SCALE:F = 0.6f

.field private static final ICON_METERIAL_HANDLE_SCALE:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "ClockHandView"


# instance fields
.field private mCenterCircleRadius:F

.field private mCenterX:F

.field private mCenterY:F

.field private mHandEndLength:F

.field private mHeight:F

.field private mHourDegree:F

.field private mHourHandLength:F

.field private mHourHandPaint:Landroid/graphics/Paint;

.field private mHourHandWidth:F

.field private mMinuteDegree:F

.field private mMinuteHandLength:F

.field private mMinuteHandPaint:Landroid/graphics/Paint;

.field private mMinuteHandWidth:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private drawHourHand(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourDegree:F

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    iget v2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v5, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHandEndLength:F

    add-float v4, v0, v1

    iget v2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandLength:F

    sub-float/2addr v0, v2

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMinuteHandle(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteDegree:F

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    iget v2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v5, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHandEndLength:F

    add-float v4, v0, v1

    iget v2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandLength:F

    sub-float/2addr v0, v2

    add-float v6, v0, v1

    iget-object v7, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    iget v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    iget v2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterCircleRadius:F

    iget-object p0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private updateCurrentDegree(Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L  # 6.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteDegree:F

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x403e000000000000L  # 30.0

    mul-double/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    div-double/2addr p1, v2

    add-double/2addr p1, v0

    double-to-float p1, p1

    iput p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourDegree:F

    return-void
.end method


# virtual methods
.method public drawHandle(Landroid/graphics/Canvas;Ljava/lang/Double;Ljava/lang/Double;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/oplus/fancyicon/clock/ClockHandView;->updateCurrentDegree(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/clock/ClockHandView;->drawMinuteHandle(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/clock/ClockHandView;->drawHourHand(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public updatePaint(ILandroid/graphics/ColorFilter;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    const v1, 0x3f19999a  # 0.6f

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_18
    if-nez p2, :cond_22

    iget-object p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p1

    if-eqz p1, :cond_2c

    :cond_22
    iget-object p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2c
    return-void
.end method

.method public updateSize(FF)V
    .registers 5

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mWidth:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHeight:F

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_56

    :cond_c
    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHeight:F

    iput p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mWidth:F

    const/high16 v0, 0x40000000  # 2.0f

    div-float v1, p1, v0

    iput v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterX:F

    div-float v1, p2, v0

    iput v1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterY:F

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    const p2, 0x3dcccccd  # 0.1f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHandEndLength:F

    const p2, 0x3d75c28f  # 0.06f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mCenterCircleRadius:F

    const p2, 0x3f266666  # 0.65f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandLength:F

    const p2, 0x3da3d70a  # 0.08f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandWidth:F

    const p2, 0x3f59999a  # 0.85f

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandLength:F

    const p2, 0x3d4ccccd  # 0.05f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandWidth:F

    invoke-static {}, Lcom/oplus/fancyicon/util/ResFileUtil;->isIconMeterialStyle()Z

    move-result p1

    if-eqz p1, :cond_56

    iget p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandLength:F

    const p2, 0x3f666666  # 0.9f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mMinuteHandLength:F

    iget p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandLength:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/oplus/fancyicon/clock/ClockHandView;->mHourHandLength:F

    :cond_56
    return-void
.end method
