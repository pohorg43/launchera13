.class Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/StaggeredWorkspaceAnim;->addAnimationForPage(Lcom/android/launcher3/CellLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

.field public final synthetic val$page:Lcom/android/launcher3/CellLayout;

.field public final synthetic val$pageClipChildren:Z

.field public final synthetic val$pageClipToPadding:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/StaggeredWorkspaceAnim;Lcom/android/launcher3/CellLayout;ZZ)V
    .registers 5

    iput-object p1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->this$0:Lcom/android/quickstep/util/StaggeredWorkspaceAnim;

    iput-object p2, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$page:Lcom/android/launcher3/CellLayout;

    iput-boolean p3, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$pageClipChildren:Z

    iput-boolean p4, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$pageClipToPadding:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$page:Lcom/android/launcher3/CellLayout;

    iget-boolean v0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$pageClipChildren:Z

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p1, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$page:Lcom/android/launcher3/CellLayout;

    iget-boolean p0, p0, Lcom/android/quickstep/util/StaggeredWorkspaceAnim$2;->val$pageClipToPadding:Z

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method
