.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;
.super Lcom/android/launcher/LauncherAnimatorUpdateListener;
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

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$isInWorkspace:Z

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspaceScrollX:I

    iput-object p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Lcom/android/launcher/LauncherAnimatorUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(FF)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$isInWorkspace:Z

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspaceScrollX:I

    iget-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->val$workspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getScrollX()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$5;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$100(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolder;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    return-void
.end method
