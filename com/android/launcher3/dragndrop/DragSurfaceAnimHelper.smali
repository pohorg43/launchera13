.class public final Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;
    }
.end annotation


# static fields
.field private static final ANIMATED_PROPERTY_ALPHA:Ljava/lang/String; = "alpha"

.field private static final ANIMATED_PROPERTY_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATED_PROPERTY_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final ANIMATED_PROPERTY_X:Ljava/lang/String; = "x"

.field private static final ANIMATED_PROPERTY_Y:Ljava/lang/String; = "y"

.field private static final ANIMATED_SCALE_HIDE_VALUE:F = 0.8f

.field public static final INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

.field private static final TAG:Ljava/lang/String; = "DragSurfaceAnimHelper"

.field private static animCornerRadius:I

.field private static dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

.field private static surfaceControl:Landroid/view/SurfaceControl;

.field private static transactionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    const/16 v0, 0x27

    sput v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange$lambda-22()V

    return-void
.end method

.method private static final animateSurfaceToExchange$lambda-22()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_b

    goto :goto_12

    :cond_b
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-ne v1, v3, :cond_12

    move v2, v3

    :cond_12
    :goto_12
    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    :cond_2c
    return-void
.end method

.method private static final animateSurfaceToExchange$lambda-24$lambda-23(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "valueAnimator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static final animateSurfaceToHide$lambda-16(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 4

    const-string v0, "$animPara"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_29

    :cond_e
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :goto_29
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->endAndRemoveDragView(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->recycle()V

    return-void
.end method

.method private static final animateSurfaceToHide$lambda-17(Landroid/animation/ValueAnimator;)V
    .registers 2

    const-string v0, "$anim"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final animateSurfaceToPosition(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)Landroid/animation/AnimatorSet;
    .registers 25
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "animPara"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    iget-object v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    const-string v3, "animateSurfaceToPosition card: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DragSurfaceAnimHelper"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2bf

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_2bf

    :cond_25
    iget-object v12, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v13, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    instance-of v2, v13, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v2, :cond_39

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardView"

    invoke-static {v13, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v4}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    :cond_39
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type com.android.launcher3.CellLayout.LayoutParams"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    if-nez v4, :cond_52

    goto :goto_55

    :cond_52
    invoke-virtual {v4, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    :goto_55
    if-nez v4, :cond_58

    goto :goto_5b

    :cond_58
    invoke-virtual {v4, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layoutChild(Landroid/view/View;)V

    :goto_5b
    const/4 v4, 0x2

    new-array v7, v4, [F

    invoke-virtual {v13}, Landroid/view/View;->getScaleX()F

    move-result v8

    iget v9, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    int-to-float v9, v9

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x1

    int-to-float v14, v11

    sub-float/2addr v14, v8

    mul-float/2addr v10, v14

    int-to-float v15, v4

    div-float/2addr v10, v15

    add-float/2addr v10, v9

    const/4 v9, 0x0

    aput v10, v7, v9

    iget v5, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    int-to-float v5, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v10, v14, v15, v5}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v5

    aput v5, v7, v11

    sget-object v5, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v12, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/OplusWorkspace;->setFinalTransitionTransform()V

    :cond_91
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const-string/jumbo v14, "null cannot be cast to non-null type android.view.View"

    invoke-static {v10, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    invoke-virtual {v6, v10, v7}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v6

    if-eqz v5, :cond_aa

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/OplusWorkspace;->resetTransitionTransform()V

    :cond_aa
    mul-float/2addr v6, v8

    aget v5, v7, v9

    aget v8, v7, v11

    const-string v10, "animateSurfaceToPosition: coord = "

    invoke-static {v10}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v9, v7, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v7, v11

    invoke-static {v10, v7, v3}, Lcom/android/launcher/h0;->a(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    const-string v7, ", sc.height = "

    const-string v9, ", destRect.height = "

    const-string v10, "Drag"

    if-eqz v2, :cond_162

    new-instance v11, Landroid/graphics/Rect;

    move-object v14, v13

    check-cast v14, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v14}, Lcom/android/launcher3/card/LauncherCardView;->getCardBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v14, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/high16 v15, 0x3f800000  # 1.0f

    if-ne v14, v4, :cond_ed

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/dragndrop/DraggableView;

    invoke-interface {v4, v11}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_ed

    move v6, v15

    :cond_ed
    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v4, :cond_ff

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v4}, Lcom/android/launcher3/card/IAreaWidget;->getTranslationForCentering()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v4

    :cond_ff
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    sget-object v14, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v4, v14

    mul-float/2addr v4, v6

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v15

    sget-object v15, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    mul-float/2addr v14, v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "animateSurfaceToPosition: scale = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v11, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v3, v5

    iget v4, v11, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v6, v4

    add-float/2addr v6, v8

    const/4 v4, 0x0

    move v5, v3

    move v8, v14

    move/from16 v7, v16

    goto :goto_1c5

    :cond_162
    new-array v5, v4, [I

    new-array v4, v4, [F

    invoke-virtual {v12}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v17

    sget-object v20, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v11, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mTargetCell:[I

    move-object/from16 v18, v5

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v11

    invoke-virtual/range {v17 .. v23}, Lcom/android/launcher3/OplusWorkspace;->getFinalPositionForDropAnimation([I[FLandroid/view/SurfaceControl;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[I)V

    const/4 v6, 0x0

    aget v8, v5, v6

    int-to-float v8, v8

    const/4 v11, 0x1

    aget v5, v5, v11

    int-to-float v5, v5

    aget v14, v4, v6

    aget v11, v4, v11

    const-string v15, "animateSurfaceToPosition: scaleX = "

    invoke-static {v15}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget v4, v4, v6

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v4, v5

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v3, v4}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    move v7, v14

    move v6, v5

    move v5, v8

    move v8, v11

    :goto_1c5
    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v3, :cond_1d5

    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v3, v3

    add-float/2addr v6, v3

    :cond_1d5
    if-eqz v2, :cond_1dd

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1dd

    const/4 v4, 0x1

    :cond_1dd
    move v14, v4

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentX:F

    iget v3, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    iget v2, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentY:F

    iget v4, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v2, "animPara.mLauncher"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "launcher"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    move-object v2, v1

    move v10, v14

    move-object v11, v12

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->createSurfaceAnimator$OplusLauncher_OPPOPallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    if-eqz v14, :cond_232

    iget-object v1, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragView:Lcom/android/launcher3/dragndrop/DragView;

    const-string/jumbo v4, "null cannot be cast to non-null type com.android.launcher3.dragndrop.OplusDragView"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/dragndrop/OplusDragView;

    sput-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v1, :cond_225

    invoke-virtual {v12}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setMultiScreenTop(F)V

    :cond_225
    invoke-virtual {v3, v15}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    new-instance v1, Lcom/android/launcher3/dragndrop/h;

    invoke-direct {v1, v13, v15}, Lcom/android/launcher3/dragndrop/h;-><init>(Landroid/view/View;I)V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    goto :goto_243

    :cond_232
    const-string v4, "addingCard"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mDragSource:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_23e

    move v4, v15

    goto :goto_23f

    :cond_23e
    const/4 v4, 0x0

    :goto_23f
    invoke-virtual {v1, v13, v12, v4}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange(Landroid/view/View;Lcom/android/launcher3/Launcher;Z)Landroid/animation/Animator;

    move-result-object v1

    :goto_243
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$1;

    invoke-direct {v3, v12}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v1, :cond_264

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v1, v4, v15

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_268

    :cond_264
    const/4 v5, 0x0

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_268
    if-eqz v14, :cond_27b

    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-nez v1, :cond_26f

    goto :goto_272

    :cond_26f
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_272
    sget-object v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-nez v1, :cond_277

    goto :goto_27b

    :cond_277
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_27b
    :goto_27b
    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnStart$1;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnStart$1;-><init>()V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;

    invoke-direct {v1, v14, v13, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnCancel$1;-><init>(ZLandroid/view/View;Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$2;

    invoke-direct {v1, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToPosition$$inlined$doOnEnd$2;-><init>(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v3, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v1, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v1, v3}, Lcom/android/launcher3/dragndrop/f;-><init>(Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    instance-of v0, v13, Lcom/android/launcher3/card/uscard/USCardContainerView;

    if-eqz v0, :cond_2a4

    check-cast v13, Lcom/android/launcher3/card/uscard/USCardContainerView;

    goto :goto_2a5

    :cond_2a4
    const/4 v13, 0x0

    :goto_2a5
    if-nez v13, :cond_2a8

    goto :goto_2be

    :cond_2a8
    invoke-virtual {v13}, Lcom/android/launcher3/card/uscard/USCardContainerView;->checkDragCardState()I

    move-result v0

    if-gez v0, :cond_2b1

    invoke-virtual {v13}, Lcom/android/launcher3/card/LauncherCardView;->updateDragContent()V

    :cond_2b1
    invoke-virtual {v13}, Lcom/android/launcher3/card/uscard/USCardContainerView;->playLoadingToContentAnimator()V

    const v0, 0x7f0b0014

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    :goto_2be
    return-object v3

    :cond_2bf
    :goto_2bf
    const-string v2, "drag surface is null or invalid."

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final animateSurfaceToPosition$lambda-11(Landroid/animation/AnimatorSet;)V
    .registers 2

    const-string v0, "$animator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static final animateSurfaceToPosition$lambda-2(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->INSTANCE:Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    goto :goto_15

    :cond_e
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-ne v1, v2, :cond_15

    move v0, v2

    :cond_15
    :goto_15
    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_2f
    return-void
.end method

.method public static synthetic b(Landroid/animation/ValueAnimator;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide$lambda-17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToExchange$lambda-24$lambda-23(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToHide$lambda-16(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Landroid/animation/AnimatorSet;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animateSurfaceToPosition$lambda-11(Landroid/animation/AnimatorSet;)V

    return-void
.end method


# virtual methods
.method public final animateSurfaceToExchange(Landroid/view/View;Lcom/android/launcher3/Launcher;Z)Landroid/animation/Animator;
    .registers 9

    const-string p0, "cardView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "DragSurfaceAnimHelper"

    const-string v0, "animateSurfaceToExchange."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_ba

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_ba

    :cond_20
    const/4 p0, 0x3

    const/4 v0, 0x2

    if-eqz p3, :cond_4c

    new-array p2, v0, [I

    fill-array-data p2, :array_c2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-string p3, "animHide"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;

    invoke-direct {p3, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnEnd$1;

    invoke-direct {p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnEnd$1;-><init>()V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Landroid/view/Choreographer;->getFrameDelay()J

    move-result-wide v0

    int-to-long p0, p0

    mul-long/2addr v0, p0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p2

    :cond_4c
    instance-of p3, p1, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz p3, :cond_5d

    move-object p3, p1

    check-cast p3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p3}, Lcom/android/launcher3/card/LauncherCardView;->getInitAnimator()Landroid/animation/Animator;

    move-result-object p3

    if-nez p3, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {p3}, Landroid/animation/Animator;->end()V

    :cond_5d
    :goto_5d
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/PropertyValuesHolder;

    new-array v3, v0, [F

    fill-array-data v3, :array_ca

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v3}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedTranslation(Z)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedScale(Z)V

    sget-object v1, Lcom/android/common/util/f0;->e:Lcom/android/common/util/f0;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v0, v0, [F

    fill-array-data v0, :array_d2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/common/config/a;

    invoke-direct {v1, p1, p0}, Lcom/android/common/config/a;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$2;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$animateSurfaceToExchange$$inlined$doOnStart$2;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V

    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0x258

    invoke-virtual {p3, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object p0, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p3

    :cond_ba
    :goto_ba
    const-string p1, "drag surface is null or invalid."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :array_c2
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_ca
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_d2
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public final animateSurfaceToHide(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 14

    const-string v0, "animPara"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    const-string v1, "animateSurfaceToHide. card: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragSurfaceAnimHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_8a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_8a

    :cond_20
    iget v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentX:F

    iget v1, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetX:I

    int-to-float v1, v1

    sub-float v3, v0, v1

    iget v0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mCurrentY:F

    iget v1, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mOriginalOffsetY:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccc  # 0.19999999f

    mul-float/2addr v0, v1

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float v5, v0, v3

    sget-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v1, v2, v4}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v6

    const v7, 0x3f4ccccd  # 0.8f

    const v8, 0x3f4ccccd  # 0.8f

    iget-object v9, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v0, "animPara.mLauncher"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->createSurfaceAnimator$OplusLauncher_OPPOPallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setNeedAlpha(Z)V

    new-instance v1, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v1, p1}, Lcom/android/launcher3/dragndrop/f;-><init>(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$AnimUpdateLister;->setCompletedRunnable(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mWorkspace:Lcom/android/launcher3/Workspace;

    new-instance v0, Lcom/android/launcher3/dragndrop/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/dragndrop/j;-><init>(Landroid/animation/ValueAnimator;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_8a
    :goto_8a
    const-string v0, "drag surface is null or invalid."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V

    return-void
.end method

.method public final createSurfaceAnimator$OplusLauncher_OPPOPallExportAallRelease(FFFFFFLandroid/content/Context;ZLcom/android/launcher3/Launcher;)Landroid/animation/ValueAnimator;
    .registers 26

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    const-string v7, "context"

    move-object/from16 v8, p7

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "launcher"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createSurfaceAnimator: fromX = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", fromY = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", toX = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", toY = "

    const-string v10, ", toScaleX = "

    invoke-static {v7, v2, v9, v3, v10}, Lcom/android/launcher/folder/recommend/view/a;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", toScaleY = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Drag"

    const-string v10, "DragSurfaceAnimHelper"

    invoke-static {v9, v10, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "scaleY"

    const-string/jumbo v9, "scaleX"

    const-string/jumbo v10, "y"

    const-string/jumbo v11, "x"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz p8, :cond_a7

    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v13, [F

    aput v0, v8, v14

    aput v2, v8, v12

    invoke-static {v11, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v14

    new-array v0, v13, [F

    aput v1, v0, v14

    aput v3, v0, v12

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v12

    new-array v0, v13, [F

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, v0, v14

    aput v4, v0, v12

    invoke-static {v9, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v13

    new-array v0, v13, [F

    aput v1, v0, v14

    aput v5, v0, v12

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v15, v1

    new-array v0, v13, [F

    fill-array-data v0, :array_10a

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v15, v1

    goto :goto_dd

    :cond_a7
    const/4 v8, 0x4

    new-array v15, v8, [Landroid/animation/PropertyValuesHolder;

    new-array v8, v13, [F

    aput v0, v8, v14

    aput v2, v8, v12

    invoke-static {v11, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v14

    new-array v0, v13, [F

    aput v1, v0, v14

    aput v3, v0, v12

    invoke-static {v10, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v12

    new-array v0, v13, [F

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, v0, v14

    aput v4, v0, v12

    invoke-static {v9, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v15, v13

    new-array v0, v13, [F

    aput v1, v0, v14

    aput v5, v0, v12

    invoke-static {v7, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v15, v1

    :goto_dd
    array-length v0, v15

    invoke-static {v15, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-static/range {p7 .. p7}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    invoke-interface {v1, v2, v14}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/config/AnimationConstant;->PATH_INTERPOLATOR_11:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "animator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$createSurfaceAnimator$$inlined$doOnEnd$1;

    invoke-direct {v1, v6}, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper$createSurfaceAnimator$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_10a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final endAndRemoveDragView(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 3

    const-string p0, "animPara"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    const-string v0, "endAndRemoveDragView. dragView = "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DragSurfaceAnimHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-eqz p0, :cond_24

    iget-object p0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_24

    :cond_1f
    sget-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragController;->onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V

    :cond_24
    :goto_24
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-void
.end method

.method public final getAnimCornerRadius()I
    .registers 1

    sget p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return p0
.end method

.method public final getContentPadding(Lcom/android/launcher3/dragndrop/OplusDragView;)[I
    .registers 6

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-nez p0, :cond_16

    move-object p0, v1

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1a
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    if-eqz v0, :cond_21

    check-cast p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    goto :goto_22

    :cond_21
    move-object p0, v1

    :goto_22
    const/4 v0, 0x2

    if-nez p0, :cond_26

    goto :goto_61

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getSmartView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_2f

    goto :goto_47

    :cond_2f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/Launcher;

    if-nez p1, :cond_3c

    goto :goto_47

    :cond_3c
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-nez p1, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    :goto_47
    new-array v1, v0, [I

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    neg-int v3, v3

    aput v3, v1, p1

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p0, v2

    float-to-int p0, p0

    neg-int p0, p0

    aput p0, v1, p1

    :goto_61
    if-nez v1, :cond_68

    new-array v1, v0, [I

    fill-array-data v1, :array_6a

    :cond_68
    return-object v1

    nop

    :array_6a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final getContentWidthAndHeight(Lcom/android/launcher3/dragndrop/OplusDragView;)[F
    .registers 7

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_12

    :cond_11
    move-object p0, v1

    :goto_12
    if-nez p0, :cond_16

    move-object p0, v1

    goto :goto_1a

    :cond_16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1a
    instance-of v0, p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    if-eqz v0, :cond_21

    check-cast p0, Lcom/android/launcher3/dragndrop/SmartCardDrawable;

    goto :goto_22

    :cond_21
    move-object p0, v1

    :goto_22
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_28

    goto :goto_3e

    :cond_28
    new-array v1, v0, [F

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    aput v4, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getCardContentRect()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    aput p0, v1, v2

    :goto_3e
    if-nez v1, :cond_50

    new-array v1, v0, [F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    aput p0, v1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    aput p0, v1, v2

    :cond_50
    aget p0, v1, v3

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_59

    move p0, v2

    goto :goto_5a

    :cond_59
    move p0, v3

    :goto_5a
    if-eqz p0, :cond_6a

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    int-to-float p0, p0

    aput p0, v1, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    aput p0, v1, v2

    :cond_6a
    return-object v1
.end method

.method public final getDragView()Lcom/android/launcher3/dragndrop/OplusDragView;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-object p0
.end method

.method public final getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public final getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    if-nez p0, :cond_16

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    :cond_16
    return-object p0
.end method

.method public final getTransactionRef()Ljava/lang/ref/WeakReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final isSurfaceAnimRunning()Z
    .registers 1

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_f

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final setAnimCornerRadius(I)V
    .registers 2

    sput p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->animCornerRadius:I

    return-void
.end method

.method public final setDragView(Lcom/android/launcher3/dragndrop/OplusDragView;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    return-void
.end method

.method public final setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->surfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final setTransactionRef(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->transactionRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final showCardViewDirectly(Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;)V
    .registers 3

    const-string p0, "animPara"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/launcher3/dragndrop/IDragEventHandler$SurfaceAnimParams;->mAddingCard:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/card/LauncherCardView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    check-cast p0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->getInitAnimator()Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :goto_18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-interface {p0}, Lcom/oplus/card/manager/domain/ICardView;->showLoadingIfNeed()V

    return-void

    :cond_1f
    if-nez p0, :cond_22

    goto :goto_25

    :cond_22
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_25
    return-void
.end method

.method public final updateDragViewContent(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V
    .registers 4

    const-string p0, "drawable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/dragndrop/DragSurfaceAnimHelper;->dragView:Lcom/android/launcher3/dragndrop/OplusDragView;

    if-nez p0, :cond_a

    goto :goto_1b

    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/OplusDragView;->getItemInfo()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/SmartCardDrawable;->getViewTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/OplusDragView;->updateDrawable(Lcom/android/launcher3/dragndrop/SmartCardDrawable;)V

    :cond_1b
    :goto_1b
    return-void
.end method
