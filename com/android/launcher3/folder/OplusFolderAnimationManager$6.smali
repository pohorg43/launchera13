.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mHasChangedChildVisibility:Z

.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$child:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic val$endTransX:F

.field public final synthetic val$endTransY:F

.field public final synthetic val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field public final synthetic val$startTransX:F

.field public final synthetic val$startTransY:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/BubbleTextView;FFFFLcom/android/launcher3/ShortcutAndWidgetContainer;)V
    .registers 8

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    iput p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$startTransX:F

    iput p4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$endTransX:F

    iput p5, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$startTransY:F

    iput p6, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$endTransY:F

    iput-object p7, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->mHasChangedChildVisibility:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_17

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    sub-float v2, v1, p1

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$startTransX:F

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$endTransX:F

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$startTransY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$endTransY:F

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v0, v0, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    div-float v0, p1, v2

    invoke-static {v0, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    goto :goto_49

    :cond_41
    div-float v0, p1, v2

    invoke-static {v0, v3, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    sub-float v0, v1, v0

    :goto_49
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object v1, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v0}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    :cond_66
    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object v4, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->onAnimateUpdate(Lcom/android/launcher3/BubbleTextView;IF)V

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    invoke-static {v0}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$6;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/high16 v1, 0x437f0000  # 255.0f

    invoke-static {p1, v1, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->updatePreviewDrawableAlpha(Lcom/android/launcher3/BubbleTextView;I)V

    return-void
.end method
