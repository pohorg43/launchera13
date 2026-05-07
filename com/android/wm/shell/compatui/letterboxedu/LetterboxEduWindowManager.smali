.class public Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;
.super Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;
.source ""


# static fields
.field public static final HAS_SEEN_LETTERBOX_EDUCATION_PREF_NAME:Ljava/lang/String; = "has_seen_letterbox_education"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final Z_ORDER:I = 0x7fffffff


# instance fields
.field private final mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

.field private final mDialogVerticalMargin:I

.field private mEligibleForLetterboxEducation:Z

.field public mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mOnDismissCallback:Ljava/lang/Runnable;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;)V
    .registers 17

    new-instance v8, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    move-object v1, p1

    invoke-direct {v8, p1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;-><init>(Landroid/content/Context;Landroid/app/TaskInfo;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/common/DisplayLayout;)V

    iput-object p6, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p7, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/lang/Runnable;

    iput-object p8, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget p1, p2, Landroid/app/TaskInfo;->userId:I

    iput p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mUserId:I

    iget-boolean p1, p2, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    const-string p2, "has_seen_letterbox_education"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$dimen;->letterbox_education_dialog_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->lambda$onDismiss$0()V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->onDialogEnterAnimationEnded()V

    return-void
.end method

.method public static synthetic f(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->onDismiss()V

    return-void
.end method

.method public static synthetic g(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->startEnterAnimation()V

    return-void
.end method

.method private getHasSeenLetterboxEducation()Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->getPrefKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getPrefKey()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mUserId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private inflateLayout()Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/wm/shell/R$layout;->letterbox_education_dialog_layout:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-object p0
.end method

.method private synthetic lambda$onDismiss$0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->release()V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mOnDismissCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private onDialogEnterAnimationEnded()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->setSeenLetterboxEducation()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    new-instance v1, Lcom/android/wm/shell/compatui/letterboxedu/f;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/letterboxedu/f;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getDialogTitle()Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private onDismiss()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->setDismissOnClickListener(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/f;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/letterboxedu/f;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->startExitAnimation(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setSeenLetterboxEducation()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->getPrefKey()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startEnterAnimation()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    new-instance v2, Lcom/android/wm/shell/compatui/letterboxedu/f;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/compatui/letterboxedu/f;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->startEnterAnimation(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDialogMargins()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;->getDialogContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskStableBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mDialogVerticalMargin:I

    add-int/2addr v4, p0

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createLayout()Landroid/view/View;
    .registers 4

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->inflateLayout()Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->updateDialogMargins()V

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    new-instance v1, Lcom/android/wm/shell/compatui/letterboxedu/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/compatui/letterboxedu/f;-><init>(Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->runOnIdle(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public eligibleToShowLayout()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->isTaskbarEduShowing()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->getHasSeenLetterboxEducation()Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public getLayout()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-object p0
.end method

.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getZOrder()I
    .registers 1

    const p0, 0x7fffffff

    return p0
.end method

.method public isTaskbarEduShowing()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_taskbar_education_showing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    return v1
.end method

.method public onParentBoundsChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->updateDialogMargins()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mAnimationController:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;

    invoke-virtual {v0}, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduAnimationController;->cancelAnimation()V

    invoke-super {p0}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->release()V

    return-void
.end method

.method public removeLayout()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mLayout:Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduDialogLayout;

    return-void
.end method

.method public updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z
    .registers 5

    iget-boolean v0, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/compatui/letterboxedu/LetterboxEduWindowManager;->mEligibleForLetterboxEducation:Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;->updateCompatInfo(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)Z

    move-result p0

    return p0
.end method

.method public updateSurfacePosition()V
    .registers 1

    return-void
.end method
