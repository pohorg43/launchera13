.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getBackgroundAndIndicatorAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$isInWorkspace:Z

.field public final synthetic val$workspace:Lcom/android/launcher3/Workspace;

.field public final synthetic val$workspaceScrollX:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;ZILcom/android/launcher3/Workspace;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$isInWorkspace:Z

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$workspaceScrollX:I

    iput-object p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->clearFolderTransition()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$isInWorkspace:Z

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$workspaceScrollX:I

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusWorkspace;->clearFolderTransition()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->val$isInWorkspace:Z

    if-eqz p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v1, :cond_43

    new-instance v1, Lcom/android/launcher3/folder/FolderTransition;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v2}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/folder/FolderTransition;-><init>(Lcom/android/launcher3/folder/OplusFolder;I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$200(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/OplusWorkspace;->setFolderTransition(Lcom/android/launcher3/folder/FolderTransition;)V

    :cond_43
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_57

    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$4;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderAnimationManager;->mPreviewBackground:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    :cond_57
    return-void
.end method
