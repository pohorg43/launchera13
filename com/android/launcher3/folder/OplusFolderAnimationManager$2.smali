.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->createFolderChildAnimationSet(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$childView:Landroid/view/View;

.field public final synthetic val$isHeaderView:Z

.field public final synthetic val$startScaleX:F

.field public final synthetic val$startScaleY:F

.field public final synthetic val$startTransX:F

.field public final synthetic val$startTransY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;ZLandroid/view/View;FFFF)V
    .registers 8

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-boolean p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$isHeaderView:Z

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleX:F

    iput p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleY:F

    iput p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransX:F

    iput p7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransY:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$isHeaderView:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startScaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$childView:Landroid/view/View;

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$2;->val$startTransY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
