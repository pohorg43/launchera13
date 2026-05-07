.class Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/OplusFolderAnimationManager;->getChildrenAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

.field public final synthetic val$child:Lcom/android/launcher3/BubbleTextView;

.field public final synthetic val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/OplusFolderAnimationManager;Lcom/android/launcher3/ShortcutAndWidgetContainer;Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object p3, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    const/high16 v0, 0x3f800000  # 1.0f

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$page:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result v1

    invoke-static {v1}, Lcom/android/launcher3/folder/OplusFolderUtil;->getMaxNumItemsInFolderPreview(Z)I

    move-result v1

    if-lt p1, v1, :cond_23

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_23
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-boolean v1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mIsOpening:Z

    if-nez v1, :cond_7c

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v0}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->updateDotAlpha(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->isBigFolderIcon()Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v0}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->updateDotaAlphaWhenFolderUnfold(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->this$0:Lcom/android/launcher3/folder/OplusFolderAnimationManager;

    iget-object p1, p1, Lcom/android/launcher3/folder/FolderAnimationManager;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->playItemDotAnimation()V

    :cond_4f
    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    sget-boolean p1, Lcom/android/common/config/ScreenInfo;->hasNavigationBar:Z

    if-eqz p1, :cond_86

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isLightFolderAnimation()Z

    move-result p1

    if-nez p1, :cond_86

    iget-object p1, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lcom/oplus/fancyicon/fancydrawable/FancyDrawable;

    if-eqz p1, :cond_86

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 p1, 0xff

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_86

    :cond_7c
    invoke-static {p1}, Lcom/android/launcher3/folder/OplusFolderAnimationManager;->access$400(Lcom/android/launcher3/folder/OplusFolderAnimationManager;)Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/folder/OplusFolderAnimationManager$7;->val$child:Lcom/android/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher3/folder/big/FolderOpenAnimHelper;->setDrawableForBigFolder(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/drawable/Drawable;)V

    :cond_86
    :goto_86
    return-void
.end method
