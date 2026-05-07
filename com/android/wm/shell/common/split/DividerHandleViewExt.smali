.class Lcom/android/wm/shell/common/split/DividerHandleViewExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CIRCLE_NUM:I = 0x3


# instance fields
.field private final mCircleDiameter:I

.field private final mEnable:Z

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasColorSplitFeature()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mEnable:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/wm/shell/R$dimen;->divider_handle_view_circle_diameter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mCircleDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$color;->docked_divider_handle_color:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/view/View;Landroid/graphics/Canvas;)Z
    .registers 15

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_58

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mCircleDiameter:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v3, 0x3

    if-ge v2, p1, :cond_35

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v4, v0, 0x5

    sub-int/2addr p1, v4

    :goto_1c
    if-ge v1, v3, :cond_56

    int-to-float v5, v2

    int-to-float v6, p1

    mul-int/lit8 v4, v0, 0x2

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int/2addr v4, p1

    int-to-float v8, v4

    int-to-float v10, v0

    iget-object v11, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mPaint:Landroid/graphics/Paint;

    move-object v4, p2

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_35
    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v4, v0, 0x5

    sub-int/2addr v2, v4

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p1, v0

    :goto_3d
    if-ge v1, v3, :cond_56

    int-to-float v5, v2

    int-to-float v6, p1

    mul-int/lit8 v4, v0, 0x2

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int/2addr v4, p1

    int-to-float v8, v4

    int-to-float v10, v0

    iget-object v11, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mPaint:Landroid/graphics/Paint;

    move-object v4, p2

    move v9, v10

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_56
    const/4 p0, 0x1

    return p0

    :cond_58
    return v1
.end method

.method public setTouching(ZZ)Z
    .registers 3

    iget-boolean p0, p0, Lcom/android/wm/shell/common/split/DividerHandleViewExt;->mEnable:Z

    return p0
.end method
