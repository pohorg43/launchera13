.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;
.super Lcom/android/quickstep/util/MultiValueUpdateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $centerX:F

.field public final synthetic $centerY:F

.field public final synthetic $closeFromSplitScreen:Z

.field public final synthetic $cropRect:Landroid/graphics/Rect;

.field public final synthetic $curve:Landroid/view/animation/PathInterpolator;

.field public final synthetic $isFoldScreenExpanded:Z

.field public final synthetic $isOpen:Z

.field public final synthetic $launcher:Lcom/android/launcher3/Launcher;

.field public final synthetic $matrix:Landroid/graphics/Matrix;

.field public final synthetic $params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $tmpPos:Landroid/graphics/Point;

.field public final synthetic $windowAnimDuration:J

.field public final synthetic $windowCornerRadius:F

.field private final mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

.field private final mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;


# direct methods
.method public constructor <init>(ZJLandroid/view/animation/PathInterpolator;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZFFZLandroid/graphics/Matrix;FLcom/android/launcher3/Launcher;Landroid/graphics/Point;Landroid/graphics/Rect;[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 27

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    iput-boolean v1, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    iput-wide v2, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowAnimDuration:J

    move-object v4, p4

    iput-object v4, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$curve:Landroid/view/animation/PathInterpolator;

    move-object v5, p5

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move/from16 v5, p6

    iput-boolean v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    move/from16 v5, p7

    iput v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerX:F

    move/from16 v5, p8

    iput v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerY:F

    move/from16 v5, p9

    iput-boolean v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isFoldScreenExpanded:Z

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    move/from16 v5, p11

    iput v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Lcom/android/quickstep/util/MultiValueUpdateListener;-><init>()V

    if-eqz v1, :cond_56

    new-instance v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    long-to-float v9, v2

    move-object p5, v5

    move-object/from16 p6, p0

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_6d

    :cond_56
    new-instance v5, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    long-to-float v9, v2

    move-object p5, v5

    move-object/from16 p6, p0

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_6d
    iput-object v5, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    if-eqz v1, :cond_8b

    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const v5, 0x3f59999a  # 0.85f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    long-to-float v2, v2

    move-object p5, v1

    move-object/from16 p6, p0

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v2

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    goto :goto_a4

    :cond_8b
    new-instance v1, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    const/high16 v5, 0x3f800000  # 1.0f

    const v6, 0x3f59999a  # 0.85f

    const/4 v7, 0x0

    long-to-float v2, v2

    move-object p5, v1

    move-object/from16 p6, p0

    move/from16 p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    move/from16 p10, v2

    move-object/from16 p11, p4

    invoke-direct/range {p5 .. p11}, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;-><init>(Lcom/android/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V

    :goto_a4
    iput-object v1, v0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-void
.end method


# virtual methods
.method public final getMAlpha()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public final getMScale()Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    return-object p0
.end method

.method public onUpdate(FZ)V
    .registers 16

    iget-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_126

    aget-object v3, p2, v2

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    iget-object v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v5, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    iget v6, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->mode:I

    const/4 v7, 0x1

    if-nez v6, :cond_1b

    iget-boolean v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v8, :cond_23

    :cond_1b
    if-ne v6, v7, :cond_22

    iget-boolean v6, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v6, :cond_22

    goto :goto_23

    :cond_22
    move v7, v1

    :cond_23
    :goto_23
    const/4 v6, 0x0

    if-eqz v7, :cond_cf

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    if-eqz v9, :cond_4f

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->startScreenSpaceBounds:Landroid/graphics/Rect;

    const-string v8, "it.startScreenSpaceBounds"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerX:F

    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$centerY:F

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v9, v7

    move v12, v8

    move v8, v7

    move v7, v12

    :cond_4f
    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-nez v9, :cond_84

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$closeFromSplitScreen:Z

    if-nez v9, :cond_84

    iget-boolean v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isFoldScreenExpanded:Z

    if-eqz v9, :cond_84

    iget-object v9, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v9, v10

    const/4 v10, 0x2

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v7, v9

    iget-object v9, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v11, v11, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    mul-float/2addr v9, v11

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_8d

    :cond_84
    iget-object v9, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mScale:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v10, v10, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v9, v10, v10, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    :goto_8d
    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v8, :cond_9f

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v8

    if-eqz v8, :cond_b1

    :cond_9f
    iget-boolean v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$isOpen:Z

    if-eqz v7, :cond_aa

    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    invoke-static {p1, v7, v6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    goto :goto_b0

    :cond_aa
    iget v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$windowCornerRadius:F

    invoke-static {p1, v6, v7}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v6

    :goto_b0
    move v7, v6

    :cond_b1
    new-instance v6, Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->mAlpha:Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;

    iget v8, v8, Lcom/android/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    invoke-virtual {v3, v8}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    invoke-virtual {v5, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    invoke-virtual {v5, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    goto :goto_11b

    :cond_cf
    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_dd

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_e8

    :cond_dd
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget-object v8, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->position:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Point;->set(II)V

    :goto_e8
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$tmpPos:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->localBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_ff

    iget-object v3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_106

    :cond_ff
    iget-object v7, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    iget-object v3, v3, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_106
    iget-object v3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v3, v7}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withCornerRadius(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$cropRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    :goto_11b
    iget-object v3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v5}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v5

    aput-object v5, v3, v2

    move v2, v4

    goto/16 :goto_5

    :cond_126
    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$params:[Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    new-instance p2, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1$onUpdate$1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$1$onUpdate$1;-><init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/anim/light/Utils;->invokeVararg([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    return-void
.end method
