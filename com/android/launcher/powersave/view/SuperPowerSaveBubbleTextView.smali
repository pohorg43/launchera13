.class public Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;
.super Lcom/android/launcher3/OplusBubbleTextView;
.source ""


# instance fields
.field private mForceNoShowBg:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRountRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mForceNoShowBg:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060730

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b98

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mRountRadius:F

    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;Z)V

    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;Z)V
    .registers 6

    if-eqz p2, :cond_6

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_2b

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070b96

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_2b
    return-void
.end method

.method public applyIcon(Lcom/android/launcher3/icons/FastBitmapDrawable;Ljava/lang/CharSequence;)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->setForceNoShowBg(Z)V

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b97

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->forSetIconSize(I)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070b96

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public applyIconBg(Landroid/graphics/Canvas;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mForceNoShowBg:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isIsIconBrightBackground()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_22

    goto :goto_3e

    :cond_22
    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_35

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mRectF:Landroid/graphics/RectF;

    :cond_35
    iget-object v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mRountRadius:F

    iget-object p0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public forSetIconSize(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->applyIconBg(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setForceNoShowBg(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;->mForceNoShowBg:Z

    return-void
.end method
