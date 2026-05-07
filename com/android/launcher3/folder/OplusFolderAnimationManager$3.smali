.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field public final synthetic val$endTransX:F

.field public final synthetic val$endTransY:F

.field public final synthetic val$startTransX:F

.field public final synthetic val$startTransY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Landroid/view/View;FFFF)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$childView:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$startTransX:F

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$endTransX:F

    iput p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$startTransY:F

    iput p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$endTransY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-eqz v1, :cond_17

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$300(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager$FolderInterruptParam;->setFolderItemRoomInProgress(F)V

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$childView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$startTransX:F

    iget v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$endTransX:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$childView:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$startTransY:F

    iget p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$3;->val$endTransY:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    add-float/2addr p0, v1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
