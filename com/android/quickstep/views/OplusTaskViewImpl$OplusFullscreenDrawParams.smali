.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;
.super Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusFullscreenDrawParams"
.end annotation


# instance fields
.field private forceUseSplitScreenWindowCornerRadius:Z

.field private final mFoldExpandCornerRadius$delegate:Ly2/e;

.field private final mTabletCornerRaduius$delegate:Ly2/e;

.field private final splitScreenWindowCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCornerRadius:F

    sget-object v1, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/utils/RoundCornerLoader;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getSplitScreenWindowRoundCornerRadiusPx()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->splitScreenWindowCornerRadius:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    sget-object p1, Ly2/g;->c:Ly2/g;

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mTabletCornerRaduius$2;

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->mTabletCornerRaduius$delegate:Ly2/e;

    sget-object v0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mFoldExpandCornerRadius$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams$mFoldExpandCornerRadius$2;

    invoke-static {p1, v0}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->mFoldExpandCornerRadius$delegate:Ly2/e;

    return-void
.end method

.method private final getMFoldExpandCornerRadius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->mFoldExpandCornerRadius$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getMTabletCornerRaduius()F
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->mTabletCornerRaduius$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final forceUseSplitScreenCornerRadius()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->forceUseSplitScreenWindowCornerRadius:Z

    return-void
.end method

.method public setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V
    .registers 13

    const-string v0, "dp"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    iget-boolean p3, p5, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p3, :cond_14

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p3

    if-nez p3, :cond_14

    const/4 p3, 0x0

    goto :goto_16

    :cond_14
    iget p3, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mWindowCornerRadius:F

    :goto_16
    sget-object p5, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p5}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p5

    if-eqz p5, :cond_2a

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->getMTabletCornerRaduius()F

    move-result p4

    invoke-static {p1, p4, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void

    :cond_2a
    const p5, 0x3f7d70a4  # 0.99f

    cmpl-float p5, p1, p5

    if-gtz p5, :cond_41

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p5

    if-eqz p5, :cond_3f

    const p5, 0x3f4ccccd  # 0.8f

    cmpl-float p5, p1, p5

    if-lez p5, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p5, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p5, 0x1

    :goto_42
    iget-boolean p6, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->forceUseSplitScreenWindowCornerRadius:Z

    if-eqz p6, :cond_66

    if-eqz p5, :cond_66

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p5

    if-eqz p5, :cond_64

    const v1, 0x3f4ccccd  # 0.8f

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    sget-object v5, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/Utilities;->mapBoundToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result p5

    iget p6, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->splitScreenWindowCornerRadius:F

    invoke-static {p5, p3, p6}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p3

    goto :goto_66

    :cond_64
    iget p3, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->splitScreenWindowCornerRadius:F

    :cond_66
    :goto_66
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p5

    if-eqz p5, :cond_71

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl$OplusFullscreenDrawParams;->getMFoldExpandCornerRadius()F

    move-result p4

    goto :goto_77

    :cond_71
    int-to-float p4, p4

    mul-float/2addr p4, p2

    const p5, 0x3db33333  # 0.0875f

    mul-float/2addr p4, p5

    :goto_77
    invoke-static {p1, p4, p3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnCornerRadius:F

    return-void
.end method
