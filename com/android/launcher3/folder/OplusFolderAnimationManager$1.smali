.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field public final synthetic val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v0, :cond_4f

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/OplusFolder;->getFolderHeader()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/states/OplusBaseLauncherState;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/states/OplusBaseLauncherState;->getPageIndicatorScaleAndTranslation(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/LauncherState$ScaleAndTranslation;->scale:F

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v1, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$pageIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p1, v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setTranslationY(F)V

    :cond_4f
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-eqz p1, :cond_8a

    const/4 p1, 0x0

    move v0, p1

    :goto_57
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_73

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_70

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_73
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v0, :cond_8a

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    :cond_8a
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->val$traceType:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$000(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    move p1, v0

    :goto_22
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_51

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    if-eqz v1, :cond_4e

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$1;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderAnimationManager;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4e

    :cond_4a
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4e
    :goto_4e
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_51
    return-void
.end method
