.class public interface abstract Lcom/android/quickstep/ISwipeUpHandlerExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/ISwipeUpHandlerExt$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract applyIconRectOffset(Lcom/android/launcher3/touch/PagedOrientationHandler;Landroid/graphics/RectF;F)V
.end method

.method public abstract getAngleInCreateAnimateMiniWindow()F
.end method

.method public abstract getCropHeightInCreateAnimateMiniWindow()F
.end method

.method public abstract getCropWidthInCreateAnimateMiniWindow()F
.end method

.method public abstract getPagedOrientationHandler(Landroid/graphics/RectF;)Lcom/android/launcher3/touch/PagedOrientationHandler;
.end method

.method public abstract getRightOffsetInCreateAnimateMiniWindow()F
.end method

.method public abstract getTopOffsetInCreateAnimateMiniWindow()F
.end method

.method public abstract isLandscape()Z
.end method

.method public abstract isTaskLandscape()Z
.end method

.method public abstract offsetZoomWindowRectBottom(Landroid/graphics/RectF;)V
.end method

.method public abstract setTaskViewSimulatorScroll()V
.end method

.method public abstract updateTargetBoundsInCreateAnimateMiniWindow(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;FF[FFF)V
.end method

.method public abstract updateTargetCropRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
.end method

.method public abstract updateZoomWindowRectInCreateAnimateMiniWindow(Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/RectF;FF)V
.end method
