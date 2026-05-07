.class public final Lcom/android/quickstep/IrregularPreviewHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mRightTranslate:F

.field private mThumbnailScale:F

.field private mTopTranslate:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateThumbnailPositon(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILandroid/graphics/Matrix;)V
    .registers 9

    const-string/jumbo v0, "thumbnailBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "martrix"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1f

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4c

    iget-boolean p2, p2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isInGrounp:Z

    if-nez p2, :cond_4c

    :cond_1f
    iget p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    cmpg-float p2, p2, v1

    if-nez p2, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    if-nez p2, :cond_4c

    int-to-float p2, p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    int-to-float p2, p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p3, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    invoke-virtual {p5, p2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4e

    :cond_4c
    iput v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    :goto_4e
    return-void
.end method

.method public final calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFF)F
    .registers 8

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    move p2, p5

    :cond_d
    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result p1

    if-nez p1, :cond_23

    cmpl-float p1, p3, p4

    if-lez p1, :cond_20

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_23

    :cond_20
    mul-float/2addr p4, p6

    div-float/2addr p2, p4

    return p2

    :cond_23
    :goto_23
    mul-float/2addr p3, p6

    div-float/2addr p2, p3

    iput p2, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    return p2
.end method

.method public final clipIrregularCanvas(Landroid/graphics/Canvas;FFFFLcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p6, :cond_9

    goto :goto_16

    :cond_9
    iget-object v1, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_e

    goto :goto_16

    :cond_e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_16
    if-nez v0, :cond_19

    return-void

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2f

    iget p6, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    add-float/2addr p2, p6

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    add-float/2addr p3, p0

    sub-float/2addr p4, p6

    sub-float/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void

    :cond_2f
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_45

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    cmpg-float v2, v1, v4

    if-nez v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, v5

    :goto_3e
    if-nez v2, :cond_45

    int-to-float v2, v0

    mul-float/2addr v2, v1

    invoke-virtual {p1, p2, p3, p4, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_45
    iget v1, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_9a

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    cmpg-float v2, v1, v4

    if-nez v2, :cond_52

    move v2, v3

    goto :goto_53

    :cond_52
    move v2, v5

    :goto_53
    if-nez v2, :cond_9a

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object p6, p6, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-nez p6, :cond_5d

    move p6, v5

    goto :goto_61

    :cond_5d
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p6

    :goto_61
    int-to-float p6, p6

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    mul-float/2addr p6, v1

    cmpg-float v1, v0, p5

    if-gez v1, :cond_71

    iget v1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_71

    move v1, v3

    goto :goto_72

    :cond_71
    move v1, v5

    :goto_72
    cmpg-float v2, p6, v4

    if-nez v2, :cond_78

    move v2, v3

    goto :goto_79

    :cond_78
    move v2, v5

    :goto_79
    if-nez v2, :cond_86

    cmpg-float p6, p6, p4

    if-gez p6, :cond_86

    iget p6, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    cmpl-float p6, p6, v4

    if-lez p6, :cond_86

    goto :goto_87

    :cond_86
    move v3, v5

    :goto_87
    if-eqz v1, :cond_8d

    iget p3, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mTopTranslate:F

    add-float p5, p3, v0

    :cond_8d
    if-eqz v3, :cond_93

    iget p0, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mRightTranslate:F

    add-float/2addr p2, p0

    sub-float/2addr p4, p0

    :cond_93
    if-nez v1, :cond_97

    if-eqz v3, :cond_9a

    :cond_97
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_9a
    return-void
.end method

.method public final setThumbnailScale(F)F
    .registers 2

    iput p1, p0, Lcom/android/quickstep/IrregularPreviewHelper;->mThumbnailScale:F

    return p1
.end method
