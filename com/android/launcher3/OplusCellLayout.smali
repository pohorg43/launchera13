.class public Lcom/android/launcher3/OplusCellLayout;
.super Lcom/android/launcher3/CellLayout;
.source ""

# interfaces
.implements Lcom/oplus/screenshot/OplusLongshotUnsupported;
.implements Lcom/android/launcher3/IUpdatableCellLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;,
        Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;,
        Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;
    }
.end annotation


# static fields
.field private static final DEBUG_ENABLE:Z = false

.field public static final DRAG_TIP_SCALE:F = 0.034f

.field public static final MODE_BATCH_DRAG_OVER:I = 0x8

.field private static final REMOVE_LAST_CHILD_ANIMATION_DURATION:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "OplusCellLayout"

.field private static final VISUAL_VIEW_SCALE_RATE:F = 1.0f


# instance fields
.field private mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

.field private mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

.field public mChildHeight:I

.field public mChildWidth:I

.field private mDragViewCellSpan:[I

.field public mGrid:Lcom/android/launcher3/DeviceProfile;

.field public mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

.field public mGridHeight:I

.field public mGridWidth:I

.field public mInvertRtl:Z

.field private mItemCompactReordered:Z

.field private mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

.field private mLastChild:Landroid/view/View;

.field private mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

.field private mLastDirection:[I

.field private mLastEmptyCell:[I

.field private mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

.field private mLastTargetCell:[I

.field private mOnLayoutFinishListener:Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;

.field public mScreenId:I

.field private mTmpLastChild:Landroid/widget/ImageView;

.field private mUseTempCoords:Z

.field public mVirtualFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mVisualViewBitmap:Landroid/graphics/Bitmap;

.field private mVisualizeCell:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    iput v0, p0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/OplusCellLayout;->mChildWidth:I

    iput v0, p0, Lcom/android/launcher3/OplusCellLayout;->mChildHeight:I

    iput-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualizeCell:[I

    new-instance v2, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/OplusCellLayout$1;)V

    iput-object v2, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualViewBitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    new-instance p1, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p1}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mChildWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mChildHeight:I

    iput-boolean p2, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualizeCell:[I

    new-instance v1, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/OplusCellLayout$1;)V

    iput-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualViewBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    new-instance p1, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p1}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mChildWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mChildHeight:I

    iput-boolean p2, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    const/4 p3, 0x2

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualizeCell:[I

    new-instance v0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/OplusCellLayout$1;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mVisualViewBitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    new-array p1, p3, [I

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    new-instance p1, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    invoke-direct {p1}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->init()V

    sget-boolean p1, Lcom/android/common/debug/LogUtils;->drawBackground:Z

    if-eqz p1, :cond_50

    const p1, 0x7f08052e

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :cond_50
    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    return-object p1
.end method

.method private animateLastChildToAdd(Landroid/view/View;Landroid/widget/ImageView;Z)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    if-nez v8, :cond_e

    const-string v0, "OplusCellLayout"

    const-string v1, "animateLastChildToAdd, child is null!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget v2, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    add-int/2addr v2, v5

    iget v1, v1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int v6, v1, v3

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    new-instance v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v10, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-direct {v7, v10, v3, v5, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v9}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v12

    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/16 v17, 0x0

    move-object v10, v7

    move v13, v1

    move-object/from16 v16, v3

    invoke-virtual/range {v10 .. v17}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    iget v3, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v10, v10, v4

    add-int/2addr v3, v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v10

    add-int/2addr v3, v10

    iget v7, v7, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v5, v10, v5

    add-int/2addr v7, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v7

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v7, v9}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    if-eqz v1, :cond_b3

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    sub-float/2addr v1, v4

    float-to-int v1, v1

    move v7, v1

    goto :goto_b4

    :cond_b3
    move v7, v4

    :goto_b4
    iget-object v1, v0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->cancel()V

    const/4 v1, 0x2

    if-eqz p3, :cond_d8

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_108

    invoke-static {v8, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/OplusCellLayout$2;

    invoke-direct {v2, v0, v8, v7}, Lcom/android/launcher3/OplusCellLayout$2;-><init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/launcher3/OplusCellLayout$3;

    invoke-direct {v2, v0, v9, v8}, Lcom/android/launcher3/OplusCellLayout$3;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/Launcher;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_ee

    :cond_d8
    new-array v1, v1, [F

    fill-array-data v1, :array_110

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v11, Lcom/android/launcher3/r0;

    move-object v1, v11

    move v4, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/r0;-><init>(IIIILandroid/widget/ImageView;I)V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v1, v10

    :goto_ee
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher3/OplusCellLayout$4;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3, v8, v9}, Lcom/android/launcher3/OplusCellLayout$4;-><init>(Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;Landroid/widget/ImageView;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->of(Landroid/animation/ValueAnimator;)V

    iget-object v0, v0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->start()V

    return-void

    :array_108
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_110
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private animateLastChildToRemove(Landroid/view/View;Landroid/widget/ImageView;Z)V
    .registers 28

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    if-nez v15, :cond_e

    const-string v0, "OplusCellLayout"

    const-string v1, "animateLastChildToRemove :onAnimationUpdate--- child == null "

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher/Launcher;

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v9, v6, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget v11, v6, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    new-instance v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v7, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v5, 0x1

    invoke-direct {v3, v4, v1, v5, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    iget v1, v7, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, v7, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v8, v7, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, v7, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v12, v7, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/16 v23, 0x0

    move-object/from16 v16, v3

    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v19, v0

    move/from16 v20, v8

    move/from16 v21, v10

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v23}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    iget-object v4, v7, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {v1, v7, v4}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget v1, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget-object v4, v7, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v8, v4, v2

    add-int/2addr v1, v8

    iget v8, v7, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    const/4 v10, 0x2

    div-int/2addr v8, v10

    add-int/2addr v1, v8

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    aget v4, v4, v5

    add-int v12, v3, v4

    iget-object v3, v7, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->cancel()V

    iget-object v3, v7, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    iget-object v3, v3, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mRemoveFrom:Landroid/graphics/Point;

    invoke-virtual {v3, v9, v11}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    if-eqz v0, :cond_a4

    invoke-virtual {v14}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    move v4, v0

    goto :goto_a5

    :cond_a4
    move v4, v2

    :goto_a5
    if-eqz p3, :cond_c4

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v10, [F

    fill-array-data v1, :array_f6

    invoke-static {v15, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v10, Lcom/android/launcher3/OplusCellLayout$7;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v9

    move v5, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout$7;-><init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;IIILcom/android/launcher3/views/BaseDragLayer$LayoutParams;)V

    invoke-virtual {v8, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v1, v14

    move-object v3, v15

    goto :goto_de

    :cond_c4
    new-array v0, v10, [F

    fill-array-data v0, :array_fe

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/s0;

    move-object v8, v2

    move v10, v1

    move-object/from16 v13, p2

    move-object v1, v14

    move v14, v4

    move-object v3, v15

    move-object v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/s0;-><init>(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v8, v0

    :goto_de
    const-wide/16 v4, 0xc8

    invoke-virtual {v8, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher3/OplusCellLayout$8;

    invoke-direct {v0, v7, v3, v1}, Lcom/android/launcher3/OplusCellLayout$8;-><init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;Lcom/android/launcher/Launcher;)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v7, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v0, v8}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->of(Landroid/animation/ValueAnimator;)V

    iget-object v0, v7, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->start()V

    return-void

    :array_f6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_fe
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public static synthetic b(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/OplusCellLayout;->lambda$animateChildHorizontally$0(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(IIIILandroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher3/OplusCellLayout;->lambda$animateLastChildToAdd$1(IIIILandroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/OplusCellLayout;->lambda$animateLastChildToRemove$2(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private findBatchReorderSolution(IIII[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[I",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v8, p8

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v10

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "findBatchReorderSolution -- result = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p5, v9

    const-string v2, "OplusCellLayout"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_39
    move-object v0, p0

    move-object v1, v10

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->rearrangementExistsForBatchIcon([III[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_4e

    iput-boolean v9, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_59

    :cond_4e
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    aget v1, v10, v9

    iput v1, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v0, v10, v0

    iput v0, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :goto_59
    return-object v8
.end method

.method private findCellAndMoveItToPosition([IIIIIZZ)V
    .registers 23

    move-object v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p7

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e2

    instance-of v0, v1, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v0, :cond_e2

    move/from16 v0, p4

    :goto_15
    iget-object v3, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v3, v3, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    const/4 v10, 0x0

    aget v4, v9, v10

    aget-object v3, v3, v4

    const/4 v11, 0x1

    aget v4, v9, v11

    aget-boolean v3, v3, v4

    if-nez v3, :cond_c5

    move/from16 v3, p5

    if-ne v0, v3, :cond_2b

    goto/16 :goto_c7

    :cond_2b
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v2, "fillUpEmptyCell -- move child = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", from =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCellLayout"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v2, v0, v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    if-eqz p6, :cond_91

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    iget v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    aget v2, v9, v10

    aget v3, v9, v11

    const/16 v4, 0x190

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    iput v13, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v14, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    goto :goto_ad

    :cond_91
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean v11, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    aget v2, v9, v10

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v2, v9, v11

    iput v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput-boolean v10, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :goto_ad
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    aget v1, v9, v10

    aget v2, v9, v11

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object p0, v0

    move/from16 p1, v1

    move/from16 p2, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    goto :goto_e2

    :cond_c5
    move/from16 v3, p5

    :goto_c7
    invoke-virtual {p0, v9, v2}, Lcom/android/launcher3/OplusCellLayout;->updateCellToNextPos([IZ)V

    if-eqz v2, :cond_d3

    aget v0, v9, v11

    iget v4, v8, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v0, v4, :cond_d8

    return-void

    :cond_d3
    aget v0, v9, v11

    if-gez v0, :cond_d8

    return-void

    :cond_d8
    aget v0, v9, v10

    aget v4, v9, v11

    iget v5, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    goto/16 :goto_15

    :cond_e2
    :goto_e2
    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 24

    move-object v9, p0

    move-object/from16 v0, p7

    move-object/from16 v10, p8

    const/4 v1, 0x2

    new-array v11, v1, [I

    new-array v12, v1, [I

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v1, :cond_2d

    instance-of v1, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v1, :cond_2d

    instance-of v1, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v1, :cond_2d

    invoke-static/range {p7 .. p7}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, v14}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v11

    aput p5, v12, v14

    aput p6, v12, v13

    goto :goto_3f

    :cond_2d
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v11

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    :goto_3f
    aget v0, v11, v14

    if-ltz v0, :cond_5d

    aget v0, v11, v13

    if-ltz v0, :cond_5d

    invoke-virtual {p0, v10, v14}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    aget v0, v11, v14

    iput v0, v10, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v0, v11, v13

    iput v0, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aget v0, v12, v14

    iput v0, v10, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    aget v0, v12, v13

    iput v0, v10, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput-boolean v13, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_5f

    :cond_5d
    iput-boolean v14, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    :goto_5f
    return-object v10
.end method

.method private findConfigurationNoShuffle(IIIIILcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 15

    const/4 v0, 0x2

    new-array v6, v0, [I

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v7}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object p1

    goto :goto_18

    :cond_f
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    :goto_18
    aget p2, p1, v7

    if-ltz p2, :cond_49

    const/4 p2, 0x1

    aget p3, p1, p2

    if-ltz p3, :cond_49

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p5, p3}, Lcom/android/launcher3/OplusCellLayout;->findConsecutiveEmptyCells([IILjava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {p0, p6, v7}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, p6, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p6, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput-boolean p2, p6, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_4b

    :cond_46
    iput-boolean v7, p6, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_4b

    :cond_49
    iput-boolean v7, p6, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    :goto_4b
    return-object p6
.end method

.method private findFirstEmptyCellWithStart(II)[I
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    const/4 v1, 0x0

    :goto_7
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v2, :cond_26

    :goto_b
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v2, :cond_22

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v2, v2, p1

    aget-boolean v2, v2, p2

    if-nez v2, :cond_1f

    aput p1, v0, v1

    const/4 p0, 0x1

    aput p2, v0, p0

    return-object v0

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_22
    add-int/lit8 p2, p2, 0x1

    move p1, v1

    goto :goto_7

    :cond_26
    return-object v0

    nop

    :array_28
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private findSequenceReorderSolutionForResize(IIIILandroid/view/View;[I)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 29

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    new-instance v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v9}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {v10, v9, v0}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    iget-object v1, v10, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v10, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    iget-object v1, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    const/16 v16, 0x0

    const-string v8, "OplusCellLayout"

    if-nez v1, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findSequenceReorderSolutionForResize: CellAndSpan is null,dragView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v16

    :cond_3f
    const/4 v2, 0x2

    new-array v7, v2, [I

    iget v3, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v4, 0x1

    if-gt v3, v12, :cond_55

    if-ne v3, v12, :cond_4e

    iget v5, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    if-le v5, v11, :cond_4e

    goto :goto_55

    :cond_4e
    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput v1, v7, v0

    aput v3, v7, v4

    goto :goto_59

    :cond_55
    :goto_55
    aput v11, v7, v0

    aput v12, v7, v4

    :goto_59
    const-string v1, "findSequenceReorderSolutionForResize -- startCell = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "Drag"

    invoke-static {v6, v8, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v5, v2, [I

    aput v11, v5, v0

    aput v12, v5, v4

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object v3, v9

    move-object v4, v7

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v6, p3

    move-object/from16 v20, v7

    move/from16 v7, p4

    move-object/from16 v21, v8

    move/from16 v8, v17

    move-object v15, v9

    move-object/from16 v9, p6

    invoke-interface/range {v0 .. v9}, Lcom/android/launcher/layout/LayoutUtilsInterface;->getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[IIIZ[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->sortConfigurationByCellXY()V

    iget-object v1, v10, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, v11, v13

    add-int v4, v12, v14

    invoke-direct {v2, v11, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object/from16 v6, p5

    move-object v7, v15

    if-ne v5, v6, :cond_c7

    :goto_c3
    move-object/from16 p0, v4

    goto/16 :goto_139

    :cond_c7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v8, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v8, :cond_d2

    goto :goto_c3

    :cond_d2
    iget-object v8, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/CellAndSpan;

    iget v9, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v10, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v15, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v15, v9

    move-object/from16 p0, v4

    iget v4, v8, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v4, v10

    invoke-virtual {v3, v9, v10, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v8, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/4 v9, 0x1

    aget v10, v20, v9

    if-gt v4, v10, :cond_11f

    aget v9, v20, v9

    if-ne v4, v9, :cond_fc

    iget v9, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v10, 0x0

    aget v10, v20, v10

    if-lt v9, v10, :cond_fc

    goto :goto_11f

    :cond_fc
    iget v9, v8, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int v10, v4, v9

    const/4 v15, 0x1

    aget v6, v20, v15

    if-gt v10, v6, :cond_114

    add-int/2addr v4, v9

    aget v6, v20, v15

    if-ne v4, v6, :cond_139

    iget v4, v8, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v6, v8, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v6

    const/4 v6, 0x0

    aget v6, v20, v6

    if-lt v4, v6, :cond_139

    :cond_114
    instance-of v4, v5, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v4, :cond_139

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_139

    return-object v16

    :cond_11f
    :goto_11f
    instance-of v4, v5, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v4, :cond_12a

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_139

    return-object v16

    :cond_12a
    invoke-virtual {v0, v5}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->addView(Landroid/view/View;)V

    iget-object v4, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    :cond_139
    :goto_139
    move-object/from16 v4, p0

    move-object v15, v7

    goto/16 :goto_b2

    :cond_13e
    move-object v7, v15

    const-string v2, "createAreaForResize -- mIntersectingViews.size = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    move-object/from16 v3, v21

    invoke-static {v4, v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_166

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->shiftAndMarkCells(ZILcom/android/launcher3/util/GridOccupancy;)V

    goto :goto_167

    :cond_166
    const/4 v2, 0x1

    :goto_167
    const/4 v0, 0x0

    aget v0, v18, v0

    if-ltz v0, :cond_17a

    aget v0, v18, v2

    if-ltz v0, :cond_17a

    iput-boolean v2, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    iput v11, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v12, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v13, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v14, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :cond_17a
    return-object v7
.end method

.method private getLastVisualView(Landroid/view/View;Z)Landroid/widget/ImageView;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_fc

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/Launcher;

    sget-object v3, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v3, v1, v4}, Lcom/android/common/util/BitmapUtils;->viewToBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/launcher3/OplusCellLayout;->mVisualViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_fc

    if-eqz v2, :cond_fc

    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/LauncherState;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object v4

    iget v12, v4, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/android/launcher3/OplusCellLayout;->mVisualViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v15, 0x0

    invoke-direct {v14, v15, v15}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    iput v4, v14, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    float-to-int v4, v4

    iput v4, v14, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v11, 0x1

    iput-boolean v11, v14, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-eqz p2, :cond_6d

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {v4, v1, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v4, v0, v15

    iput v4, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    aget v0, v0, v11

    iput v0, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    goto :goto_c3

    :cond_6d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    new-instance v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-direct {v10, v5, v4, v11, v11}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v6, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    const/16 v16, 0x0

    move-object v4, v10

    move-object/from16 v17, v7

    move v7, v3

    move-object v15, v10

    move-object/from16 v10, v17

    move/from16 v17, v11

    move-object/from16 v11, v16

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher3/CellLayout$LayoutParams;->setup(IIZIILandroid/graphics/Point;Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    if-eqz v3, :cond_b1

    iget v4, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    iput v4, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    goto :goto_bf

    :cond_b1
    iget v4, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v5, v5, v17

    add-int/2addr v4, v5

    iget v0, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    iput v0, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    :goto_bf
    iget v0, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v0, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :goto_c3
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    if-eqz v3, :cond_e1

    int-to-float v0, v0

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    sub-float/2addr v3, v1

    sub-float/2addr v0, v3

    float-to-int v0, v0

    :cond_e1
    iget v1, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget v0, v14, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_fd

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_fd

    :cond_fc
    const/4 v13, 0x0

    :cond_fd
    :goto_fd
    return-object v13
.end method

.method private init()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v1, :cond_16

    new-instance v1, Lcom/android/launcher/TwoPanelCellLayoutBgRender;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher/TwoPanelCellLayoutBgRender;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V

    goto :goto_1b

    :cond_16
    new-instance v1, Lcom/android/launcher/SinglePanelCellLayoutBgRender;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher/SinglePanelCellLayoutBgRender;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V

    :goto_1b
    iput-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    new-instance v0, Lcom/android/launcher3/card/reorder/CardDragReorder;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/OplusCellLayout;)V

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    return-void
.end method

.method public static invertCell(III)I
    .registers 3

    sub-int/2addr p2, p0

    sub-int/2addr p2, p1

    return p2
.end method

.method private static synthetic lambda$animateChildHorizontally$0(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p4

    int-to-float p1, p1

    mul-float/2addr v0, p1

    int-to-float p1, p2

    mul-float/2addr p4, p1

    add-float/2addr p4, v0

    float-to-int p1, p4

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private static synthetic lambda$animateLastChildToAdd$1(IIIILandroid/widget/ImageView;ILandroid/animation/ValueAnimator;)V
    .registers 8

    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p6

    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p1, p6

    add-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p1, p2

    mul-float/2addr v0, p1

    int-to-float p1, p3

    mul-float/2addr p6, p1

    add-float/2addr p6, v0

    float-to-int p1, p6

    sub-int/2addr p0, p5

    int-to-float p0, p0

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setTranslationX(F)V

    int-to-float p0, p1

    invoke-virtual {p4, p0}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private static synthetic lambda$animateLastChildToRemove$2(IIIILandroid/widget/ImageView;ILcom/android/launcher3/views/BaseDragLayer$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 9

    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Float;

    invoke-virtual {p7}, Ljava/lang/Float;->floatValue()F

    move-result p7

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p7

    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p1, p7

    add-float/2addr p1, p0

    float-to-int p0, p1

    int-to-float p1, p2

    mul-float/2addr v0, p1

    int-to-float p1, p3

    mul-float/2addr p7, p1

    add-float/2addr p7, v0

    float-to-int p1, p7

    sub-int p2, p0, p5

    int-to-float p2, p2

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    int-to-float p2, p1

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setTranslationY(F)V

    iput p0, p6, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iput p1, p6, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    return-void
.end method

.method private pushViewsToTempLocationForBatchIcons(Ljava/util/ArrayList;[I[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[I[I",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p6

    iget-object v10, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_128

    new-array v11, v0, [I

    fill-array-data v11, :array_130

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v7

    move-object v6, v11

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/layout/LayoutUtilsInterface;->findEmptyCells(Lcom/android/launcher3/CellLayout;[I[II[I[I)Z

    move-result v0

    const-string v12, "OplusCellLayout"

    const/4 v13, 0x0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "pushViewsToTempLocationForBatchIcons -- can not find space!"

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_2f
    const-string/jumbo v0, "pushViewsToTempLocationForBatchIcons -- firstEmpty = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastEmpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p6

    move-object v4, v7

    move-object v5, v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher/layout/LayoutUtilsInterface;->getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[I[I[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->sortConfigurationByCellXY()V

    iget-object v1, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v3, :cond_7f

    goto :goto_6e

    :cond_7f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_8a

    goto :goto_6e

    :cond_8a
    invoke-virtual {v0, v2}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->isIntersectedView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-virtual {v0, v2}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->addView(Landroid/view/View;)V

    iget-object v3, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v10, v2, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_6e

    :cond_9f
    iget-object v1, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_bb

    const-string/jumbo v3, "pushViewsToTempLocationForBatchIcons -- reorderSuccess = "

    const-string v4, ", mIntersectingViews.size = "

    invoke-static {v3, v1, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-static {v4, v3, v12}, Lcom/android/launcher/f;->a(Ljava/util/ArrayList;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_bb
    if-nez v1, :cond_de

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    iget-object v0, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_126

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v10, v3, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_c6

    :cond_de
    invoke-virtual {v0, v10}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->shiftAndMarkCells(Lcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusCellLayout;->printCellOccupy(Z)V

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v3

    if-eqz v3, :cond_111

    invoke-virtual {v0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->getEmptyCellOverShift()[I

    move-result-object v0

    aget v3, v0, v13

    if-ltz v3, :cond_106

    aget v3, p2, v2

    aget v4, v0, v2

    if-gt v3, v4, :cond_104

    aget v3, p2, v2

    aget v4, v0, v2

    if-ne v3, v4, :cond_106

    aget v3, p2, v13

    aget v4, v0, v13

    if-le v3, v4, :cond_106

    :cond_104
    move v3, v2

    goto :goto_107

    :cond_106
    move v3, v13

    :goto_107
    if-eqz v3, :cond_111

    aget v3, v0, v13

    aput v3, p2, v13

    aget v0, v0, v2

    aput v0, p2, v2

    :cond_111
    const-string/jumbo v0, "pushViewsToTempLocationForBatchIcons, targetCell: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_126
    return v1

    nop

    :array_128
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_130
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private rearrangementExistsForBatchIcon([III[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III[I",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 p2, 0x0

    aget p3, p1, p2

    if-ltz p3, :cond_33

    const/4 p3, 0x1

    aget v0, p1, p3

    if-gez v0, :cond_b

    goto :goto_33

    :cond_b
    aget v0, p1, p2

    aget p3, p1, p3

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p3

    instance-of p3, p3, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p3, :cond_18

    return p2

    :cond_18
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->pushViewsToTempLocationForBatchIcons(Ljava/util/ArrayList;[I[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result p0

    return p0

    :cond_33
    :goto_33
    const-string p0, "OplusCellLayout"

    const-string/jumbo p1, "rearrangementExistsForBatchIcon targetCell is invalid!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method private sequenceRearrangementExists([III[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 23

    move-object v0, p0

    move-object/from16 v7, p5

    move-object/from16 v9, p7

    const/4 v1, 0x0

    aget v2, p1, v1

    const-string v3, "OplusCellLayout"

    if-ltz v2, :cond_fd

    const/4 v2, 0x1

    aget v4, p1, v2

    if-gez v4, :cond_13

    goto/16 :goto_fd

    :cond_13
    aget v4, p1, v1

    aget v5, p1, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v5, :cond_22

    if-eq v4, v7, :cond_22

    return v1

    :cond_22
    iget-object v4, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_3b

    iget-object v4, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    if-eqz v4, :cond_3b

    aget v5, p1, v1

    iput v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v5, p1, v2

    iput v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    :cond_3b
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->getLayoutUtils()Lcom/android/launcher/layout/LayoutUtilsInterface;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    aget v6, p1, v1

    aget v8, p1, v2

    aget v10, p1, v1

    add-int v10, v10, p2

    aget v2, p1, v2

    add-int v2, v2, p3

    invoke-direct {v5, v6, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5f
    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-ne v8, v7, :cond_6e

    goto :goto_5f

    :cond_6e
    iget-object v10, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v12, v10, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v13, v10, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v14, v10, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v14, v12

    iget v10, v10, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v10, v13

    invoke-virtual {v2, v12, v13, v14, v10}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v5, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_5f

    iget-boolean v10, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v10, :cond_94

    return v1

    :cond_94
    if-eqz p6, :cond_9b

    instance-of v10, v8, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v10, :cond_9b

    return v1

    :cond_9b
    if-nez p6, :cond_a8

    invoke-interface {v4}, Lcom/android/launcher/layout/LayoutUtilsInterface;->orderIconsFree()Z

    move-result v10

    if-nez v10, :cond_a8

    aget v10, p4, v1

    if-gtz v10, :cond_a8

    goto :goto_5f

    :cond_a8
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_ae
    const-string/jumbo v1, "sequenceRearrangementExists -- targetCell = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIntersectingViews.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/OplusCellLayout;->pushViewsToTempLocation(Lcom/android/launcher/layout/LayoutUtilsInterface;Ljava/util/ArrayList;[I[IIILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    return v0

    :cond_fd
    :goto_fd
    const-string/jumbo v0, "sequenceRearrangementExists targetCell is invalid!"

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private shouldDrawCellLayout()Z
    .registers 9

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    invoke-virtual {v3}, Lcom/android/launcher/AbsCellLayoutBgRender;->isAnimating()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v4

    sget-object v5, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseDraggingActivity;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3c

    move v5, v7

    goto :goto_3d

    :cond_3c
    move v5, v6

    :goto_3d
    or-int/2addr v4, v5

    :cond_3e
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v5

    if-nez v4, :cond_56

    if-nez v3, :cond_56

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;->getAlpha()I

    move-result p0

    if-lez p0, :cond_69

    :cond_56
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpenInDragging()Z

    move-result p0

    if-nez p0, :cond_69

    sub-int p0, v2, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v5, :cond_69

    return v7

    :cond_69
    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-nez p0, :cond_84

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p0

    if-eqz p0, :cond_82

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->shouldSkipDrawWorkspace()Z

    move-result p0

    if-nez p0, :cond_82

    goto :goto_84

    :cond_82
    move p0, v6

    goto :goto_85

    :cond_84
    :goto_84
    move p0, v7

    :goto_85
    const-string v3, "OplusCellLayout"

    if-nez p0, :cond_c0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v4

    if-eqz v4, :cond_c0

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseDraggingActivity;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-nez v4, :cond_a3

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BaseDraggingActivity;->isFromState(Lcom/android/launcher3/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_c0

    :cond_a3
    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v4

    if-eqz v4, :cond_c0

    if-lt v1, v2, :cond_b1

    add-int v4, v2, v5

    if-lt v1, v4, :cond_c0

    :cond_b1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_bf

    const-string/jumbo p0, "shouldDrawCellLayout -- pageIndex: "

    const-string v0, ", currentPage: "

    invoke-static {p0, v1, v0, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    :cond_bf
    return v6

    :cond_c0
    const/4 v4, 0x2

    if-nez p0, :cond_10a

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p0

    if-nez p0, :cond_10a

    if-lt v1, v2, :cond_d5

    add-int/2addr v5, v2

    sub-int/2addr v5, v7

    if-gt v1, v5, :cond_d5

    move p0, v7

    goto :goto_d6

    :cond_d5
    move p0, v6

    :goto_d6
    if-nez p0, :cond_109

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_105

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "shouldDrawCellLayout,pIndex:%d,cPage:%d,nPage:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_105
    if-eq p0, v2, :cond_108

    move v6, v7

    :cond_108
    move p0, v6

    :cond_109
    return p0

    :cond_10a
    sget-object p0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_15b

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq v1, v2, :cond_15b

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-eq v1, p0, :cond_15b

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-eq p0, v1, :cond_15b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_15a

    new-array p0, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    aput-object v1, p0, v6

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    aput-object v0, p0, v7

    const-string/jumbo v0, "shouldDrawCellLayout,in OVERVIEW-- state:%s -- lastState:%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15a
    return v6

    :cond_15b
    return v7
.end method

.method private updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V
    .registers 6

    if-eqz p1, :cond_b

    iput p4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput p5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_f

    :cond_b
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    :goto_f
    iput p4, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    iput p5, p3, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    return-void
.end method


# virtual methods
.method public addLastChildFromPreviousPageToFirst(Landroid/view/View;I)Z
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChild(Z)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->existsEmptyCell()Z

    move-result v4

    const/4 v10, 0x1

    if-nez v4, :cond_21

    if-nez v3, :cond_21

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    move v3, v10

    goto :goto_22

    :cond_21
    move v3, v0

    :goto_22
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v1

    if-nez v1, :cond_30

    const-string p0, "OplusCellLayout"

    const-string p1, "addLastChildFromPreviousPageToFirst -- modelWriter is null, can\'t modify data in memory, return!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v3, :cond_59

    invoke-virtual {p0, p2}, Lcom/android/launcher3/OplusCellLayout;->updateDatabases(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v12

    const/16 v4, -0x64

    aget v6, v12, v0

    aget v7, v12, v10

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v3, p1

    move v5, p2

    invoke-interface/range {v2 .. v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    const/16 v6, -0x64

    aget v8, v12, v0

    aget v9, v12, v10

    move-object v4, v1

    move-object v5, v11

    move v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    :cond_59
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->addLastChildToNextScreen()V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    return v10
.end method

.method public addLastChildToNextScreen()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    const-string v1, "OplusCellLayout"

    if-nez v0, :cond_14

    const-string p0, "failed to addLastChildToNextScreen, workspace is null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/launcher3/OplusCellLayout;->mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    if-eqz v2, :cond_35

    iget-object v4, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz v4, :cond_35

    invoke-virtual {v2}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->getItem()Lcom/android/launcher3/card/reorder/ExtrusionItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/reorder/ExtrusionItem;->addToAfterPage()Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;->onPostAddToAfterPage(Z)V

    iput-object v3, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    iput-object v3, p0, Lcom/android/launcher3/OplusCellLayout;->mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    goto :goto_5b

    :cond_35
    iget-object v2, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz v2, :cond_5b

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/OplusWorkspace;->addLastChildToNextScreen(Lcom/android/launcher3/CellLayout;Landroid/view/View;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addLastChildToNextScreen -- isAddLastChildToNextScreenSuccess = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Drag"

    invoke-static {v4, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_58

    iput-object v3, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    goto :goto_5b

    :cond_58
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->addLastHiddenAppChild()V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public addLastHiddenAppChild()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object v7, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz v7, :cond_74

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v8

    :goto_1b
    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v1

    if-nez v1, :cond_53

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_53

    if-nez v2, :cond_53

    const/4 v1, 0x4

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    invoke-direct {p0, v1, v8}, Lcom/android/launcher3/OplusCellLayout;->getLastVisualView(Landroid/view/View;Z)Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    :cond_47
    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-eqz v1, :cond_62

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    invoke-direct {p0, v7, v1, v0}, Lcom/android/launcher3/OplusCellLayout;->animateLastChildToAdd(Landroid/view/View;Landroid/widget/ImageView;Z)V

    goto :goto_62

    :cond_53
    const/4 v4, -0x1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v6, 0x1

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    :cond_62
    :goto_62
    const-string v0, "addLastHiddenAppChild -- add to page "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    const-string v2, "OplusCellLayout"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    :cond_74
    return-void
.end method

.method public addVirtualFolderView(Lcom/android/launcher3/folder/FolderIcon;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mVirtualFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    :cond_4
    return-void
.end method

.method public animateChildHorizontally(Landroid/view/View;IIZ)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v0, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_13

    return-void

    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v11, v5, v6}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iget-object v5, v1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    iget-object v5, v1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    iget-object v5, v1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    iget v13, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v14, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v5, v1, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v6, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v7, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v8, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v8, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v16, 0x1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v22, v10

    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iput v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v0, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v2, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v2, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p4, :cond_91

    iget-object v0, v1, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    add-int/2addr v0, v13

    goto :goto_93

    :cond_91
    iget v0, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    :goto_93
    iget v2, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v13, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    if-eqz p4, :cond_a1

    iput v14, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v3, v22

    iput v3, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_a1
    if-ne v13, v0, :cond_a8

    if-ne v14, v2, :cond_a8

    iput-boolean v5, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    return-void

    :cond_a8
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_e2

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v2, 0x1c2

    invoke-virtual {v6, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v2, v11, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw/a;

    invoke-direct {v2, v11, v13, v0, v4}, Lw/a;-><init>(Lcom/android/launcher3/CellLayout$LayoutParams;IILandroid/view/View;)V

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    new-instance v7, Lcom/android/launcher3/OplusCellLayout$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v11

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout$1;-><init>(Lcom/android/launcher3/OplusCellLayout;ZLcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_e2
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .registers 31

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_134

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v12, v14, Lcom/android/launcher3/folder/big/BigFolderIcon;

    iget v0, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v1, v2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v15, v0, v1}, Lcom/android/launcher3/CellLayout$LayoutParams;->updateSpanXY(II)V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_5b

    iget v0, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellX:I

    move/from16 v4, p2

    if-ne v0, v4, :cond_48

    iget v0, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->reorderToCellY:I

    move/from16 v5, p3

    if-ne v0, v5, :cond_4a

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    return v11

    :cond_48
    move/from16 v5, p3

    :cond_4a
    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_5b
    move/from16 v4, p2

    move/from16 v5, p3

    :goto_5f
    iget v8, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v9, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz p7, :cond_9c

    if-eqz p6, :cond_6e

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_70

    :cond_6e
    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_70
    iget v1, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v7, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v11, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v22, v3

    iget v3, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v7

    move/from16 v19, v11

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    iget v1, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v21, 0x1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, v1

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    const/4 v0, 0x1

    goto :goto_9f

    :cond_9c
    move/from16 v22, v3

    move v0, v11

    :goto_9f
    iput-boolean v0, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v11, v22

    move-object v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout;->updateCellXy(ZLcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$LayoutParams;II)V

    invoke-virtual {v6, v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget v4, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iget v6, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iget v7, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v8, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    iput v9, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    iput v10, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v11, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v8, v4, :cond_d1

    if-ne v9, v6, :cond_d1

    if-ne v10, v7, :cond_d1

    if-ne v11, v5, :cond_d1

    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v3

    :cond_d1
    const/4 v3, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_136

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    move/from16 v0, p4

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/android/launcher/togglebar/LayoutSettingsHelper;->GRID_CHANGE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/OplusCellLayout$5;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move-object v13, v2

    move-object v2, v15

    move/from16 v16, v3

    move v3, v8

    move/from16 v17, v5

    move v5, v9

    move v8, v7

    move v7, v10

    move v9, v11

    move/from16 v10, v17

    move-object/from16 v11, p1

    move/from16 v16, v12

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher3/OplusCellLayout$5;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;IIIIIIIILandroid/view/View;Z)V

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    new-instance v3, Lcom/android/launcher3/OplusCellLayout$6;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v15, v4, v2}, Lcom/android/launcher3/OplusCellLayout$6;-><init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v16, :cond_132

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const-string v1, "BigFolderRelayout"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->notifyWhenAnimate(ZLjava/lang/String;)V

    goto :goto_133

    :cond_132
    const/4 v2, 0x1

    :goto_133
    return v2

    :cond_134
    const/4 v0, 0x0

    return v0

    :array_136
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public animateDragBgTip(ZZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher/AbsCellLayoutBgRender;->animateBackground(ZZZ)V

    return-void
.end method

.method public beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .registers 4

    return-void
.end method

.method public canAnimateChildWhenRevert(Landroid/view/View;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/reorder/CardDragReorder;->isInExtrusionList(Landroid/view/View;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public cancelBackgroundAnimation()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->cancelAnimation()V

    return-void
.end method

.method public cellToPoint(II[I)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    :goto_15
    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1b

    :cond_19
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    :goto_1b
    move v5, v0

    goto :goto_1e

    :cond_1d
    move v5, v1

    :goto_1e
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/OplusCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    aput p2, p3, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    aput p0, p3, v1

    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v0, p1

    sub-int p1, v0, p3

    :cond_d
    move v1, p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-void
.end method

.method public checkChildContainerScale(Lcom/android/launcher3/CellLayout$LayoutParams;[I)V
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPivotY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v1

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_4f

    new-instance v4, Landroid/graphics/PointF;

    aget v5, v0, v2

    aget v0, v0, v3

    invoke-direct {v4, v5, v0}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p1, :cond_3d

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v7, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v9, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v10, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v6, p0

    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/OplusCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    invoke-static {v0, v1, v4}, Lcom/android/common/util/PointUtils;->offsetRectAboutPoint(Landroid/graphics/Rect;FLandroid/graphics/PointF;)V

    :cond_3d
    if-eqz p2, :cond_4f

    aget p0, p2, v2

    aget p1, p2, v3

    invoke-static {p0, p1, v1, v4}, Lcom/android/common/util/PointUtils;->offsetPointAboutPoint(IIFLandroid/graphics/PointF;)Landroid/graphics/Point;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Point;->x:I

    aput p1, p2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    aput p0, p2, v3

    :cond_4f
    return-void
.end method

.method public commitResizedWidget(Landroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget p1, p2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget p1, p2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput p1, p0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    return-void
.end method

.method public createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .registers 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p5

    move/from16 v0, p7

    instance-of v1, v9, Lcom/android/launcher3/folder/FolderIcon;

    const-string v12, "OplusCellLayout"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_4d

    const/4 v10, 0x2

    new-array v11, v10, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout;->regionToCenterPoint(IIII[I)V

    iget-object v0, v6, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    const/4 v1, 0x1

    aget v2, v11, v14

    aget v3, v11, v13

    new-array v11, v10, [I

    aput v7, v11, v14

    aput v8, v11, v13

    new-array v10, v10, [I

    const/4 v15, 0x2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v11

    move v11, v15

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/card/reorder/CardDragReorder;->perform(ZIIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    if-eqz v0, :cond_46

    goto :goto_47

    :cond_46
    move v13, v14

    :goto_47
    const-string v0, "createAreaForResize: result = "

    invoke-static {v0, v13, v12}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v13

    :cond_4d
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-super/range {p0 .. p7}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v0

    return v0

    :cond_58
    const-string v1, "createAreaForResize -- cell:["

    const-string v2, ", "

    const-string v3, "], span:["

    invoke-static {v1, v7, v2, v8, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], commit = "

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static {v1, v4, v2, v5, v3}, Landroidx/constraintlayout/core/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, "Drag"

    invoke-static {v1, v0, v2, v12}, Lcom/android/launcher/d0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/OplusCellLayout;->findSequenceReorderSolutionForResize(IIIILandroid/view/View;[I)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v1

    if-eqz v1, :cond_a3

    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_a3

    invoke-virtual {v6, v13}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    invoke-virtual {v6, v1, v9}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v6, v13}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {v6, v1, v9, v0}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-nez v0, :cond_8e

    invoke-static {}, Lcom/android/launcher3/AppWidgetResizeFrame;->isStartDragging()Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_8e
    invoke-virtual {v6, v9, v1}, Lcom/android/launcher3/OplusCellLayout;->commitResizedWidget(Landroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-virtual {v6, v14}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {v6, v14}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    :cond_9b
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-boolean v0, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v0

    :cond_a3
    return v14
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->shouldDrawCellLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public dispatchGetDisplayList()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->shouldDrawCellLayout()Z

    move-result v0

    if-eqz v0, :cond_11

    :try_start_6
    invoke-super {p0}, Landroid/view/ViewGroup;->dispatchGetDisplayList()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_11

    :catch_a
    const-string p0, "OplusCellLayout"

    const-string v0, "dispatchGetDisplayList() catching NullPointException "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/OplusCellLayout;->shouldDrawCellLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    goto :goto_15

    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :goto_15
    return-void
.end method

.method public fillEmptyAfterCreateOrAddToFolder(Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    return-void
.end method

.method public fillUpEmptyCell([I[IZZ)V
    .registers 15

    const-string v1, "fillUpEmptyCell -- emptyCell = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", passCell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isReverse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCellLayout"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v3, p1, v1

    if-ltz v3, :cond_f3

    aget v3, p1, v1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v3, v4, :cond_f3

    const/4 v3, 0x1

    aget v5, p1, v3

    if-ltz v5, :cond_f3

    aget v5, p1, v3

    iget v7, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-lt v5, v7, :cond_4c

    goto/16 :goto_f3

    :cond_4c
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v5, v5, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget v7, p1, v1

    aget-object v5, v5, v7

    aget v7, p1, v3

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_60

    const-string v0, "fillUpEmptyCell -- emptyCell is occupied!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_60
    aget v2, p1, v1

    aget v5, p1, v3

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    if-eqz p2, :cond_88

    aget v2, p2, v1

    aget v7, p2, v3

    mul-int/2addr v7, v4

    add-int/2addr v7, v2

    if-ne v5, v7, :cond_89

    invoke-virtual {p0, p1, p4}, Lcom/android/launcher3/OplusCellLayout;->updateCellToNextPos([IZ)V

    aget v2, p1, v1

    aget v0, p1, v3

    invoke-direct {p0, v2, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCellWithStart(II)[I

    move-result-object v0

    aget v2, v0, v1

    aget v4, v0, v3

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    if-gez v4, :cond_86

    return-void

    :cond_86
    move-object v2, v0

    goto :goto_8b

    :cond_88
    const/4 v7, -0x1

    :cond_89
    move-object v2, p1

    move v4, v5

    :goto_8b
    aget v0, v2, v3

    if-eqz p4, :cond_9a

    aget v5, v2, v1

    sub-int/2addr v5, v3

    if-gez v5, :cond_a4

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_a4

    :cond_9a
    aget v5, v2, v1

    add-int/2addr v5, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ne v5, v3, :cond_a4

    add-int/lit8 v0, v0, 0x1

    move v5, v1

    :cond_a4
    :goto_a4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_c6

    :goto_ab
    if-ltz v0, :cond_e2

    :goto_ad
    if-ltz v5, :cond_bf

    invoke-virtual {p0, v5, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_bc

    instance-of v3, v1, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v3, :cond_bc

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bc
    add-int/lit8 v5, v5, -0x1

    goto :goto_ad

    :cond_bf
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_ab

    :cond_c6
    :goto_c6
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v0, v3, :cond_e2

    :goto_ca
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v5, v3, :cond_de

    invoke-virtual {p0, v5, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_db

    instance-of v9, v3, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v9, :cond_db

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_db
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    :cond_de
    add-int/lit8 v0, v0, 0x1

    move v5, v1

    goto :goto_c6

    :cond_e2
    move-object v0, p0

    move-object v1, v2

    move v2, v4

    move v3, v7

    move-object v4, v8

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/card/reorder/CardReorderInject;->stepMoveItemsToEmptyCell(Lcom/android/launcher3/OplusCellLayout;[IIILjava/util/List;ZZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->addLastHiddenAppChild()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->updateItemLocationsInDatabase()V

    return-void

    :cond_f3
    :goto_f3
    const-string v0, "fillUpEmptyCell -- improper empty cell value!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public findAllCards()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/LauncherCardView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_17

    return-object v0

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v4, :cond_2b

    check-cast v3, Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2e
    return-object v0
.end method

.method public findCard([I)Lcom/android/launcher3/card/LauncherCardView;
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_13

    return-object v1

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v3, :cond_2b

    check-cast v2, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v2, p1}, Lcom/oplus/card/manager/domain/ICardView;->findCardView([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v2

    if-eqz v2, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->findCard([I)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object p0

    return-object p0
.end method

.method public findCellForSpanReverse([III)Z
    .registers 4

    if-nez p1, :cond_5

    const/4 p1, 0x2

    new-array p1, p1, [I

    :cond_5
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCellReverse([III)Z

    move-result p0

    return p0
.end method

.method public findConsecutiveEmptyCells([IILjava/util/ArrayList;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v0, v1

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v5

    mul-int/2addr v5, v4

    add-int/2addr v5, v2

    const-string v2, "OplusCellLayout"

    if-ltz v5, :cond_ad

    if-lt v5, v0, :cond_19

    goto/16 :goto_ad

    :cond_19
    const-string v4, "findConsecutiveEmptyCells -- targetCell = "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v5

    :goto_36
    const-string v4, "]"

    const-string v6, ", "

    const-string v7, "Drag"

    if-ge p1, v0, :cond_72

    iget v8, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    rem-int v9, p1, v8

    div-int v8, p1, v8

    iget-object v10, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v10, v10, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v10, v10, v9

    aget-boolean v10, v10, v8

    if-eqz v10, :cond_57

    invoke-virtual {p0, v9, v8}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v8, :cond_72

    goto :goto_6f

    :cond_57
    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_63

    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    const-string v10, "findConsecutiveEmptyCells 11 -- find:["

    invoke-static {v10, v9, v6, v8, v4}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p2, :cond_6f

    return v3

    :cond_6f
    :goto_6f
    add-int/lit8 p1, p1, 0x1

    goto :goto_36

    :cond_72
    sub-int/2addr v5, v3

    :goto_73
    if-ltz v5, :cond_ab

    iget p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    rem-int v0, v5, p1

    div-int p1, v5, p1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, v8, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v8, v8, v0

    aget-boolean v8, v8, p1

    if-eqz v8, :cond_90

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p1, :cond_8e

    goto :goto_a8

    :cond_8e
    const/4 p0, 0x0

    return p0

    :cond_90
    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_9c

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9c
    const-string v8, "findConsecutiveEmptyCells 22 -- find:["

    invoke-static {v8, v0, v6, p1, v4}, Landroidx/room/z;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p2, :cond_a8

    return v3

    :cond_a8
    :goto_a8
    add-int/lit8 v5, v5, -0x1

    goto :goto_73

    :cond_ab
    const/4 p0, 0x0

    return p0

    :cond_ad
    :goto_ad
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "findConsecutiveEmptyCells -- invalid param!!, searchIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxIndex = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public findFirstEmptyCell(Z)[I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/OplusCellLayout;->findCellForSpanReverse([III)Z

    move-result p1

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result p1

    :goto_12
    if-nez p1, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findFirstEmptyCell fail! this = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCellLayout"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    return-object v0

    nop

    :array_2c
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public findLastIconView([I)Landroid/view/View;
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_29

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v3, v2

    :goto_11
    if-ltz v3, :cond_26

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/OplusCellLayout;->isViewCanReorder(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 p0, 0x0

    aput v3, p1, p0

    aput v0, p1, v2

    return-object v4

    :cond_23
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_29
    return-object v1
.end method

.method public findSequenceReorderSolution(IIIIII[ILandroid/view/View;ZZZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .registers 29

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p12

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    const/4 v15, 0x1

    if-eqz p11, :cond_42

    aget v0, v14, v13

    aget v1, p7, v13

    sub-int/2addr v0, v1

    if-ltz v0, :cond_3f

    add-int v1, v0, v10

    sub-int/2addr v1, v15

    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_3f

    aput v0, v14, v13

    aget v0, p7, v13

    neg-int v0, v0

    aput v0, p7, v13

    goto :goto_42

    :cond_3f
    iput-boolean v13, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return-object v12

    :cond_42
    :goto_42
    const-string v0, "findSequenceReorderSolution -- begin, result = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "OplusCellLayout"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-virtual {v8, v13}, Lcom/android/launcher3/OplusCellLayout;->printCellOccupy(Z)V

    :cond_63
    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p10

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/OplusCellLayout;->sequenceRearrangementExists([III[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_c3

    move/from16 v3, p3

    if-le v10, v3, :cond_9f

    if-eq v9, v11, :cond_80

    if-eqz p9, :cond_9f

    :cond_80
    add-int/lit8 v5, v10, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v10

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/OplusCellLayout;->findSequenceReorderSolution(IIIIII[ILandroid/view/View;ZZZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_9f
    if-le v11, v9, :cond_c0

    add-int/lit8 v6, v11, -0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v11

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/OplusCellLayout;->findSequenceReorderSolution(IIIIII[ILandroid/view/View;ZZZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_c0
    iput-boolean v13, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_d1

    :cond_c3
    iput-boolean v15, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    aget v0, v14, v13

    iput v0, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aget v0, v14, v15

    iput v0, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v10, v12, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v11, v12, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    :goto_d1
    return-object v12
.end method

.method public getActivityContext()Lcom/android/launcher3/views/ActivityContext;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    return-object p0
.end method

.method public getAreaWidgets(Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/android/launcher3/card/IAreaWidget;",
            ">(",
            "Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_13

    return-object v1

    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v4, :cond_32

    check-cast v3, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {v3}, Lcom/android/launcher3/card/IAreaWidget;->getAreaType()Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    move-result-object v4

    if-ne p1, v4, :cond_32

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_35
    return-object v1
.end method

.method public getBgRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->getRenderParam()Lcom/android/launcher/AbsCellLayoutBgRender$RenderParam;

    move-result-object p0

    return-object p0
.end method

.method public getCardDragReorder()Lcom/android/launcher3/card/reorder/CardDragReorder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    return-object p0
.end method

.method public getDistanceFromWorkspaceCellVisualCenter(FF[I)F
    .registers 9

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v3, :cond_44

    aget v3, p3, v0

    aget p3, p3, v2

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v3, p3, v4}, Lcom/android/launcher3/OplusCellLayout;->cellToPoint(II[I)V

    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, p3}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-object p3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v0, v1, v0

    aget v1, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_3d

    const p0, 0x7f7fffff  # Float.MAX_VALUE

    return p0

    :cond_3d
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/folder/big/FolderManager;->getDistanceForBg(Landroid/graphics/Rect;FF)F

    move-result p0

    return p0

    :cond_44
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result p0

    return p0
.end method

.method public getDragCell()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    return-object p0
.end method

.method public getDragViewCellSpan()[I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    return-object p0
.end method

.method public getEmptyCells()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_29

    move v3, v1

    :goto_c
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v3, v4, :cond_26

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v4, v4, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v4, v4, v3

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_29
    return-object v0
.end method

.method public getItemInfoList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_2f

    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v5, :cond_2f

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gez v3, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_32
    return-object v1
.end method

.method public getLeftOrRightDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .registers 21

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v11, 0x0

    aget v1, v6, v11

    const/4 v12, 0x1

    aget v2, v6, v12

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aget v1, v6, v11

    aget v2, v6, v12

    iget-object v7, v8, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v1, v13, Landroid/graphics/Rect;->left:I

    iget v2, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/OplusCellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/2addr v0, v9

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v6, v2, :cond_6f

    if-ne v9, v2, :cond_70

    :cond_6f
    move v0, v11

    :cond_70
    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v7, v2, :cond_76

    if-ne v10, v2, :cond_77

    :cond_76
    move v1, v11

    :cond_77
    if-nez v0, :cond_80

    if-nez v1, :cond_80

    aput v12, p6, v11

    aput v11, p6, v12

    goto :goto_89

    :cond_80
    if-lez v0, :cond_84

    move v0, v12

    goto :goto_85

    :cond_84
    const/4 v0, -0x1

    :goto_85
    aput v0, p6, v11

    aput v11, p6, v12

    :goto_89
    return-void
.end method

.method public getOccupiedString(Z)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    if-eqz p1, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_17
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ******* occupied of screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", useTmpCoord = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " *********\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/launcher3/util/GridOccupancy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " ************ occupied  END ************"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    return p0
.end method

.method public getUseTempCoords()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusCellLayout;->mUseTempCoords:Z

    return p0
.end method

.method public hasEmptyCellAhead(II)Z
    .registers 5

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    if-ltz p2, :cond_17

    :goto_4
    if-ltz p1, :cond_14

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v1, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v1, v1, p1

    aget-boolean v1, v1, p2

    if-nez v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_14
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public injectAddViewToCellLayoutByUpdateIconDisplay(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_22

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusBubbleTextView;->updateIconDisplay(I)V

    goto :goto_22

    :cond_11
    if-nez p0, :cond_1a

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusBubbleTextView;->updateIconDisplay(I)V

    goto :goto_22

    :cond_1a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_22

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->updateIconDisplay(I)V

    :cond_22
    :goto_22
    return-void
.end method

.method public injectOnLayout(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mVirtualFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_1b

    add-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mVirtualFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    div-int/lit8 p3, p3, 0x2

    sub-int p4, p1, p3

    sub-int v0, p2, p3

    add-int/2addr p1, p3

    add-int/2addr p2, p3

    invoke-virtual {p0, p4, v0, p1, p2}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_1b
    return-void
.end method

.method public injectOnMeasureInit(II)V
    .registers 3

    iput p1, p0, Lcom/android/launcher3/OplusCellLayout;->mChildWidth:I

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mChildHeight:I

    return-void
.end method

.method public injectOnMeasureWH(II)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    if-gez v0, :cond_6

    iput p1, p0, Lcom/android/launcher3/OplusCellLayout;->mGridWidth:I

    :cond_6
    iget p1, p0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    if-gez p1, :cond_c

    iput p2, p0, Lcom/android/launcher3/OplusCellLayout;->mGridHeight:I

    :cond_c
    return-void
.end method

.method public injectSetFolderLeaveBehindCell(Landroid/view/View;)V
    .registers 14

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/DeviceProfile;->getCellSize()Landroid/graphics/Point;

    move-result-object p1

    iget v4, p1, Landroid/graphics/Point;->x:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFolderLeaveBehindCell: child is null, use cellWith = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusCellLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    goto :goto_47

    :cond_33
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    :goto_47
    return-void
.end method

.method public isItemCompactReordered()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    return p0
.end method

.method public isItemPlacementDirty()Z
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result p0

    return p0
.end method

.method public isLastChildSaved()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isLongshotUnsupported()Z
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_17

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public isOccupied(II)Z
    .registers 3

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public isTargetCellBehindAllIcons([IZ)Z
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->findLastIconView([I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1a

    invoke-virtual {p0, v2}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object p0

    if-eqz p2, :cond_19

    aget p2, p0, v2

    aput p2, p1, v2

    aget p0, p0, v3

    aput p0, p1, v3

    :cond_19
    return v2

    :cond_1a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v5, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v5, v0, v2

    iget v4, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v4, v0, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v5, "/"

    const-string v6, "OplusCellLayout"

    if-eqz v4, :cond_55

    const-string v4, "isTargetCellBehindAllIcons -- last child: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v3

    invoke-static {v4, v1, v6}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_55
    aget v1, v0, v2

    add-int/2addr v1, v3

    aget v0, v0, v3

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v4, v3

    if-le v1, v4, :cond_62

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :cond_62
    aget v4, p1, v3

    if-gt v4, v0, :cond_70

    aget v4, p1, v2

    if-lt v4, v1, :cond_6f

    aget v4, p1, v3

    if-ne v4, v0, :cond_6f

    goto :goto_70

    :cond_6f
    return v2

    :cond_70
    :goto_70
    if-nez p2, :cond_73

    return v3

    :cond_73
    iget-object p2, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object p2, p2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object p2, p2, v1

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_8a

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCellWithStart(II)[I

    move-result-object p0

    aget p2, p0, v2

    aput p2, p1, v2

    aget p0, p0, v3

    aput p0, p1, v3

    goto :goto_8e

    :cond_8a
    aput v1, p1, v2

    aput v0, p1, v3

    :goto_8e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_a7

    const-string p0, "isTargetCellBehindAllIcons -- target at last, adjusted targetCell: "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget p2, p1, v2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v3

    invoke-static {p0, p1, v6}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_a7
    return v3
.end method

.method public isViewCanReorder(Landroid/view/View;)Z
    .registers 2

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    instance-of p0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/card/reorder/CardReorderInject;->markCellsAsUnoccupiedForView(Lcom/android/launcher3/OplusCellLayout;Landroid/view/View;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    const-string/jumbo p1, "onDragEnter, screenId = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusCellLayout"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1}, Lcom/android/launcher/AbsCellLayoutBgRender;->animateBackground(ZZZ)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 5

    const-string/jumbo v0, "onDragExit -- screenId = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isItemPlacementDirty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->isItemPlacementDirty()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "OplusCellLayout"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->updateBackgroundForDrag(Z)V

    :cond_39
    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/launcher/AbsCellLayoutBgRender;->animateBackground(ZZZ)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    iget v1, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher/AbsCellLayoutBgRender;->drawBackground(Landroid/graphics/Canvas;I)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onDropChild(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChildAnimatorWrapper:Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->cancel()V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->addLastChildToNextScreen()V

    return-void
.end method

.method public onDropViewToCell(Lcom/android/launcher/Launcher;[ILandroid/view/View;I)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    const-string v9, "OplusCellLayout"

    if-nez v1, :cond_13

    const-string/jumbo v0, "onDrop, workspace is null!"

    invoke-static {v9, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "onDropViewToCell -- view:"

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    const/4 v10, 0x0

    aget v2, p2, v10

    const/4 v11, 0x1

    if-ltz v2, :cond_4a

    aget v2, p2, v11

    if-ltz v2, :cond_4a

    move v2, v11

    goto :goto_4b

    :cond_4a
    move v2, v10

    :goto_4b
    if-eqz v2, :cond_139

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    const-string/jumbo v2, "onDropViewToCell, tag info: "

    invoke-static {v2, v13, v9}, Lcom/android/common/util/x;->a(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    const/16 v2, -0x64

    move/from16 v3, p4

    if-ne v3, v2, :cond_93

    invoke-virtual {v1, v8}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    if-eq v2, v0, :cond_6c

    move v0, v11

    goto :goto_6d

    :cond_6c
    move v0, v10

    :goto_6d
    if-eqz v0, :cond_91

    instance-of v0, v8, Lcom/android/launcher3/card/LauncherCardView;

    if-eqz v0, :cond_79

    move-object v0, v8

    check-cast v0, Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0}, Lcom/oplus/card/manager/domain/ICardView;->markKeepResumedStateOnDetach()V

    :cond_79
    if-eqz v2, :cond_7e

    invoke-virtual {v2, v8}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_7e
    const/16 v2, -0x64

    aget v4, p2, v10

    aget v5, p2, v11

    iget v6, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v1

    move-object/from16 v1, p3

    move v3, v15

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    move-result v0

    goto :goto_a5

    :cond_91
    move v0, v10

    goto :goto_a5

    :cond_93
    const/16 v2, -0x64

    aget v4, p2, v10

    aget v5, p2, v11

    iget v6, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, v1

    move-object/from16 v1, p3

    move v3, v15

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)Z

    move-result v0

    :goto_a5
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    aget v3, p2, v10

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aget v3, p2, v10

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    aget v3, p2, v11

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aget v3, p2, v11

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput-boolean v11, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v1, :cond_d1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    goto :goto_d7

    :cond_d1
    const-string/jumbo v1, "parentChildren is null!"

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d7
    const-string/jumbo v1, "success = "

    const-string v3, " , info = "

    invoke-static {v1, v0, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/android/launcher3/model/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_11f

    iget v0, v13, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_105

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v3

    iget v5, v13, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v8, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    move-object v4, v13

    move v6, v15

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/model/OplusModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_14a

    :cond_105
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v12

    const/16 v14, -0x64

    iget v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_14a

    :cond_11f
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v12

    const/16 v14, -0x64

    iget v0, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v13, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/android/launcher3/model/OplusModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_14a

    :cond_139
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v2, p2, v10

    iget v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v1, p2, v11

    invoke-virtual {v0, v8}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :goto_14a
    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mOnLayoutFinishListener:Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;->onLayoutFinish()V

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mOnLayoutFinishListener:Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->onMeasure(II)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getActivityContext()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object p2, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v0, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget p2, p2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p2

    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    goto :goto_35

    :cond_26
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getActivityContext()Lcom/android/launcher3/views/ActivityContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/launcher3/OplusDeviceProfile;->updateAreaWidgetConfigIfNeed(IILcom/android/launcher3/OplusCellLayout;)V

    :goto_35
    return-void
.end method

.method public performBatchDragReorder(IIIILandroid/view/View;Ljava/util/List;[II)[I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/android/launcher/batchdrag/BatchDragView;",
            ">;[II)[I"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move/from16 v11, p8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v12

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v13, 0x1

    const/4 v7, 0x0

    if-eq v11, v2, :cond_21

    if-eq v11, v1, :cond_21

    if-ne v11, v0, :cond_3c

    :cond_21
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v3, v0, v7

    const/16 v4, -0x64

    if-eq v3, v4, :cond_3c

    iget-object v3, v9, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aget v5, v0, v7

    aput v5, v3, v7

    aget v5, v0, v13

    aput v5, v3, v13

    if-eq v11, v2, :cond_37

    if-ne v11, v1, :cond_59

    :cond_37
    aput v4, v0, v7

    aput v4, v0, v13

    goto :goto_59

    :cond_3c
    iget-object v6, v9, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->getLeftOrRightDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v9, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aget v2, v1, v7

    aput v2, v0, v7

    aget v1, v1, v13

    aput v1, v0, v13

    :cond_59
    :goto_59
    iget-object v5, v9, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    new-instance v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v8}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/OplusCellLayout;->findBatchReorderSolution(IIII[ILandroid/view/View;Ljava/util/List;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v8, ", cellY = "

    const-string v14, ", cellX = "

    const-string v15, "OplusCellLayout"

    if-eqz v0, :cond_ad

    const-string/jumbo v0, "performBatchDragReorder -- swapSolution = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v6}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->findConfigurationNoShuffle(IIIIILcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string/jumbo v1, "performBatchDragReorder -- noShuffleSolution = "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-static {v1, v2, v15}, Lcom/android/common/config/h;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_e6
    const/4 v1, 0x0

    iget-boolean v2, v7, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_ec

    goto :goto_f3

    :cond_ec
    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_f2

    move-object v7, v0

    goto :goto_f3

    :cond_f2
    move-object v7, v1

    :goto_f3
    invoke-virtual {v9, v13}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    const/4 v0, -0x1

    if-eqz v7, :cond_119

    iget v1, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    const/4 v2, 0x0

    aput v1, v12, v2

    iget v1, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput v1, v12, v13

    const/4 v1, 0x2

    if-ne v11, v1, :cond_11f

    iput v0, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v0, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v9, v7, v10}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    invoke-virtual {v9, v13}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    invoke-virtual {v9, v7, v10, v13}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-virtual {v9, v2}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    goto :goto_11f

    :cond_119
    const/4 v1, 0x0

    aput v0, v12, v1

    aput v0, v12, v13

    const/4 v13, 0x0

    :cond_11f
    :goto_11f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performBatchDragReorder: foundSolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-eq v11, v0, :cond_146

    if-eqz v13, :cond_146

    if-eqz v13, :cond_14a

    const/4 v0, 0x4

    if-ne v11, v0, :cond_14a

    :cond_146
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    :cond_14a
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-object v12
.end method

.method public performReorder(IIIIIILandroid/view/View;[I[II)[I
    .registers 34

    move-object/from16 v13, p0

    move-object/from16 v14, p7

    move/from16 v15, p10

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v12, v0

    goto :goto_1c

    :cond_1b
    move-object v12, v1

    :goto_1c
    instance-of v0, v12, Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    iget v0, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-le v0, v1, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v11

    :goto_29
    instance-of v2, v12, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v2, :cond_3b

    instance-of v2, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v2, :cond_3b

    instance-of v2, v12, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v2, :cond_3b

    if-eqz v0, :cond_38

    goto :goto_3b

    :cond_38
    move/from16 v16, v11

    goto :goto_3d

    :cond_3b
    :goto_3b
    move/from16 v16, v1

    :goto_3d
    const/4 v0, 0x2

    if-nez p9, :cond_45

    new-array v0, v0, [I

    move-object/from16 v17, v0

    goto :goto_47

    :cond_45
    move-object/from16 v17, p9

    :goto_47
    iget-object v0, v13, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    move/from16 v1, v16

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, v17

    move v14, v11

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher3/card/reorder/CardDragReorder;->perform(ZIIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    if-nez v0, :cond_252

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v18

    const-string v11, "OplusCellLayout"

    const/16 v0, 0x8

    const/16 v19, -0x1

    if-ne v15, v0, :cond_a2

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/OplusCellLayout;->getEmptyCells()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string/jumbo v2, "performReorder -- MODE_BATCH_DRAG_OVER, dragViewCount = "

    const-string v3, ", emptyCells = "

    invoke-static {v2, v0, v3, v1, v11}, Lcom/android/common/config/g;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    if-ge v1, v0, :cond_a2

    aput v19, v18, v14

    const/4 v0, 0x1

    aput v19, v18, v0

    return-object v18

    :cond_a2
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq v15, v1, :cond_ab

    if-eq v15, v0, :cond_ab

    const/4 v1, 0x4

    if-ne v15, v1, :cond_c8

    :cond_ab
    iget-object v1, v13, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v2, v1, v14

    const/16 v3, -0x64

    if-eq v2, v3, :cond_c8

    iget-object v2, v13, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aget v4, v1, v14

    aput v4, v2, v14

    const/4 v4, 0x1

    aget v5, v1, v4

    aput v5, v2, v4

    const/4 v2, 0x2

    if-eq v15, v2, :cond_c3

    if-ne v15, v0, :cond_e6

    :cond_c3
    aput v3, v1, v14

    aput v3, v1, v4

    goto :goto_e6

    :cond_c8
    iget-object v6, v13, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->getLeftOrRightDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v13, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aget v2, v1, v14

    aput v2, v0, v14

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    :cond_e6
    :goto_e6
    iget-object v7, v13, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v9, 0x1

    const/16 v20, 0x0

    new-instance v21, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v10, v16

    move-object/from16 v22, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v21

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/OplusCellLayout;->findSequenceReorderSolution(IIIIII[ILandroid/view/View;ZZZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v12

    iget-boolean v0, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-nez v0, :cond_145

    aget v0, v18, v14

    const/4 v1, 0x1

    aget v1, v18, v1

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher3/OplusCellLayout;->isOccupied(II)Z

    move-result v0

    if-eqz v0, :cond_145

    iget-object v7, v13, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v9, 0x1

    const/4 v11, 0x1

    new-instance v21, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v10, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v21

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/OplusCellLayout;->findSequenceReorderSolution(IIIIII[ILandroid/view/View;ZZZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v12

    iget-boolean v0, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_147

    goto :goto_149

    :cond_145
    move-object/from16 v16, v12

    :cond_147
    move-object/from16 v12, v16

    :goto_149
    const/16 v9, 0x8

    if-ne v15, v9, :cond_16d

    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewCount()I

    move-result v5

    new-instance v6, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v6}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/OplusCellLayout;->findConfigurationNoShuffle(IIIIILcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    goto :goto_186

    :cond_16d
    new-instance v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v8}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/OplusCellLayout;->findConfigurationNoShuffle(IIIIIILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    :goto_186
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_1d6

    const-string/jumbo v1, "performReorder -- swapSolution: "

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], noShuffleSolution: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Drag"

    move-object/from16 v3, v22

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d6
    iget-boolean v1, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1e5

    invoke-virtual {v12}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v2

    if-lt v1, v2, :cond_1e5

    goto :goto_1ea

    :cond_1e5
    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1ec

    move-object v12, v0

    :goto_1ea
    const/4 v0, 0x1

    goto :goto_1ee

    :cond_1ec
    const/4 v0, 0x1

    const/4 v12, 0x0

    :goto_1ee
    invoke-virtual {v13, v0}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    if-eqz v12, :cond_236

    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    aput v1, v18, v14

    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    aput v1, v18, v0

    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    aput v1, v17, v14

    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    aput v1, v17, v0

    if-eq v15, v0, :cond_210

    if-eq v15, v9, :cond_210

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq v15, v0, :cond_212

    if-ne v15, v1, :cond_20e

    goto :goto_212

    :cond_20e
    move v11, v14

    goto :goto_213

    :cond_210
    const/4 v0, 0x2

    const/4 v1, 0x3

    :cond_212
    :goto_212
    const/4 v11, 0x1

    :goto_213
    if-eqz v11, :cond_233

    move-object/from16 v2, p7

    move v3, v14

    invoke-virtual {v13, v12, v2}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    if-ne v15, v0, :cond_223

    const/4 v11, 0x1

    goto :goto_224

    :cond_223
    move v11, v3

    :goto_224
    invoke-static {v13, v12, v2, v11}, Lcom/android/launcher3/card/reorder/CardReorderInject;->animateItemsToSolution(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v15, v0, :cond_22b

    if-ne v15, v1, :cond_234

    :cond_22b
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    invoke-virtual {v13, v3}, Lcom/android/launcher3/OplusCellLayout;->setItemPlacementDirty(Z)V

    goto :goto_234

    :cond_233
    move v3, v14

    :cond_234
    :goto_234
    const/4 v11, 0x1

    goto :goto_243

    :cond_236
    move v3, v14

    const/4 v1, 0x3

    const/4 v0, 0x2

    aput v19, v18, v3

    const/4 v2, 0x1

    aput v19, v18, v2

    aput v19, v17, v3

    aput v19, v17, v2

    move v11, v3

    :goto_243
    if-eq v15, v0, :cond_249

    if-eq v15, v1, :cond_249

    if-nez v11, :cond_24c

    :cond_249
    invoke-virtual {v13, v3}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    :cond_24c
    iget-object v0, v13, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_254

    :cond_252
    move-object/from16 v18, p8

    :goto_254
    return-object v18
.end method

.method public performSuperReorder(IIIIIILandroid/view/View;[I[II)[I
    .registers 11

    invoke-super/range {p0 .. p10}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object p0

    return-object p0
.end method

.method public printCellOccupy(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusCellLayout;->getOccupiedString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusCellLayout"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pushViewsToTempLocation(Lcom/android/launcher/layout/LayoutUtilsInterface;Ljava/util/ArrayList;[I[IIILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/layout/LayoutUtilsInterface;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;[I[III",
            "Landroid/view/View;",
            "Z",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p9

    const/4 v7, 0x0

    aget v0, p4, v7

    const/4 v13, 0x1

    if-gez v0, :cond_e

    move v8, v13

    goto :goto_f

    :cond_e
    move v8, v7

    :goto_f
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher/layout/LayoutUtilsInterface;->orderIconsFree()Z

    move-result v0

    if-eqz v0, :cond_6c

    aget v0, p3, v7

    iget-object v1, v10, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    aget v2, v1, v7

    if-ne v0, v2, :cond_58

    aget v0, p3, v13

    aget v1, v1, v13

    if-ne v0, v1, :cond_58

    aget v0, p4, v7

    iget-object v1, v10, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    aget v2, v1, v7

    if-eq v0, v2, :cond_2c

    goto :goto_58

    :cond_2c
    aget v0, v1, v7

    if-gez v0, :cond_32

    move v8, v13

    goto :goto_33

    :cond_32
    move v8, v7

    :goto_33
    iget-object v0, v10, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    aget v1, v0, v7

    aget v2, v0, v13

    invoke-virtual {v10, v1, v2}, Lcom/android/launcher3/OplusCellLayout;->isOccupied(II)Z

    move-result v1

    if-eqz v1, :cond_69

    aget v0, p4, v7

    if-gez v0, :cond_45

    move v8, v13

    goto :goto_46

    :cond_45
    move v8, v7

    :goto_46
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v8

    move-object/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/layout/LayoutUtilsInterface;->findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I

    move-result-object v0

    goto :goto_69

    :cond_58
    :goto_58
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move v5, v8

    move-object/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/layout/LayoutUtilsInterface;->findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I

    move-result-object v0

    :cond_69
    :goto_69
    move-object v14, v0

    move v15, v8

    goto :goto_7f

    :cond_6c
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher/layout/LayoutUtilsInterface;->findEmptyCellForReorder(Lcom/android/launcher3/CellLayout;[IIIZLjava/util/ArrayList;)[I

    move-result-object v0

    move-object v14, v0

    move v15, v7

    :goto_7f
    aget v0, v14, v7

    const-string v9, "OplusCellLayout"

    if-ltz v0, :cond_249

    aget v0, v14, v13

    if-gez v0, :cond_8b

    goto/16 :goto_249

    :cond_8b
    const-string/jumbo v0, "pushViewsToTempLocation -- emptyCell = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    invoke-static {v1, v9, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v10, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ab
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    invoke-virtual {v8, v1, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_ab

    :cond_c3
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object v4, v14

    move-object/from16 v5, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v13, v8

    move/from16 v8, p8

    move-object/from16 v16, v9

    move-object/from16 v9, p4

    invoke-interface/range {v0 .. v9}, Lcom/android/launcher/layout/LayoutUtilsInterface;->getViewCluster(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;[I[IIIZ[I)Lcom/android/launcher/layout/OplusAbstractViewCluster;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->sortConfigurationByCellXY()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e9
    :goto_e9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->isIntersectedView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_e9

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v4, 0x1

    invoke-virtual {v13, v3, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_e9

    :cond_10b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11a

    invoke-virtual {v0, v1}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->removeInterestsViews(Ljava/util/List;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_11a
    iget-object v2, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_120
    :goto_120
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_177

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_174

    move-object/from16 v4, p7

    if-eq v3, v4, :cond_120

    instance-of v5, v3, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v5, :cond_13b

    goto :goto_120

    :cond_13b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v5, v5, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v5, :cond_146

    goto :goto_120

    :cond_146
    invoke-virtual {v0, v3}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->isIntersectedView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_15c

    invoke-virtual {v0, v3}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->addView(Landroid/view/View;)V

    iget-object v5, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_120

    :cond_15c
    iget-object v5, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_120

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v5, 0x1

    invoke-virtual {v13, v3, v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_120

    :cond_174
    move-object/from16 v4, p7

    goto :goto_120

    :cond_177
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_186

    invoke-virtual {v0, v1}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->removeInterestsViews(Ljava/util/List;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_186
    iget-object v1, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19a

    const/4 v1, 0x0

    aget v2, v14, v1

    aput v2, p3, v1

    const/4 v2, 0x1

    aget v3, v14, v2

    aput v3, p3, v2

    :goto_198
    move v4, v1

    goto :goto_1ab

    :cond_19a
    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v3, p3, v1

    aget v1, v14, v1

    if-ne v3, v1, :cond_1aa

    aget v1, p3, v2

    aget v3, v14, v2

    if-ne v1, v3, :cond_1aa

    const/4 v1, 0x0

    goto :goto_198

    :cond_1aa
    const/4 v4, 0x1

    :goto_1ab
    if-nez v4, :cond_1cf

    invoke-virtual/range {p9 .. p9}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    iget-object v0, v0, Lcom/android/launcher/layout/OplusAbstractViewCluster;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_248

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, v12, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1b6

    :cond_1cf
    const/4 v2, 0x1

    iget-object v1, v10, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    const/4 v3, 0x0

    aget v5, v14, v3

    aput v5, v1, v3

    aget v5, v14, v2

    aput v5, v1, v2

    iget-object v1, v10, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    aget v5, p4, v3

    aput v5, v1, v3

    aget v5, p4, v2

    aput v5, v1, v2

    iget-object v1, v10, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    aget v5, p3, v3

    aput v5, v1, v3

    aget v3, p3, v2

    aput v3, v1, v2

    invoke-virtual {v0, v15, v2, v13}, Lcom/android/launcher/layout/OplusAbstractViewCluster;->shiftAndMarkCells(ZILcom/android/launcher3/util/GridOccupancy;)V

    invoke-virtual {v10, v2}, Lcom/android/launcher3/OplusCellLayout;->printCellOccupy(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pushViewsToTempLocation after shift -- targetCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", emptyCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    aget v1, p3, v0

    aget v2, v14, v0

    if-gt v1, v2, :cond_233

    aget v1, p3, v0

    aget v2, v14, v0

    if-ne v1, v2, :cond_231

    const/4 v0, 0x0

    aget v1, p3, v0

    aget v0, v14, v0

    if-le v1, v0, :cond_231

    goto :goto_233

    :cond_231
    const/4 v0, 0x0

    goto :goto_234

    :cond_233
    :goto_233
    const/4 v0, 0x1

    :goto_234
    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v1

    if-eqz v1, :cond_248

    if-nez p8, :cond_248

    if-eqz v0, :cond_248

    const/4 v0, 0x0

    aget v1, v14, v0

    aput v1, p3, v0

    const/4 v0, 0x1

    aget v1, v14, v0

    aput v1, p3, v0

    :cond_248
    return v4

    :cond_249
    :goto_249
    move-object v1, v9

    const-string/jumbo v0, "pushViewsToTempLocation, emptyCell cell invalid! "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public regionToCenterPoint(IIII[I)V
    .registers 6

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p5}, Lcom/android/launcher3/OplusCellLayout;->checkChildContainerScale(Lcom/android/launcher3/CellLayout$LayoutParams;[I)V

    return-void
.end method

.method public regionToRect(IIIILandroid/graphics/Rect;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    if-eqz v2, :cond_12

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {p1, p3, v2}, Lcom/android/launcher3/OplusCellLayout;->invertCell(III)I

    move-result p1

    :cond_12
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr p1, v2

    add-int/2addr p1, v0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr p2, p0

    add-int/2addr p2, v1

    mul-int/2addr p3, v2

    add-int/2addr p3, p1

    mul-int/2addr p4, p0

    add-int/2addr p4, p2

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    if-eqz p1, :cond_27

    invoke-static {}, Lcom/android/launcher/layout/LayoutUtilsManager;->isCompactArrangement()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :cond_27
    return-void
.end method

.method public resetDecreasedBooleanArray()V
    .registers 1

    return-void
.end method

.method public revertTempState()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->addLastHiddenAppChild()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusCellLayout;->setUseTempCoords(Z)V

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastEmptyCell:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastDirection:[I

    aput v2, v1, v0

    aput v2, v1, v3

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mLastTargetCell:[I

    aput v2, p0, v0

    aput v2, p0, v3

    return-void
.end method

.method public revertTempStateCompletely()V
    .registers 3

    const-string/jumbo v0, "revertTempStateCompletely -- mItemCompactReordered = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCellLayout"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->revertTempState()V

    :cond_2b
    return-void
.end method

.method public saveLastAppChild(Z)Z
    .registers 14

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->existsEmptyCell()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {v0, p0}, Lcom/android/launcher3/OplusWorkspace;->isAfterPageFull(Lcom/android/launcher3/CellLayout;)Z

    move-result v2

    if-nez v2, :cond_a1

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1e
    if-ltz v2, :cond_a1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v4, v3

    :goto_23
    if-ltz v4, :cond_9d

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v4, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_9a

    instance-of v6, v5, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v6, :cond_32

    goto :goto_9a

    :cond_32
    iput-object v5, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz p1, :cond_7c

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v0, p0}, Lcom/android/launcher3/PagedView;->isVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    invoke-direct {p0, p1, v3}, Lcom/android/launcher3/OplusCellLayout;->getLastVisualView(Landroid/view/View;Z)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    :cond_4e
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-eqz p1, :cond_6e

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result p1

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher/Launcher;

    move-result-object v7

    new-instance p1, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation;

    new-instance v9, Lcom/android/launcher3/card/reorder/ExtrusionItem;

    invoke-direct {v9, v7, p0, v5}, Lcom/android/launcher3/card/reorder/ExtrusionItem;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Landroid/view/View;)V

    const-wide/16 v10, 0x0

    move-object v6, p1

    move-object v8, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/card/reorder/TwoPanelExtrusionItemAnimation;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/card/reorder/ExtrusionItem;J)V

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastExtrusionItemAnimation:Lcom/android/launcher3/card/reorder/ExtrusionItemAnimation;

    :cond_6e
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mTmpLastChild:Landroid/widget/ImageView;

    if-eqz p1, :cond_94

    iget-object v1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/OplusCellLayout;->animateLastChildToRemove(Landroid/view/View;Landroid/widget/ImageView;Z)V

    goto :goto_94

    :cond_7c
    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    if-eqz p1, :cond_94

    const-string p1, "OplusCellLayout"

    const-string/jumbo v0, "saveLastAppChild. set mUseTmpCoords false"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-boolean v1, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    :cond_94
    :goto_94
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mLastChild:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    return v3

    :cond_9a
    :goto_9a
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    :cond_9d
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1e

    :cond_a1
    return v1
.end method

.method public saveLastAppChildIfNeeded(Lcom/android/launcher3/DropTarget$DragObject;Ljava/lang/Object;)Z
    .registers 3

    instance-of p1, p1, Lcom/android/launcher/batchdrag/BatchDragObject;

    if-nez p1, :cond_22

    instance-of p1, p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_22

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    instance-of p1, p2, Lcom/android/launcher3/PendingAddItemInfo;

    if-nez p1, :cond_22

    instance-of p1, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez p1, :cond_22

    instance-of p1, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez p1, :cond_22

    invoke-static {p2}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusCellLayout;->saveLastAppChild(Z)Z

    move-result p0

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public setCellDimensions(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    return-void
.end method

.method public setDragViewCellSpan(II)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    return-void
.end method

.method public setGridSize(II)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout;->mChildWidth:I

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    :cond_e
    iget v0, p0, Lcom/android/launcher3/OplusCellLayout;->mChildHeight:I

    if-lez v0, :cond_1c

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1, p2}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    :cond_1c
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    return-void
.end method

.method public setInvertIfRtl(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    iget-object p1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout;->mInvertRtl:Z

    return-void
.end method

.method public setItemCompactReordered(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout;->mItemCompactReordered:Z

    return-void
.end method

.method public setItemPlacementDirty(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    return-void
.end method

.method public setOnLayoutFinishListener(Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout;->mOnLayoutFinishListener:Lcom/android/launcher3/OplusCellLayout$OnLayoutFinishListener;

    return-void
.end method

.method public setScreenId(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mCardDragReorder:Lcom/android/launcher3/card/reorder/CardDragReorder;

    invoke-virtual {p0}, Lcom/android/launcher3/card/reorder/CardDragReorder;->getInspector()Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/reorder/ReorderLayoutInspector;->setReorderScreenId(I)V

    return-void
.end method

.method public setUseTempCoords(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout;->mUseTempCoords:Z

    invoke-super {p0, p1}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    return-void
.end method

.method public updateCellLayoutItemColor()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mItemUpdateHelper:Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/OplusCellLayout$ItemUpdateHelper;->updateCellLayoutItemColor(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method public updateCellToNextPos([IZ)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_18

    aget p2, p1, v1

    sub-int/2addr p2, v0

    aput p2, p1, v1

    aget p2, p1, v1

    if-gez p2, :cond_2a

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr p0, v0

    aput p0, p1, v1

    aget p0, p1, v0

    sub-int/2addr p0, v0

    aput p0, p1, v0

    goto :goto_2a

    :cond_18
    aget p2, p1, v1

    add-int/2addr p2, v0

    aput p2, p1, v1

    aget p2, p1, v1

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-lt p2, p0, :cond_2a

    aput v1, p1, v1

    aget p0, p1, v0

    add-int/2addr p0, v0

    aput p0, p1, v0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public updateDatabases(I)V
    .registers 15

    const/4 v0, -0x1

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v2

    aget v3, v2, v1

    const/4 v4, 0x1

    aget v5, v2, v4

    aget v6, v2, v1

    if-eq v6, v0, :cond_79

    aget v6, v2, v4

    if-eq v6, v0, :cond_79

    aget v0, v2, v1

    if-nez v0, :cond_1e

    aget v0, v2, v4

    sub-int/2addr v0, v4

    goto :goto_20

    :cond_1e
    aget v0, v2, v4

    :goto_20
    move v7, v3

    move v8, v5

    move v3, v0

    :goto_23
    if-ltz v3, :cond_71

    if-ne v3, v0, :cond_32

    aget v5, v2, v1

    if-nez v5, :cond_2e

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    goto :goto_34

    :cond_2e
    aget v5, v2, v1

    sub-int/2addr v5, v4

    goto :goto_34

    :cond_32
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    :goto_34
    if-ltz v5, :cond_6e

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6b

    instance-of v9, v6, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v9, :cond_6b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/model/data/ItemInfo;

    iget v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    const/16 v12, -0x64

    if-ne v11, p1, :cond_5e

    iget v11, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v11, v12, :cond_5e

    iget v11, v9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v11, v7, :cond_5e

    iget v11, v9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v11, v8, :cond_69

    :cond_5e
    iput v7, v9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v8, v9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v12, v10, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iput p1, v10, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_69
    move v8, v3

    move v7, v5

    :cond_6b
    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    :cond_6e
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_71
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    :cond_79
    invoke-virtual {p0}, Lcom/android/launcher3/OplusCellLayout;->updateItemLocationsInDatabase()V

    return-void
.end method

.method public updateDragTipBackground()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout;->mBackgroundRender:Lcom/android/launcher/AbsCellLayoutBgRender;

    invoke-virtual {p0}, Lcom/android/launcher/AbsCellLayoutBgRender;->updateColor()V

    return-void
.end method

.method public updateItemLocationsInDatabase()V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "updateItemLocationsInDatabase -- screen id = "

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    const-string v4, ", count = "

    const-string v5, "OplusCellLayout"

    invoke-static {v2, v3, v4, v0, v5}, Lt/a;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_84

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v6, :cond_53

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-gez v7, :cond_3b

    goto :goto_53

    :cond_3b
    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    if-ne v8, v6, :cond_43

    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v8, v7, :cond_81

    :cond_43
    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v3, v4, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_53
    :goto_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateItemLocationsInDatabase -- ignore invalid pos for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", lp.CellXY = ["

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_84
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9f

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_9f

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/OplusCellLayout;->mScreenId:I

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    :cond_9f
    return-void
.end method

.method public visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout;->mDragViewCellSpan:[I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method
