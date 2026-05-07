.class public final Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;
.super Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView$Companion;

.field private static final TAG:Ljava/lang/String; = "SnapshotCardView"


# instance fields
.field private activity:Lcom/android/launcher3/BaseActivity;

.field private currentRotation:I

.field private snapshotLocation:[I

.field private snapshotRect:Landroid/graphics/Rect;

.field private translationEndTarget:[F

.field private final windowLeftSideSize:F

.field private final windowShortestSideSize:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->Companion:Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070974

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->windowShortestSideSize:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070973

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->windowLeftSideSize:F

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotLocation:[I

    const/4 p2, 0x3

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->translationEndTarget:[F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/BaseActivity;

    const/4 p3, 0x0

    if-eqz p2, :cond_76

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->activity:Lcom/android/launcher3/BaseActivity;

    sget-object v0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->activity:Lcom/android/launcher3/BaseActivity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    const-string v2, "activity!!.deviceProfile"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/quickstep/OplusBaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    new-array p1, p1, [I

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    aput v0, p1, p3

    const/4 v0, 0x1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    aput p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->updateSnapshotViewPosition([I)V

    :cond_76
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void
.end method

.method private final calculateTranslationEndTarget()V
    .registers 9

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_51

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_10

    goto :goto_51

    :cond_10
    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->windowShortestSideSize:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->min(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_50

    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->max(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    iget-object v5, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->translationEndTarget:[F

    iget v6, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->windowLeftSideSize:F

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotLocation:[I

    aget v7, p0, v3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v5, v3

    aget p0, p0, v2

    int-to-float p0, p0

    add-float/2addr v4, p0

    neg-float p0, v4

    aput p0, v5, v2

    aput v0, v5, v1

    :cond_50
    :goto_50
    return-void

    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->translationEndTarget:[F

    const/4 v0, 0x0

    aput v0, p0, v3

    aput v0, p0, v2

    const/high16 v0, 0x3f800000  # 1.0f

    aput v0, p0, v1

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;-><init>(Lcom/android/quickstep/views/TaskThumbnailView;)V

    return-object v0
.end method

.method public getTaskView()Lcom/android/quickstep/views/TaskView;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTranslationEndTarget()[F
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->translationEndTarget:[F

    return-object p0
.end method

.method public onLayout(ZIIII)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotLocation:[I

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 p3, 0x1

    aget p1, p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :cond_15
    iget-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final updateCurrentRotation(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->currentRotation:I

    return-void
.end method

.method public final updateSnapshotRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_14

    goto :goto_1c

    :cond_14
    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final updateSnapshotViewPosition([I)V
    .registers 5

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->snapshotLocation:[I

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    aput p1, v0, v1

    invoke-direct {p0}, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->calculateTranslationEndTarget()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public updateThumbnailMatrix()V
    .registers 13

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz v0, :cond_5a

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    move v11, v1

    goto :goto_2c

    :cond_2b
    move v11, v3

    :goto_2c
    iget-object v4, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    iget-object v5, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mActivity:Lcom/android/launcher3/BaseActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v9

    iget v10, p0, Lcom/oplus/quickstep/rapidreaction/widget/SnapshotCardView;->currentRotation:I

    invoke-virtual/range {v4 .. v11}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPreviewPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskThumbnailView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
