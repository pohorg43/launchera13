.class public Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/views/OplusFloatingIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimatorListener"
.end annotation


# instance fields
.field public mHasBeenRecycled:Z

.field public final synthetic this$0:Lcom/android/launcher3/views/OplusFloatingIconView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusFloatingIconView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->recycle()V

    return-void
.end method

.method private recycle()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusFloatingIconView"

    const-string v0, "FloatingIconView onAnimationCancel Cancel--"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p0}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusFloatingIconView"

    const-string v0, "FloatingIconView onAnimationEnd End--"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    if-eqz p1, :cond_c

    return-void

    :cond_c
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLoadIconSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_15
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_24

    :cond_1f
    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mClipIconView:Lcom/android/launcher3/views/ClipIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/ClipIconView;->endReveal()V

    :goto_24
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-eqz v0, :cond_5a

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_4a

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->isHoldFolderOpen()Z

    move-result p1

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_4a
    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_5a

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_5a
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "FloatingIconView onAnimationStart Start-- is Opening? "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v0, v0, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    const-string v1, "OplusFloatingIconView"

    invoke-static {p1, v0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->mHasBeenRecycled:Z

    if-eqz p1, :cond_14

    return-void

    :cond_14
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mIconLoadResult:Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    iget-boolean p1, p1, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isIconLoaded:Z

    if-eqz p1, :cond_29

    const-string p1, "FloatingIconView onAnimationStart Start-- Icon has loaded"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_29
    iget-object p1, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-boolean v1, p1, Lcom/android/launcher3/views/FloatingIconView;->mIsOpening:Z

    if-nez v1, :cond_46

    iget-object p1, p1, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    instance-of v1, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_46

    check-cast p1, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    iget-object p0, p0, Lcom/android/launcher3/views/OplusFloatingIconView$RemoteAnimatorListener;->this$0:Lcom/android/launcher3/views/OplusFloatingIconView;

    iget-object p0, p0, Lcom/android/launcher3/views/FloatingIconView;->mOriginalIcon:Landroid/view/View;

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    :cond_46
    return-void
.end method
