.class public Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/TaskThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewPositionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper$PreviewPositionHelperWrapper;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT_F:Landroid/graphics/RectF;


# instance fields
.field private final mClippedInsets:Landroid/graphics/RectF;

.field public final mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

.field private mIsOrientationChanged:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mWrapper:Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->EMPTY_RECT_F:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    const-class v0, Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-static {v0}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->isOrientationChange(I)Z

    move-result p0

    return p0
.end method

.method private getRotationDelta(II)I
    .registers 3

    sub-int/2addr p2, p1

    if-gez p2, :cond_5

    add-int/lit8 p2, p2, 0x4

    :cond_5
    return p2
.end method

.method private isOrientationChange(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method private setThumbnailRotation(ILandroid/graphics/RectF;FLandroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v1, p1, 0x5a

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    move p1, v1

    move p2, p1

    move p4, p2

    goto :goto_43

    :cond_16
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    move v2, v1

    move v1, p1

    goto :goto_34

    :cond_22
    iget p1, p2, Landroid/graphics/RectF;->top:F

    neg-float v1, p1

    iget p1, p2, Landroid/graphics/RectF;->left:F

    neg-float p1, p1

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    move v2, p2

    move p2, p1

    :goto_34
    move p1, p4

    move p4, v2

    goto :goto_43

    :cond_37
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    move v2, v1

    move v1, p1

    move p1, v2

    :goto_43
    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    mul-float/2addr v1, p3

    mul-float/2addr p2, p3

    invoke-virtual {v0, v1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    iget-object p2, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-static {p5}, Lcom/android/quickstep/views/TaskView;->useFullThumbnail(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget p2, p0, Landroid/graphics/RectF;->left:F

    neg-float p2, p2

    iget p0, p0, Landroid/graphics/RectF;->top:F

    neg-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_62
    return-void
.end method


# virtual methods
.method public getExt()Lcom/android/quickstep/views/IPreviewPositionHelperExt;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    return-object p0
.end method

.method public getInsetsToDrawInFullscreen(Lcom/android/launcher3/DeviceProfile;)Landroid/graphics/RectF;
    .registers 2

    invoke-static {p1}, Lcom/android/quickstep/views/TaskView;->useFullThumbnail(Lcom/android/launcher3/DeviceProfile;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    goto :goto_b

    :cond_9
    sget-object p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->EMPTY_RECT_F:Landroid/graphics/RectF;

    :goto_b
    return-object p0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getWrapper()Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mWrapper:Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper$PreviewPositionHelperWrapper;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper$PreviewPositionHelperWrapper;-><init>(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mWrapper:Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    :cond_b
    iget-object p0, p0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mWrapper:Lcom/android/quickstep/views/IPreviewPositionHelperWrapper;

    return-object p0
.end method

.method public updateThumbnailMatrix(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILcom/android/launcher3/DeviceProfile;IZ)V
    .registers 28

    move-object/from16 v6, p0

    move-object/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    move-object/from16 v2, p5

    move/from16 v0, p6

    iget v1, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-direct {v6, v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getRotationDelta(II)I

    move-result v15

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iput v7, v14, Landroid/graphics/RectF;->left:F

    :cond_24
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iput v7, v14, Landroid/graphics/RectF;->right:F

    :cond_31
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iput v7, v14, Landroid/graphics/RectF;->top:F

    :cond_3e
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v7

    if-eqz v7, :cond_4b

    iget-object v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iput v7, v14, Landroid/graphics/RectF;->bottom:F

    :cond_4b
    iget v13, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    iget-boolean v7, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-nez v7, :cond_63

    iget v7, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-eq v7, v9, :cond_61

    if-eq v7, v8, :cond_61

    iget-boolean v11, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v11, :cond_63

    const/16 v11, 0x78

    if-ne v7, v11, :cond_63

    :cond_61
    move v7, v9

    goto :goto_64

    :cond_63
    const/4 v7, 0x0

    :goto_64
    invoke-direct {v6, v15}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->isOrientationChange(I)Z

    move-result v11

    if-eqz v11, :cond_6e

    if-eqz v7, :cond_6e

    move v11, v9

    goto :goto_6f

    :cond_6e
    const/4 v11, 0x0

    :goto_6f
    iget v12, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    if-ne v12, v8, :cond_75

    move v12, v9

    goto :goto_76

    :cond_75
    const/4 v12, 0x0

    :goto_76
    iget-object v8, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {v8, v0, v1, v7, v12}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->updateWindowingModeSupportsRotation(IIZZ)Z

    move-result v0

    iget-object v1, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {v1, v15, v0, v11}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->updateIsOrientationDifferent(IZZ)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v4, :cond_1a7

    if-eqz v3, :cond_1a7

    cmpl-float v7, v13, v11

    if-nez v7, :cond_8d

    goto/16 :goto_1a7

    :cond_8d
    if-lez v15, :cond_92

    if-eqz v0, :cond_92

    goto :goto_93

    :cond_92
    const/4 v9, 0x0

    :goto_93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v13

    iget v8, v14, Landroid/graphics/RectF;->left:F

    iget v10, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v10

    sub-float v8, v0, v8

    iget v10, v14, Landroid/graphics/RectF;->top:F

    iget v11, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v10, v11

    sub-float v10, v7, v10

    int-to-float v11, v4

    move/from16 v17, v1

    int-to-float v1, v3

    div-float v3, v11, v1

    if-eqz v9, :cond_b8

    div-float v18, v10, v8

    goto :goto_ba

    :cond_b8
    div-float v18, v8, v10

    :goto_ba
    move/from16 v19, v1

    move/from16 v1, v18

    const v4, 0x3dcccccd  # 0.1f

    invoke-static {v3, v1, v4}, Lcom/android/launcher3/Utilities;->isRelativePercentDifferenceGreaterThan(FFF)Z

    move-result v1

    if-eqz v9, :cond_cd

    if-eqz v1, :cond_cd

    const/4 v3, 0x0

    const/16 v16, 0x0

    goto :goto_d1

    :cond_cd
    move/from16 v16, v9

    move/from16 v3, v17

    :goto_d1
    if-eqz v1, :cond_116

    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipLeft(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_e0

    iget-object v1, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->left:F

    :cond_e0
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipRight(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_ed

    iget-object v1, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->right:F

    :cond_ed
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipTop(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_fa

    iget-object v1, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->top:F

    :cond_fa
    invoke-static/range {p5 .. p5}, Lcom/android/quickstep/views/TaskView;->clipBottom(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    if-nez v1, :cond_107

    iget-object v1, v5, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v14, Landroid/graphics/RectF;->bottom:F

    :cond_107
    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget v4, v14, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v4

    sub-float v1, v0, v1

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget v8, v14, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v8

    sub-float v4, v7, v4

    goto :goto_118

    :cond_116
    move v1, v8

    move v4, v10

    :goto_118
    if-eqz v3, :cond_11e

    move v10, v11

    move/from16 v9, v19

    goto :goto_121

    :cond_11e
    move v9, v11

    move/from16 v10, v19

    :goto_121
    div-float v8, v9, v10

    div-float v17, v1, v8

    cmpl-float v18, v17, v4

    if-lez v18, :cond_141

    cmpg-float v17, v4, v10

    if-gez v17, :cond_134

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move/from16 v17, v7

    goto :goto_136

    :cond_134
    move/from16 v17, v4

    :goto_136
    mul-float v7, v17, v8

    cmpl-float v18, v7, v0

    if-lez v18, :cond_13f

    div-float v17, v0, v8

    goto :goto_142

    :cond_13f
    move v0, v7

    goto :goto_142

    :cond_141
    move v0, v1

    :goto_142
    if-eqz p7, :cond_158

    iget v7, v14, Landroid/graphics/RectF;->left:F

    sub-float v8, v1, v0

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    cmpg-float v18, v7, v5

    if-gez v18, :cond_16b

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->left:F

    iput v5, v14, Landroid/graphics/RectF;->right:F

    goto :goto_16b

    :cond_158
    const/4 v5, 0x0

    iget v7, v14, Landroid/graphics/RectF;->right:F

    sub-float v8, v1, v0

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->right:F

    iget v7, v14, Landroid/graphics/RectF;->left:F

    cmpg-float v18, v7, v5

    if-gez v18, :cond_16b

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->right:F

    iput v5, v14, Landroid/graphics/RectF;->left:F

    :cond_16b
    :goto_16b
    iget v7, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v17

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->bottom:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    cmpg-float v17, v7, v5

    if-gez v17, :cond_17e

    add-float/2addr v8, v7

    iput v8, v14, Landroid/graphics/RectF;->bottom:F

    iput v5, v14, Landroid/graphics/RectF;->top:F

    goto :goto_187

    :cond_17e
    cmpg-float v17, v8, v5

    if-gez v17, :cond_187

    add-float/2addr v7, v8

    iput v7, v14, Landroid/graphics/RectF;->top:F

    iput v5, v14, Landroid/graphics/RectF;->bottom:F

    :cond_187
    :goto_187
    iget-object v7, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {v7, v1, v4, v11, v3}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->updateIsOrientationDifferentInEnd(FFFZ)Z

    move-result v3

    iget-object v7, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    move-object/from16 v8, p2

    move v5, v11

    move v11, v1

    move/from16 v18, v12

    move v12, v4

    move/from16 v19, v13

    move v13, v0

    move-object v4, v14

    move v14, v5

    move v1, v15

    move/from16 v15, v19

    invoke-interface/range {v7 .. v15}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->calculateThumbnailScale(Lcom/android/systemui/shared/recents/model/ThumbnailData;FFFFFFF)F

    move-result v0

    move v12, v0

    move v13, v3

    move/from16 v10, v16

    goto :goto_1b3

    :cond_1a7
    :goto_1a7
    move/from16 v17, v1

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v4, v14

    move v1, v15

    move/from16 v13, v17

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_1b3
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {v0}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->getSplitScreenInsets()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v10, :cond_1f2

    iget-boolean v0, v2, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_1cf

    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float v1, v1, v19

    iget v3, v7, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float v3, v3, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_1dc

    :cond_1cf
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, v19

    iget v3, v4, Landroid/graphics/RectF;->top:F

    mul-float v3, v3, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :goto_1dc
    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v4, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    mul-float v1, v1, v19

    iget v3, v4, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    mul-float v3, v3, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move/from16 v15, p3

    move/from16 v14, p4

    move-object v8, v2

    move-object v9, v4

    goto :goto_204

    :cond_1f2
    move-object/from16 v0, p0

    move-object v8, v2

    move-object v2, v4

    move/from16 v14, p4

    move/from16 v3, v19

    move/from16 v15, p3

    move-object v9, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->setThumbnailRotation(ILandroid/graphics/RectF;FLandroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V

    :goto_204
    if-eqz v13, :cond_211

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    goto :goto_21b

    :cond_211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_21b
    int-to-float v1, v1

    mul-float/2addr v1, v12

    iget-object v2, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v12

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v4, v12

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget-boolean v4, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v4, :cond_248

    if-eqz v18, :cond_230

    goto :goto_248

    :cond_230
    sub-float/2addr v0, v3

    int-to-float v3, v15

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mClippedInsets:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    int-to-float v2, v14

    sub-float/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_258

    :cond_248
    :goto_248
    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v0, v0, v19

    mul-float/2addr v0, v12

    iput v0, v2, Landroid/graphics/RectF;->right:F

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v0, v0, v19

    mul-float/2addr v0, v12

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    :goto_258
    iget-object v7, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    int-to-float v10, v15

    move-object/from16 v8, p1

    move/from16 v11, v19

    invoke-interface/range {v7 .. v12}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->updateThumbnailScaleInEnd(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)F

    move-result v0

    iget-object v1, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mExt:Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    invoke-interface {v0}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->getIrregularPreviewHelper()Lcom/android/quickstep/IrregularPreviewHelper;

    move-result-object v0

    iget-object v5, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/IrregularPreviewHelper;->calculateThumbnailPositon(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/ThumbnailData;IILandroid/graphics/Matrix;)V

    iput-boolean v13, v6, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->mIsOrientationChanged:Z

    return-void
.end method
