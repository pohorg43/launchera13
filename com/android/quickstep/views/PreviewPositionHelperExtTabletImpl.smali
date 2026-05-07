.class public final Lcom/android/quickstep/views/PreviewPositionHelperExtTabletImpl;
.super Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;
.source ""


# instance fields
.field private mThumbnailScale:F


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F
    .registers 10

    const-string/jumbo v0, "thumbnailData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result v0

    if-eqz v0, :cond_1b

    mul-float/2addr p5, p8

    div-float/2addr p3, p5

    iput p3, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtTabletImpl;->mThumbnailScale:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;

    move-result-object p1

    iget p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtTabletImpl;->mThumbnailScale:F

    invoke-virtual {p1, p0}, Lcom/android/quickstep/IrregularPreviewHelper;->setThumbnailScale(F)F

    move-result p0

    return p0

    :cond_1b
    invoke-super/range {p0 .. p8}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F

    move-result p0

    return p0
.end method
