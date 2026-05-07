.class public final Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;
.super Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

.field private static final TAG:Ljava/lang/String; = "BigFolderIconLayoutRule"


# instance fields
.field private animOffsetX:F

.field private animOffsetY:F

.field private availableSpaceX:I

.field private availableSpaceY:I

.field private mPreviewPaddingX:F

.field private mPreviewPaddingY:F

.field private mPreviewSubIconGapX:F

.field private mPreviewSubIconGapY:F

.field private mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->Companion:Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;-><init>()V

    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .registers 10

    iget p2, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->sMaxColsInPreview:I

    div-int v0, p1, p2

    rem-int/2addr p1, p2

    iget-boolean v1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mIsRtl:Z

    const/4 v2, 0x1

    invoke-static {p2, p1, v2, v1}, Lcom/android/launcher/CellLayoutHelper;->invertCellX(IIIZ)I

    move-result p1

    iget p2, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    int-to-float p1, p1

    iget v1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/4 v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    mul-float v5, v3, v4

    add-float/2addr v5, v1

    mul-float/2addr v5, p1

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    add-float/2addr v5, p1

    add-float/2addr v5, v4

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    add-float/2addr v5, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    mul-float/2addr v3, v0

    add-float/2addr v3, v1

    mul-float/2addr v3, p1

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    add-float/2addr v3, p1

    add-float/2addr v3, v0

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    add-float/2addr v3, p0

    if-nez p3, :cond_35

    new-instance p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-direct {p3, v5, v3, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    goto :goto_53

    :cond_35
    iget p0, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    cmpg-float p0, p0, v5

    const/4 p1, 0x0

    if-nez p0, :cond_3e

    move p0, v2

    goto :goto_3f

    :cond_3e
    move p0, p1

    :goto_3f
    if-eqz p0, :cond_4e

    iget p0, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    cmpg-float p0, p0, v3

    if-nez p0, :cond_49

    move p0, v2

    goto :goto_4a

    :cond_49
    move p0, p1

    :goto_4a
    if-nez p0, :cond_4d

    goto :goto_4e

    :cond_4d
    move v2, p1

    :cond_4e
    :goto_4e
    iput-boolean v2, p3, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->skipGetDrawable:Z

    invoke-virtual {p3, v5, v3, p2}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->update(FFF)V

    :goto_53
    return-object p3
.end method

.method public final getAnimOffsetX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    return p0
.end method

.method public final getAnimOffsetY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    return p0
.end method

.method public final getMPreviewPaddingX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    return p0
.end method

.method public final getMPreviewPaddingY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    return p0
.end method

.method public final getMPreviewSubIconGapX()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    return p0
.end method

.method public final getMPreviewSubIconGapY()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    return p0
.end method

.method public final getMSizeConfig()Lcom/android/launcher3/folder/big/SizeSpacingConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-object p0
.end method

.method public getStyleBoundOffset()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Landroid/content/Context;IIFZ)V
    .registers 10

    invoke-super {p0, p1, p2, p4, p5}, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->init(Landroid/content/Context;IFZ)V

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mWidgetSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMIconUnitSize()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    const/high16 p4, 0x3f800000  # 1.0f

    mul-float/2addr p1, p4

    iget-object p4, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMWorkspaceIconSize()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    iput p1, p0, Lcom/android/launcher3/folder/ClippedFolderIconLayoutRule;->mBaselineIconScale:F

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingHorizontal()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    int-to-float p1, p2

    iget-object p4, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingHorizontal()F

    move-result p4

    const/high16 p5, 0x40000000  # 2.0f

    mul-float/2addr p4, p5

    sub-float/2addr p1, p4

    const/4 p4, 0x3

    int-to-float p4, p4

    iget v0, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    mul-float/2addr v0, p4

    sub-float/2addr p1, v0

    const/4 v0, 0x6

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-eqz p1, :cond_91

    int-to-float p1, p3

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMTextViewHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMBgPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr p1, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result v1

    mul-float/2addr v1, p5

    sub-float/2addr p1, v1

    iget p5, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    goto :goto_9f

    :cond_91
    int-to-float p1, p3

    iget-object v1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/big/SizeSpacingConfig;->getMContentPaddingVertical()F

    move-result v1

    mul-float/2addr v1, p5

    sub-float/2addr p1, v1

    iget p5, p0, Lcom/android/launcher3/folder/OplusClippedFolderIconLayoutRule;->mBaselineIconSize:F

    :goto_9f
    mul-float/2addr p4, p5

    sub-float/2addr p1, p4

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->availableSpaceX:I

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->availableSpaceY:I

    return-void
.end method

.method public final setAnimOffsetX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetX:F

    return-void
.end method

.method public final setAnimOffsetY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->animOffsetY:F

    return-void
.end method

.method public final setMPreviewPaddingX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingX:F

    return-void
.end method

.method public final setMPreviewPaddingY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewPaddingY:F

    return-void
.end method

.method public final setMPreviewSubIconGapX(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapX:F

    return-void
.end method

.method public final setMPreviewSubIconGapY(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mPreviewSubIconGapY:F

    return-void
.end method

.method public final setMSizeConfig(Lcom/android/launcher3/folder/big/SizeSpacingConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderIconLayoutRule;->mSizeConfig:Lcom/android/launcher3/folder/big/SizeSpacingConfig;

    return-void
.end method
