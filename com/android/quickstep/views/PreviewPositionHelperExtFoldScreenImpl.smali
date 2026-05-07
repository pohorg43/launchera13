.class public final Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl;
.super Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl$Companion;

.field public static final SCALE_HALF:F = 0.5f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl;->Companion:Lcom/android/quickstep/views/PreviewPositionHelperExtFoldScreenImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F
    .registers 13

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_3d

    div-float v0, p7, p4

    div-float v1, p7, p5

    invoke-static {v0, v1}, Li1/d;->b(FF)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL  # 0.8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3d

    iget p1, p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_32

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMIsTopBottomSplitScreenTask()Z

    move-result p1

    if-nez p1, :cond_32

    :cond_2f
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->setMRecalculateIfNeed(Z)V

    :cond_32
    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;

    move-result-object p0

    const/high16 p1, 0x3f000000  # 0.5f

    invoke-virtual {p0, p1}, Lcom/android/quickstep/IrregularPreviewHelper;->setThumbnailScale(F)F

    move-result p0

    return p0

    :cond_3d
    invoke-super/range {p0 .. p8}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F

    move-result p0

    return p0
.end method

.method public updateIsOrientationDifferent(IZZ)Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->isOrientationChange(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-nez p0, :cond_19

    if-eqz p2, :cond_1b

    :cond_19
    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public updateIsOrientationDifferentInEnd(FFFZ)Z
    .registers 5

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_18

    div-float p0, p3, p1

    div-float/2addr p3, p2

    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double p0, p0

    const-wide p2, 0x3fe999999999999aL  # 0.8

    cmpl-double p0, p0, p2

    if-lez p0, :cond_18

    const/4 p4, 0x0

    :cond_18
    return p4
.end method

.method public updateThumbnailScaleInEnd(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)F
    .registers 8

    const-string/jumbo v0, "thumbnailBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "thumbnailClipHint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x3ebd70a4  # 0.37f

    cmpg-float v0, p5, v0

    if-gez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, p5

    iput v1, v0, Landroid/graphics/RectF;->top:F

    const p5, 0x3f333333  # 0.7f

    :cond_2a
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMRecalculateIfNeed()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, p5

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p4

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    sub-float/2addr p5, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    iget p4, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p4, p2

    sub-float/2addr p1, p4

    div-float p2, p3, p5

    div-float/2addr p3, p1

    invoke-static {p2, p3}, Li1/d;->b(FF)F

    move-result p5

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->getClippedInsets()Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p5

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->setMRecalculateIfNeed(Z)V

    :cond_90
    return p5
.end method

.method public updateWindowingModeSupportsRotation(IIZZ)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getMIsWindowPositionHelper()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {p1, p2}, Lcom/android/common/util/ScreenUtils;->isSameDirection(II)Z

    move-result p0

    if-nez p0, :cond_17

    :cond_12
    if-nez p3, :cond_19

    if-eqz p4, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method
