.class Lcom/android/launcher3/OplusCellLayout$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

.field public final synthetic val$pageIndex:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Landroid/view/View;I)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    iput p4, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$pageIndex:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz p1, :cond_13

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {p0}, Lcom/android/launcher3/card/IAreaWidget;->resetLayoutAnimValue()V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->mCancelled:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher3/OplusCellLayout;->mGridAnimationParam:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/android/launcher3/OplusCellLayout;->resetDecreasedBooleanArray()V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$child:Landroid/view/View;

    instance-of v0, p1, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_2a

    check-cast p1, Lcom/android/launcher3/card/IAreaWidget;

    invoke-interface {p1}, Lcom/android/launcher3/card/IAreaWidget;->resetLayoutAnimValue()V

    :cond_2a
    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$6;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iget-object p1, p1, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getPagePreviewManager()Lcom/android/launcher/pagepreview/PagePreviewManager;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/OplusCellLayout$6;->val$pageIndex:I

    invoke-virtual {p1, p0}, Lcom/android/launcher/pagepreview/PagePreviewManager;->onDropAnimationComplete(I)V

    :cond_47
    return-void
.end method
