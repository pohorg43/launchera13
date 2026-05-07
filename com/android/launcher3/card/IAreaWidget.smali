.class public interface abstract Lcom/android/launcher3/card/IAreaWidget;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    }
.end annotation


# static fields
.field public static final LANDSCAPE_PADDING_BOTTOM:I = 0xa

.field public static final VALUE_1F:F = 1.0f


# virtual methods
.method public calculatePaddingRect(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v2, :cond_28

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget p1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    iget p1, v0, Lcom/android/launcher3/DeviceProfile;->workspaceCellPaddingXPx:I

    add-int/2addr p1, p0

    iput p1, p4, Landroid/graphics/Rect;->left:I

    const/4 p0, 0x0

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iput p1, p4, Landroid/graphics/Rect;->right:I

    const/16 p0, 0xa

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    return-object p4

    :cond_28
    iget-object v2, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    if-nez v2, :cond_36

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    move-object v4, p2

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    :cond_36
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-nez v2, :cond_b4

    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/util/LauncherUtil;->getMarginRectForCard(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ShortcutAndWidgetContainer;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->getScaleToFit()F

    move-result p0

    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object p1, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p1

    goto :goto_83

    :cond_63
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070740

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float/2addr v3, p0

    int-to-float p3, p3

    mul-float/2addr v3, p3

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr v3, p3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_83
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p3

    if-eqz p3, :cond_90

    iget-object p0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p0

    goto :goto_98

    :cond_90
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    div-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_98
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p2

    if-eqz p2, :cond_a5

    iget-object p2, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p2

    goto :goto_ab

    :cond_a5
    iget p2, v1, Landroid/graphics/Point;->y:I

    iget p3, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    sub-int/2addr p2, p3

    sub-int/2addr p2, p0

    :goto_ab
    iput p1, p4, Landroid/graphics/Rect;->left:I

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_d0

    :cond_b4
    iget-object p0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result p0

    iput p0, p4, Landroid/graphics/Rect;->left:I

    iget-object p0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result p0

    iput p0, p4, Landroid/graphics/Rect;->top:I

    iget p0, p4, Landroid/graphics/Rect;->left:I

    iput p0, p4, Landroid/graphics/Rect;->right:I

    iget-object p0, v0, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result p0

    iput p0, p4, Landroid/graphics/Rect;->bottom:I

    :goto_d0
    return-object p4
.end method

.method public getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->UNDEFINED:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public getRadiusArr()[F
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScaleToFit()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getScaleValueWhenDrag()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .registers 2

    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public abstract getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V
.end method

.method public getWidgetMargin(Landroid/graphics/Rect;)V
    .registers 2

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public isTranslationAnimatorRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public resetLayoutAnimValue()V
    .registers 1

    return-void
.end method

.method public setLayoutAnimValue(F)V
    .registers 2

    return-void
.end method

.method public setRadiusArr(FFFF)V
    .registers 5

    return-void
.end method

.method public setScaleToFit(F)V
    .registers 2

    return-void
.end method

.method public setTranslationAnimatorRunning(Z)V
    .registers 2

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .registers 3

    return-void
.end method
