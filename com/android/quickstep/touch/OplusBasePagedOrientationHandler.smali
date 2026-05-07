.class public interface abstract Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$PageCallbacks;,
        Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;,
        Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;
    }
.end annotation


# virtual methods
.method public abstract applyIconRectOffset(Landroid/graphics/RectF;F)V
.end method

.method public abstract applyOffset(Landroid/graphics/PointF;F)V
.end method

.method public abstract calculatePreviewCurrentCropRect(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
.end method

.method public abstract calculatePreviewRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/launcher3/DeviceProfile;Landroid/content/res/Resources;Z)V
.end method

.method public abstract calculatePreviewTargetCropRect(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/content/res/Resources;)V
.end method

.method public abstract calculateRapidReactionWindowRadius(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/content/res/Resources;)V
.end method

.method public abstract calculateScale(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
.end method

.method public abstract calculateTaskViewWindowTranslationX(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
.end method

.method public abstract calculateWindowRadiusToHome(Landroid/graphics/RectF;FF)F
.end method

.method public abstract delegateScrollBy(Lcom/android/launcher3/PagedView;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;III)V"
        }
    .end annotation
.end method

.method public abstract delegateScrollTo(Lcom/android/launcher3/PagedView;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;I)V"
        }
    .end annotation
.end method

.method public abstract delegateScrollTo(Lcom/android/launcher3/PagedView;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;II)V"
        }
    .end annotation
.end method

.method public abstract getAdjacentTaskViewAnimDisplacement(Landroid/graphics/PointF;FZ)V
.end method

.method public abstract getAdjantTaskViewVisibleDistance(Landroid/view/View;II)F
.end method

.method public abstract getChildStartWithTranslation(Landroid/view/View;)F
.end method

.method public abstract getClearAllPanelViewTranslationX(IFZ)F
.end method

.method public abstract getClearAllPanelViewTranslationY(IFZ)F
.end method

.method public abstract getCurveProperties(Lcom/android/launcher3/PagedView;Landroid/graphics/Rect;Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/PagedView<",
            "*>;",
            "Landroid/graphics/Rect;",
            "Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$CurveProperties;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getDismissTaskOffset(Landroid/view/View;)I
.end method

.method public abstract getEmptyMessageLayoutTranslationX(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
.end method

.method public abstract getEmptyMessageLayoutTranslationY(Landroid/view/View;Landroid/text/Layout;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
.end method

.method public abstract getGroupedTaskThumbnailViewCenterPoint(III)Landroid/graphics/PointF;
.end method

.method public abstract getOplusTaskMenuX(FLandroid/view/View;Landroid/view/View;IIZ)F
.end method

.method public abstract getOplusTaskMenuY(FLandroid/view/View;Landroid/view/View;IIZI)F
.end method

.method public abstract getTaskDragDisplacementFactor(ZZ)I
.end method

.method public abstract getTaskThumbnailTopMargin(Landroid/content/Context;)I
.end method

.method public abstract isNegative(FZ)Z
.end method

.method public abstract isPageViewPointInRect(Landroid/view/View;Landroid/graphics/Rect;II)Z
.end method

.method public abstract isPositive(FZ)Z
.end method

.method public abstract setAdjacentTaskViewTranslate(Landroid/view/View;FI)V
.end method

.method public abstract setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V
.end method

.method public abstract setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V
.end method

.method public abstract setPrimaryTranslate(Landroid/view/View;FI)V
.end method

.method public abstract updateTaskViewWindowCrop(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
.end method

.method public abstract updateWindowCrop(Landroid/graphics/Rect;FFFF)V
.end method
