.class public Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final context:Landroid/content/Context;

.field public mApplyWindowPositionOffset:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mDp:Lcom/android/launcher3/DeviceProfile;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mLandSplitWindowX:I

.field public mLayoutValid:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mMatrix:Landroid/graphics/Matrix;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

.field public final mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final mRecentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

.field public mStagePosition:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final mTaskViewCorner:I

.field public final mThumbnailPosition:Landroid/graphics/Rect;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/utils/TranslationYProperty<",
            "Lcom/android/quickstep/AnimatedFloat;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowTranslationYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->context:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mStagePosition:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-direct {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mPositionHelper:Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d5b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTaskViewCorner:I

    new-instance v1, Lcom/android/quickstep/AnimatedFloat;

    invoke-direct {v1}, Lcom/android/quickstep/AnimatedFloat;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mRecentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lcom/oplus/quickstep/utils/TranslationYProperty;

    const-string/jumbo v2, "window_transY"

    invoke-direct {v1, v2}, Lcom/oplus/quickstep/utils/TranslationYProperty;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070d5c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mWindowTranslationYOffset:I

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;->getExt()Lcom/android/quickstep/views/IPreviewPositionHelperExt;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/quickstep/views/IPreviewPositionHelperExt;->setIsWindowPositionHelper(Z)V

    return-void
.end method


# virtual methods
.method public addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V
    .registers 3

    const-string p0, "pa"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "interpolator"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;Z)V
    .registers 11

    const-string v0, "pa"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->addAppToOverviewAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V

    if-eqz p3, :cond_1b

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mRecentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    iget-object v3, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/anim/PendingAnimation;->addFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FFLandroid/animation/TimeInterpolator;)V

    :cond_1b
    return-void
.end method

.method public final adjustTransYPropertyState(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->reset()V

    goto :goto_c

    :cond_8
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setGoingToRecents(Z)V

    :goto_c
    return-void
.end method

.method public apply(Lcom/android/quickstep/util/TransformParams;)V
    .registers 2

    return-void
.end method

.method public applyWindowPositionOffset(Landroid/graphics/Matrix;)V
    .registers 2

    const-string p0, "matrix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public applyWindowToHomeRotation(Landroid/graphics/Matrix;)V
    .registers 2

    const-string p0, "matrix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public forceUseSplitScreenWindowCornerRadius()V
    .registers 1

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentApplyRect()Landroid/graphics/RectF;
    .registers 3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mThumbnailPosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public final getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mOrientationState"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMTaskViewCorner()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTaskViewCorner:I

    return p0
.end method

.method public setDp(Lcom/android/launcher3/DeviceProfile;)V
    .registers 6

    const-string v0, "dp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/RecentsOrientedState;->setMultiWindowMode(Z)V

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_47

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    sget-object v1, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    iget-object v2, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/util/SplitScreenBounds;->isLauncherOnFirstScreen(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/SplitScreenBounds;->getSecondaryWindowBounds(Landroid/content/Context;)Lcom/android/launcher3/util/WindowBounds;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_45

    :cond_3a
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v1, v0, :cond_41

    move v1, v0

    :cond_41
    iget v0, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    sub-int v0, v1, v0

    :goto_45
    iput v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLandSplitWindowX:I

    :cond_47
    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_4e

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    goto :goto_50

    :cond_4e
    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    :goto_50
    if-eqz v0, :cond_55

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    goto :goto_57

    :cond_55
    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    :goto_57
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mWindowTranslationYOffset:I

    sub-int/2addr v1, v0

    goto :goto_64

    :cond_63
    neg-int v1, v1

    :goto_64
    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->recalculateBaseCoefficient()V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setDraggingHeight(I)V

    return-void
.end method

.method public final setIgnoreTranslate(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setIgnoreTranslate(Z)V

    return-void
.end method

.method public setLayoutRotation(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLayoutValid:Z

    return-void
.end method

.method public final setMOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-void
.end method

.method public final setWindowPositionOffset(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mApplyWindowPositionOffset:Z

    return-void
.end method

.method public final translateMatrixWhenToHome()V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mDp:Lcom/android/launcher3/DeviceProfile;

    if-nez v0, :cond_5

    goto :goto_33

    :cond_5
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_34

    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v1, :cond_e

    goto :goto_34

    :cond_e
    iget-object v1, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->getMOrientationState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    goto :goto_2a

    :cond_27
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    goto :goto_2c

    :cond_2a
    :goto_2a
    iget p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mLandSplitWindowX:I

    :goto_2c
    int-to-float p0, p0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v0, v0

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_33
    return-void

    :cond_34
    :goto_34
    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v1, v1

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final translateYIfNeed()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mRecentsViewTransY:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public final updateDraggingMaxProgress(F)V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTaskViewSimulator;->mTransYProperty:Lcom/oplus/quickstep/utils/TranslationYProperty;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/TranslationYProperty;->setMaxProgress(F)V

    return-void
.end method
