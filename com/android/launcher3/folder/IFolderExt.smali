.class public interface abstract Lcom/android/launcher3/folder/IFolderExt;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addDragScrollerTarget()V
.end method

.method public abstract addInScreen(Landroid/view/View;)V
.end method

.method public abstract animateDot()V
.end method

.method public abstract closeCompleteEntryPoint()V
.end method

.method public abstract closeCompleteExitPoint()V
.end method

.method public abstract doAnimBoosterEnd()V
.end method

.method public abstract doUIFirst(Landroid/animation/Animator;)V
.end method

.method public abstract enableFeatureTraceLauncherLayout(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public abstract fadeGaussianBlurState(Z)V
.end method

.method public abstract folderAnimEndExitPoint()V
.end method

.method public abstract folderAnimStartEntryPoint()V
.end method

.method public abstract getContentBackground()Landroid/widget/ImageView;
.end method

.method public abstract getFolderAnimationManager()Landroid/animation/AnimatorSet;
.end method

.method public abstract getHostView()Lcom/android/launcher3/folder/Folder;
.end method

.method public abstract initFolderAnimationManager()V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isFolderRealOpened()Z
.end method

.method public abstract isOpenedOrAnimating()Z
.end method

.method public abstract mapOverItemsSpecialForCurrentPageItem(Lcom/android/launcher3/OplusWorkspace$ItemOperatorWithAnimatingParam;Z)V
.end method

.method public abstract onDragExitExitPoint()V
.end method

.method public abstract onDragStartExitPoint()V
.end method

.method public abstract onDropExitPoint()V
.end method

.method public abstract onFinishInflateEntryPoint()V
.end method

.method public abstract reLayoutChildren()V
.end method

.method public abstract setFolderRealOpened(Z)V
.end method

.method public abstract showItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startDragLayerAnimation(ZZ)V
.end method

.method public abstract updateDoteState()V
.end method
