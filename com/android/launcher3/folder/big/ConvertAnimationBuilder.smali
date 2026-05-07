.class public final Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$Companion;,
        Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$Companion;

.field private static final DURATION:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "ConvertAB"


# instance fields
.field private final animSet:Landroid/animation/AnimatorSet;

.field private bgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

.field private final big:Lcom/android/launcher3/folder/big/BigFolderIcon;

.field private final bigFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private final bigLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

.field private completeAction:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;

.field private isConvertAnimating:Z

.field private final numCol:I

.field private originalCellX:I

.field private final originalCellY:I

.field private final small:Lcom/android/launcher3/folder/OplusFolderIcon;

.field private final smallFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private final smallLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

.field private final spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

.field private final toBig:Z

.field private toCellX:I

.field private final toCellY:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->Companion:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderIcon;Lcom/android/launcher3/folder/OplusFolderIcon;ZII)V
    .registers 7

    const-string v0, "big"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "small"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    iput-boolean p3, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    iput p4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iput p5, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellY:I

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->setConvertAnimBuilder(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p4

    const-string p5, "big.info"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/OplusFolderIcon;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p4

    const-string/jumbo p5, "small.info"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->smallFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {p4, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-static {p2, p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->smallLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    if-eqz p3, :cond_56

    iget p5, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    goto :goto_58

    :cond_56
    iget p5, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    :goto_58
    iput p5, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    if-eqz p3, :cond_5f

    iget p2, p4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_61

    :cond_5f
    iget p2, p2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    :goto_61
    iput p2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellY:I

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    const-string p2, "fromContext<BaseDragging…Profile.mWidgetSizeConfig"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getOdp()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->numCol:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIIILandroid/animation/ValueAnimator;)V
    .registers 19

    invoke-static/range {p0 .. p18}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildBackgroundAnim$lambda-2(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$getBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/big/BigFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    return-object p0
.end method

.method public static final synthetic access$getSmall$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Lcom/android/launcher3/folder/OplusFolderIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    return-object p0
.end method

.method public static final synthetic access$getToBig$p(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;FLandroid/animation/ValueAnimator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildFolderNameAnim$lambda-6(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final buildBackgroundAnim()Landroid/animation/Animator;
    .registers 33

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_11

    new-array v0, v2, [F

    fill-array-data v0, :array_fc

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1a

    :cond_11
    new-array v0, v2, [F

    fill-array-data v0, :array_104

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_1a
    move-object v14, v0

    iget-object v0, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderBackground"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderBackground;

    iget-object v2, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->getFolderBackground()Lcom/android/launcher3/folder/PreviewBackground;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.android.launcher3.folder.OplusPreviewBackground"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v2

    check-cast v15, Lcom/android/launcher3/folder/OplusPreviewBackground;

    iget-object v2, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v11, v2

    move v2, v11

    iget-object v3, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07017a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v9, v3

    move v3, v9

    invoke-virtual {v15}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result v21

    move/from16 v4, v21

    invoke-virtual {v15}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getScaleSize()I

    move-result v22

    move/from16 v6, v22

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeX()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderBackground;->getMPreviewSizeY()I

    move-result v7

    iget v8, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iget v10, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    iget-object v10, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget v12, v10, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    int-to-float v12, v12

    mul-float/2addr v8, v12

    move v12, v8

    iget v13, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellY:I

    move/from16 v16, v9

    iget v9, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellY:I

    sub-int/2addr v13, v9

    int-to-float v9, v13

    iget v10, v10, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    move v13, v9

    invoke-virtual {v15}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getOffsetX()I

    move-result v10

    int-to-float v10, v10

    add-float v23, v10, v8

    move/from16 v8, v23

    invoke-virtual {v15}, Lcom/android/launcher3/folder/OplusPreviewBackground;->getOffsetY()I

    move-result v10

    int-to-float v10, v10

    add-float v24, v10, v9

    move/from16 v10, v24

    iget-object v9, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingHorizontal()I

    move-result v9

    int-to-float v9, v9

    move/from16 v27, v16

    move/from16 v16, v11

    iget-object v11, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingTop()I

    move-result v11

    int-to-float v11, v11

    move/from16 v20, v16

    move-object/from16 v28, v14

    iget v14, v15, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    move/from16 v29, v2

    move-object v2, v15

    move v15, v14

    iget v2, v2, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    move/from16 v17, v2

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    move/from16 v16, v2

    iget v2, v0, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    move/from16 v18, v2

    new-instance v2, Lcom/android/launcher3/folder/big/ConvertBgParams;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v26}, Lcom/android/launcher3/folder/big/ConvertBgParams;-><init>(FIIFFFF)V

    iput-object v2, v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    new-instance v2, Lcom/android/launcher3/folder/big/e;

    move-object v14, v0

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 p0, v14

    move-object/from16 v30, v28

    move-object/from16 v31, v2

    move/from16 v2, v29

    invoke-direct/range {v0 .. v18}, Lcom/android/launcher3/folder/big/e;-><init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIII)V

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "anim"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;

    move-object/from16 v2, p0

    move/from16 v3, v27

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildBackgroundAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/BigFolderBackground;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_fc
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_104
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final buildBackgroundAnim$lambda-2(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFIIIIFFFFFFLcom/android/launcher3/folder/big/BigFolderBackground;IIIILandroid/animation/ValueAnimator;)V
    .registers 31

    move-object v0, p0

    move/from16 v1, p11

    move/from16 v2, p12

    move-object/from16 v3, p13

    const-string/jumbo v4, "this$0"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$bigFolderBackground"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p18 .. p18}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->getBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-result-object v5

    if-nez v5, :cond_28

    goto :goto_59

    :cond_28
    move v6, p1

    move v7, p2

    invoke-direct {p0, v4, p1, p2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v6

    move v7, p3

    move/from16 v8, p4

    invoke-direct {p0, v4, p3, v8}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FII)I

    move-result v7

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct {p0, v4, v8, v9}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FII)I

    move-result v8

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct {p0, v4, v9, v10}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v9

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct {p0, v4, v10, v11}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v10

    move-object p1, v5

    move p2, v6

    move p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move/from16 p6, v10

    invoke-virtual/range {p1 .. p6}, Lcom/android/launcher3/folder/big/ConvertBgParams;->updateBg(FIIFF)V

    :goto_59
    const/4 v5, 0x0

    cmpg-float v6, v1, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_62

    move v6, v7

    goto :goto_63

    :cond_62
    move v6, v8

    :goto_63
    if-eqz v6, :cond_6d

    cmpg-float v6, v2, v5

    if-nez v6, :cond_6a

    goto :goto_6b

    :cond_6a
    move v7, v8

    :goto_6b
    if-nez v7, :cond_7f

    :cond_6d
    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->getBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;

    move-result-object v6

    if-nez v6, :cond_74

    goto :goto_7f

    :cond_74
    invoke-direct {p0, v4, v1, v5}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v1

    invoke-direct {p0, v4, v2, v5}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    invoke-virtual {v6, v1, v2}, Lcom/android/launcher3/folder/big/ConvertBgParams;->updateTrans(FF)V

    :cond_7f
    :goto_7f
    move/from16 v1, p14

    move/from16 v2, p15

    invoke-direct {p0, v4, v1, v2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FII)I

    move-result v1

    iput v1, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetX:I

    move/from16 v1, p16

    move/from16 v2, p17

    invoke-direct {p0, v4, v1, v2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FII)I

    move-result v0

    iput v0, v3, Lcom/android/launcher3/folder/PreviewBackground;->basePreviewOffsetY:I

    return-void
.end method

.method private final buildFolderNameAnim()Landroid/animation/Animator;
    .registers 9

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    new-array v0, v1, [F

    fill-array-data v0, :array_76

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_18

    :cond_f
    new-array v0, v1, [F

    fill-array-data v0, :array_7e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_18
    new-instance v3, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iput v1, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getCellHeight()F

    move-result v1

    neg-float v1, v1

    iput v1, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iget v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    if-eq v1, v2, :cond_51

    iget v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget v2, v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellWidth:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v4, v1

    iput v4, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_51
    iget v1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellY:I

    iget v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellY:I

    if-eq v1, v2, :cond_63

    iget v4, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iget v2, v2, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->mCellHeight:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v4, v1

    iput v4, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_63
    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/android/launcher3/folder/big/f;

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/folder/big/f;-><init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;F)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p0, "anim"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_76
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_7e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final buildFolderNameAnim$lambda-6(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lkotlin/jvm/internal/Ref$FloatRef;FLkotlin/jvm/internal/Ref$FloatRef;FLandroid/animation/ValueAnimator;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initTranX"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initTranY"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p5

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p5, Ljava/lang/Float;

    invoke-virtual {p5}, Ljava/lang/Float;->floatValue()F

    move-result p5

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-direct {p0, p5, p1, p2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    iget p2, p3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-direct {p0, p5, p2, p4}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private final buildPageAnim()Landroid/animation/Animator;
    .registers 23

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v1, "null cannot be cast to non-null type com.android.launcher3.folder.OplusClippedFolderIconLayoutRule"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;

    iget-object v1, v15, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewLayoutRule:Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;

    const-string v2, "null cannot be cast to non-null type com.android.launcher3.folder.big.BigFolderIconLayoutRule"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;

    iget v3, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewPadding:F

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingX()F

    move-result v4

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewPaddingY()F

    move-result v5

    iget v1, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mPreviewSubIconGap:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float v10, v1, v2

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapX()F

    move-result v11

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getMPreviewSubIconGapY()F

    move-result v12

    iget v1, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mStyleBoundOffset:F

    sub-float v13, v1, v10

    sub-float v16, v1, v10

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getAnimOffsetX()F

    move-result v17

    invoke-virtual {v14}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->getAnimOffsetY()F

    move-result v18

    iget v8, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iget v9, v14, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iget v6, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget v7, v14, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    iget-boolean v0, v15, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_57

    new-array v0, v1, [F

    fill-array-data v0, :array_8e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_60

    :cond_57
    new-array v0, v1, [F

    fill-array-data v0, :array_96

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_60
    move-object v2, v0

    new-instance v1, Lcom/android/launcher3/folder/big/d;

    move-object v0, v1

    move-object/from16 v19, v1

    move-object v1, v14

    move-object/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v21, v14

    move/from16 v14, v17

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v0 .. v16}, Lcom/android/launcher3/folder/big/d;-><init>(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFF)V

    move-object/from16 v1, v19

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "anim"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;

    move-object/from16 v3, v21

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildPageAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_8e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_96
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final buildPageAnim$lambda-4(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p9

    const-string v4, "$toLayoutRule"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "this$0"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p16 .. p16}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move v5, p3

    invoke-direct {p1, v4, p2, p3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingX(F)V

    move v5, p4

    invoke-direct {p1, v4, p2, p4}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewPaddingY(F)V

    move v2, p5

    move v5, p6

    invoke-direct {p1, v4, p5, p6}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    move v2, p7

    move v5, p8

    invoke-direct {p1, v4, p7, p8}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    iput v2, v0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    move/from16 v2, p10

    invoke-direct {p1, v4, p9, v2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapX(F)V

    move/from16 v2, p11

    invoke-direct {p1, v4, p9, v2}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setMPreviewSubIconGapY(F)V

    move/from16 v2, p12

    move/from16 v3, p13

    invoke-direct {p1, v4, v2, v3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetX(F)V

    move/from16 v2, p14

    move/from16 v3, p15

    invoke-direct {p1, v4, v2, v3}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->mapRange(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->setAnimOffsetY(F)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V
    .registers 17

    invoke-static/range {p0 .. p16}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildPageAnim$lambda-4(Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;FFFFFFFFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final mapRange(FFF)F
    .registers 4

    invoke-static {p3, p2, p1, p2}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    return p0
.end method

.method private final mapRange(FII)I
    .registers 4

    int-to-float p0, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    invoke-static {p1}, Li1/j;->o(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final buildConvertAnimator()Landroid/animation/Animator;
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIsRTL()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iget-object v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iget v4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->numCol:I

    if-lt v3, v4, :cond_34

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->originalCellX:I

    iget v3, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    goto :goto_34

    :cond_2a
    iget v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    iget-object v2, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_41

    :cond_3d
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_41
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderManager;->folderNameSwitchOff()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolderName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_52
    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/big/BigFolderPreviewItemManager;->recomputePreviewDrawingParams()V

    goto :goto_69

    :cond_60
    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->small:Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getPreviewItemManager()Lcom/android/launcher3/folder/PreviewItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewItemManager;->recomputePreviewDrawingParams()V

    :goto_69
    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildBackgroundAnim()Landroid/animation/Animator;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildPageAnim()Landroid/animation/Animator;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->buildFolderNameAnim()Landroid/animation/Animator;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnStart$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnStart$1;-><init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$buildConvertAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-boolean v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toBig:Z

    if-nez v0, :cond_b6

    iget-object v0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->big:Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_b6
    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final getAnimSet()Landroid/animation/AnimatorSet;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->animSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public final getBgParams()Lcom/android/launcher3/folder/big/ConvertBgParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    return-object p0
.end method

.method public final getBigFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public final getBigLayoutParams()Lcom/android/launcher3/CellLayout$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bigLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    return-object p0
.end method

.method public final getCompleteAction()Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->completeAction:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;

    return-object p0
.end method

.method public final getNumCol()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->numCol:I

    return p0
.end method

.method public final getSmallFolderInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->smallFolderInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object p0
.end method

.method public final getSmallLayoutParams()Lcom/android/launcher3/CellLayout$LayoutParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->smallLayoutParams:Lcom/android/launcher3/CellLayout$LayoutParams;

    return-object p0
.end method

.method public final getSpaceConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->spaceConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-object p0
.end method

.method public final getToCellX()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    return p0
.end method

.method public final getToCellY()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellY:I

    return p0
.end method

.method public final isConvertAnimating()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating:Z

    return p0
.end method

.method public final setBgParams(Lcom/android/launcher3/folder/big/ConvertBgParams;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->bgParams:Lcom/android/launcher3/folder/big/ConvertBgParams;

    return-void
.end method

.method public final setCompleteAction(Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->completeAction:Lcom/android/launcher3/folder/big/ConvertAnimationBuilder$AnimationComplete;

    return-void
.end method

.method public final setConvertAnimating(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->isConvertAnimating:Z

    return-void
.end method

.method public final setToCellX(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/ConvertAnimationBuilder;->toCellX:I

    return-void
.end method
