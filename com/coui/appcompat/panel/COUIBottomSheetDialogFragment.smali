.class public Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source ""


# static fields
.field private static final PHYSICS_UNSET:F = 1.4E-45f

.field private static final SAVE_CAN_PULL_UP_KEY:Ljava/lang/String; = "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

.field private static final SAVE_DRAGGABLE_KEY:Ljava/lang/String; = "SAVE_DRAGGABLE_KEY"

.field private static final SAVE_FINAL_NAV_COLOR_AFTER_DISMISS_KEY:Ljava/lang/String; = "SAVE_FINAL_NAV_COLOR_AFTER_DISMISS_KEY"

.field private static final SAVE_FIRST_SHOW_COLLAPSED_KEY:Ljava/lang/String; = "SAVE_FIRST_SHOW_COLLAPSED_KEY"

.field private static final SAVE_IS_EXECUTE_NAV_COLOR_ANIM_AFTER_DISMISS_KEY:Ljava/lang/String; = "SAVE_IS_EXECUTE_NAV_COLOR_ANIM_AFTER_DISMISS_KEY"

.field private static final SAVE_IS_IN_TINY_SCREEN_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

.field private static final SAVE_PANEL_HEIGHT_KEY:Ljava/lang/String; = "SAVE_PANEL_HEIGHT_KEY"

.field private static final SAVE_PANEL_WIDTH_KEY:Ljava/lang/String; = "SAVE_PANEL_WIDTH_KEY"

.field private static final SAVE_PEEK_HEIGHT_KEY:Ljava/lang/String; = "SAVE_PEEK_HEIGHT_KEY"

.field private static final SAVE_SHOW_IN_MAX_HEIGHT_KEY:Ljava/lang/String; = "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

.field private static final SAVE_SKIP_COLLAPSED_KEY:Ljava/lang/String; = "SAVE_SKIP_COLLAPSED_KEY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaAnimDuration:J

.field private mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

.field private mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

.field private mCanPullUp:Z

.field private mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

.field private mCurrentPanelHeight:I

.field private mDialogFragmentView:Landroid/view/View;

.field private mDisableSubExpand:Z

.field private mFinalNavColorAfterDismiss:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mFirstShowCollapsed:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDraggable:Z

.field private mIsExecuteNavColorAnimAfterDismiss:Z

.field private mIsFullScreenInTinyScreen:Z

.field private mIsInTinyScreen:Z

.field private mIsSavedInstanceState:Z

.field private mIsShowInMaxHeight:Z

.field private mOutSideView:Landroid/view/View;

.field private mPanelContainer:Landroid/view/ViewGroup;

.field private mPanelHeight:I

.field private mPanelWidth:I

.field private mPeekHeight:I

.field private mPhysicsDampingRatio:F

.field private mPhysicsFrequency:F

.field private mShouldRegisterWindowInsetsListener:Z

.field private mSkipCollapsed:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    const-string v0, "COUIBottomSheetDialogFragment"

    sput-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    iput v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    iput p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    return-void
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment;
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mOutSideView:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelListener(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$802(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;I)I
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return p1
.end method

.method public static synthetic access$900(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroidx/fragment/app/Fragment;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->getFragmentHeight(Landroidx/fragment/app/Fragment;)I

    move-result p0

    return p0
.end method

.method private getFragmentHeight(Landroidx/fragment/app/Fragment;)I
    .registers 2

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_14
    return-void
.end method

.method private initBottomSheetDialogSize()V
    .registers 4

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:I

    iget-object v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->X:I

    if-eqz v2, :cond_16

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_16
    iget-object v1, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:I

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setCurrentPanelHeight(I)V

    :cond_2b
    return-void
.end method

.method private initFragment()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->first_panel_container:I

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setShowOnFirstPanel(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAdd(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    :cond_2e
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$1;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private preShowPanel(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$anim;->coui_open_slide_enter:I

    sget v2, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    sget v3, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$id;->first_panel_container:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAdd(Ljava/lang/Boolean;)V

    :cond_3c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$anim;->coui_open_slide_enter:I

    sget v2, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    sget v3, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v1

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->b(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    :cond_7b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$4;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_7
    return-void
.end method

.method private setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void
.end method

.method private setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    :cond_17
    return-void
.end method

.method private setPanelListener(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 3

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragPanelListener()Lcom/coui/appcompat/panel/COUIPanelDragListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getOutSideViewOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setOnTouchOutSideViewListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDialogOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_17
    return-void
.end method

.method private setUpViewHeight(Landroid/view/View;Z)V
    .registers 3

    if-eqz p1, :cond_15

    if-nez p2, :cond_b

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, -0x2

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, -0x1

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method


# virtual methods
.method public backToFirstPanel()V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_79

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-lez v0, :cond_4c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    sget v5, Lcom/support/appcompat/R$anim;->coui_close_slide_exit:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_4c
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-virtual {v3}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v3

    iget-object v2, v2, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->b(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    :cond_65
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$2;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;ILcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$3;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_79
    return-void
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->dismiss()V

    goto :goto_16

    :cond_8
    :try_start_8
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p0

    sget-object v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public doFeedbackAnimation()V
    .registers 6

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_4a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->H:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-nez v0, :cond_17

    goto :goto_4a

    :cond_17
    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:Landroid/view/View;

    if-eq v1, v0, :cond_43

    :cond_1f
    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y:Landroid/view/View;

    invoke-static {}, Lm1/h;->d()Lm1/h;

    move-result-object v0

    invoke-virtual {v0}, Lm1/b;->b()Lm1/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    const-wide v1, 0x400e666666666666L  # 3.8

    const-wide/high16 v3, 0x4034000000000000L  # 20.0

    invoke-static {v1, v2, v3, v4}, Lm1/e;->a(DD)Lm1/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm1/d;->f(Lm1/e;)Lm1/d;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog$11;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lm1/d;->a(Lm1/g;)Lm1/d;

    :cond_43
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->x:Lm1/d;

    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    invoke-virtual {p0, v0, v1}, Lm1/d;->e(D)Lm1/d;

    :cond_4a
    :goto_4a
    return-void
.end method

.method public getAlphaAnimDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    return-wide v0
.end method

.method public getCurrentPanelHeight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return p0
.end method

.method public getPeekheight()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    return p0
.end method

.method public isFirstShowCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    return p0
.end method

.method public isSkipCollapsed()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_2b

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->e(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->W:I

    invoke-virtual {v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->v()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->y(Landroid/content/res/Configuration;)V

    :cond_2b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4e

    iput-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    const/4 v1, 0x0

    const-string v2, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    const-string v2, "SAVE_DRAGGABLE_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    const-string v2, "SAVE_PEEK_HEIGHT_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const-string v2, "SAVE_SKIP_COLLAPSED_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    const-string v2, "SAVE_FIRST_SHOW_COLLAPSED_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    const-string v2, "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    const-string v2, "SAVE_IS_EXECUTE_NAV_COLOR_ANIM_AFTER_DISMISS_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    const-string v2, "SAVE_FINAL_NAV_COLOR_AFTER_DISMISS_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    const-string v2, "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    :cond_4e
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_79

    new-instance p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$style;->DefaultBottomSheetDialog:I

    iget v3, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsFrequency:F

    iget v4, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPhysicsDampingRatio:F

    invoke-direct {p1, v1, v2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput v3, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->i0:F

    iput v4, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->j0:F

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    iget-boolean v2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsFullScreenInTinyScreen:Z

    iput-boolean v1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f0:Z

    iput-boolean v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->g0:Z

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    iput-boolean v1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h0:Z

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    iput-object v1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->e0:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    :cond_79
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    iput-boolean v1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r0:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->m:Z

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    iput v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->z:I

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->E:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->F:Z

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    iput v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    iput-boolean v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->U:Z

    if-eqz v0, :cond_a4

    const/4 v1, -0x1

    goto :goto_a5

    :cond_a4
    const/4 v1, -0x2

    :goto_a5
    iget-object v2, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->f:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz v2, :cond_ac

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setLayoutAtMaxHeight(Z)V

    :cond_ac
    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    if-eqz v0, :cond_bb

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->d:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_bb
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4
    .param p1  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$layout;->coui_bottom_sheet_dialog_max_height:I

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    goto :goto_1e

    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$layout;->coui_bottom_sheet_dialog:I

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    :goto_1e
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getShowOnFirstPanel()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onAbandon(Ljava/lang/Boolean;)V

    :cond_e
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->u(Landroid/view/View$OnTouchListener;)V

    :cond_1b
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v0, :cond_26

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    :cond_26
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    const-string v1, "SAVE_PANEL_HEIGHT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    const-string v1, "SAVE_PANEL_WIDTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    const-string v1, "SAVE_DRAGGABLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    const-string v1, "SAVE_PEEK_HEIGHT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    const-string v1, "SAVE_SKIP_COLLAPSED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    const-string v1, "SAVE_FIRST_SHOW_COLLAPSED_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    const-string v1, "SAVE_CAN_PULL_UP_KEY_DRAGGABLE_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    const-string v1, "SAVE_IS_EXECUTE_NAV_COLOR_ANIM_AFTER_DISMISS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    const-string v1, "SAVE_FINAL_NAV_COLOR_AFTER_DISMISS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    const-string v1, "SAVE_SHOW_IN_MAX_HEIGHT_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    const-string v0, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    instance-of v1, v0, Lcom/coui/appcompat/panel/COUIBottomSheetBehavior;

    if-eqz v1, :cond_11

    new-instance v1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$5;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    :cond_11
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_17
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    sget v0, Lcom/support/appcompat/R$id;->first_panel_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    if-nez p1, :cond_26

    return-void

    :cond_26
    if-eqz p2, :cond_3f

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsSavedInstanceState:Z

    const-string p1, "SAVE_PANEL_HEIGHT_KEY"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    const-string p1, "SAVE_PANEL_WIDTH_KEY"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_3f
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initFragment()V

    return-void
.end method

.method public replacePanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 4

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_7

    goto :goto_23

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->h()Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->a:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->e(Z)V

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDialogFragmentView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->hideKeyboard(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->preShowPanel(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public setAlphaAnimDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mAlphaAnimDuration:J

    return-void
.end method

.method public setBottomSheetDialogAnimatorListener(Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialogAnimatorListener:Lcom/coui/appcompat/panel/COUIBottomSheetDialog$BottomSheetDialogAnimatorListener;

    return-void
.end method

.method public setCanPullUp(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCanPullUp:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->r(Z)V

    :cond_9
    return-void
.end method

.method public setCurrentPanelHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelHeight:I

    return-void
.end method

.method public setDisableSubExpand(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mDisableSubExpand:Z

    return-void
.end method

.method public setDraggable(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    if-eq v0, p1, :cond_d

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsDraggable:Z

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    :cond_d
    return-void
.end method

.method public setExecuteNavColorAnimAfterDismiss(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsExecuteNavColorAnimAfterDismiss:Z

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->R:Z

    :cond_12
    return-void
.end method

.method public setFinalNavColorAfterDismiss(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFinalNavColorAfterDismiss:I

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->S:I

    :cond_12
    return-void
.end method

.method public setFirstShowCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mFirstShowCollapsed:Z

    return-void
.end method

.method public setHeight(I)V
    .registers 3

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelHeight:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_9
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    :cond_14
    return-void
.end method

.method public setIsInTinyScreen(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsFullScreenInTinyScreen:Z

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setIsShowInMaxHeight(Z)V

    :cond_a
    return-void
.end method

.method public setIsShowInMaxHeight(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    return-void
.end method

.method public setMainPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    return-void
.end method

.method public setPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;Ljava/lang/Boolean;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->s(Lcom/coui/appcompat/panel/COUIPanelContentLayout;Z)V

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment$6;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelContainer:Landroid/view/ViewGroup;

    iget-boolean p2, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsShowInMaxHeight:Z

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setUpViewHeight(Landroid/view/View;Z)V

    return-void
.end method

.method public setPeekHeight(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPeekHeight:I

    return-void
.end method

.method public setShouldRegisterWindowInsetsListener(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mShouldRegisterWindowInsetsListener:Z

    return-void
.end method

.method public setSkipCollapsed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mSkipCollapsed:Z

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mPanelWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mBottomSheetDialog:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->initBottomSheetDialogSize()V

    :cond_9
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .registers 5
    .param p1  # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    if-nez v0, :cond_12

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelFragment;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    :cond_12
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mCurrentPanelFragment:Lcom/coui/appcompat/panel/COUIPanelFragment;

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->mIsInTinyScreen:Z

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setIsInTinyScreen(Z)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
