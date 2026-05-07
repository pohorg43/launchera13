.class public Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/views/IPreviewPositionHelperExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/views/IPreviewPositionHelperExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/views/IPreviewPositionHelperExt;",
        ">;"
    }
.end annotation


# instance fields
.field private isWindowPositionHelper:Z

.field private mHost:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

.field private final mIrregularPreviewHelper:Lcom/android/quickstep/IrregularPreviewHelper;

.field private mIsTopBottomSplitScreenTask:Z

.field private mIsWindowPositionHelper:Z

.field private mRecalculateIfNeed:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/IrregularPreviewHelper;

    invoke-direct {v0}, Lcom/android/quickstep/IrregularPreviewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIrregularPreviewHelper:Lcom/android/quickstep/IrregularPreviewHelper;

    return-void
.end method


# virtual methods
.method public calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F
    .registers 16

    const-string/jumbo p3, "thumbnailData"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIrregularPreviewHelper:Lcom/android/quickstep/IrregularPreviewHelper;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/IrregularPreviewHelper;->calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFF)F

    move-result p0

    return p0
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/views/IPreviewPositionHelperExt;
    .registers 3

    instance-of v0, p1, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mHost:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    move-result-object p0

    return-object p0
.end method

.method public getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIrregularPreviewHelper:Lcom/android/quickstep/IrregularPreviewHelper;

    return-object p0
.end method

.method public final getMHost()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mHost:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    return-object p0
.end method

.method public final getMIsTopBottomSplitScreenTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsTopBottomSplitScreenTask:Z

    return p0
.end method

.method public final getMIsWindowPositionHelper()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsWindowPositionHelper:Z

    return p0
.end method

.method public final getMRecalculateIfNeed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mRecalculateIfNeed:Z

    return p0
.end method

.method public getSplitScreenInsets()Landroid/graphics/Rect;
    .registers 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final isWindowPositionHelper()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->isWindowPositionHelper:Z

    return p0
.end method

.method public setIsTopBottomSplitScreenTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsTopBottomSplitScreenTask:Z

    return-void
.end method

.method public setIsWindowPositionHelper(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsWindowPositionHelper:Z

    return-void
.end method

.method public final setMHost(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mHost:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    return-void
.end method

.method public final setMIsTopBottomSplitScreenTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsTopBottomSplitScreenTask:Z

    return-void
.end method

.method public final setMIsWindowPositionHelper(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mIsWindowPositionHelper:Z

    return-void
.end method

.method public final setMRecalculateIfNeed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mRecalculateIfNeed:Z

    return-void
.end method

.method public final setWindowPositionHelper(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->isWindowPositionHelper:Z

    return-void
.end method

.method public updateIsOrientationDifferent(IZZ)Z
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/views/PreviewPositionHelperExtOplusImpl;->mHost:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;->isOrientationChange(I)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz p3, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public updateIsOrientationDifferentInEnd(FFFZ)Z
    .registers 5

    return p4
.end method

.method public updateThumbnailScaleInEnd(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)F
    .registers 6

    const-string/jumbo p0, "thumbnailBounds"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "thumbnailClipHint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return p5
.end method

.method public updateWindowingModeSupportsRotation(IIZZ)Z
    .registers 5

    if-nez p3, :cond_7

    if-eqz p4, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 p0, 0x1

    :goto_8
    return p0
.end method
