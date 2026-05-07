.class public final Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/BigFolderTouchController;->snapToPageWithFloat(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $endValue$inlined:F

.field public final synthetic $nextPage$inlined:F

.field public final synthetic this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/big/BigFolderTouchController;FF)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    iput p2, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->$nextPage$inlined:F

    iput p3, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->$endValue$inlined:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMScrollStart$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4c

    iget p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->$nextPage$inlined:F

    const/16 v1, 0xa

    int-to-float v1, v1

    mul-float/2addr p1, v1

    rem-float/2addr p1, v1

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    move p1, v0

    :goto_1d
    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->onScrollPageEnd()V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->$nextPage$inlined:F

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateCurPage(I)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    if-nez p1, :cond_3d

    goto :goto_42

    :cond_3d
    iget v1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->$endValue$inlined:F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/BigFolderIcon;->updateScrollDistance(F)V

    :goto_42
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_51

    :cond_4c
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->abortScroll()V

    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMScrollEndRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->getMScrollEndRunnable()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_62

    goto :goto_65

    :cond_62
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_65
    iget-object p1, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->setMScrollEndRunnable(Ljava/lang/Runnable;)V

    :cond_6b
    iget-object p0, p0, Lcom/android/launcher3/folder/big/BigFolderTouchController$snapToPageWithFloat$$inlined$doOnEnd$1;->this$0:Lcom/android/launcher3/folder/big/BigFolderTouchController;

    invoke-static {p0}, Lcom/android/launcher3/folder/big/BigFolderTouchController;->access$getMBigFolderIcon$p(Lcom/android/launcher3/folder/big/BigFolderTouchController;)Lcom/android/launcher3/folder/big/BigFolderIcon;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/big/BigFolderIcon;->getPreviewVerifier()Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/big/BigFolderGridOrganizer;->setDoClosingAnim(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
