.class public Lcom/coui/appcompat/panel/COUIPanelFragment;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;
    }
.end annotation


# static fields
.field private static final ENTER_MASK_ALPHA_ANIM_DURATION:J = 0x15eL

.field private static final ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_MASK_ALPHA_ANIM_DURATION:J = 0x12cL

.field private static final EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MASK_ALPHA:J = 0xffL

.field private static final SAVE_IS_IN_TINY_SCREEN_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

.field private static final SAVE_IS_SHOW_IN_FIRST_PANEL_KEY:Ljava/lang/String; = "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

.field private mDragView:Landroid/view/View;

.field public mIsInTinyScreen:Z

.field private mIsShowOnFirstPanel:Ljava/lang/Boolean;

.field private mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

.field private mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

.field private mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewLayout:Landroid/widget/FrameLayout;

.field private mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a  # 0.3f

    const v2, 0x3e851eb8  # 0.26f

    const v3, 0x3ecccccd  # 0.4f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelFragment;->ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e19999a  # 0.15f

    invoke-direct {v0, v1, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelFragment;->EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic access$000(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/coui/appcompat/panel/COUIPanelFragment;)Lcom/coui/appcompat/panel/COUIPanelContentLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method private ensurePanelView()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    if-eqz v1, :cond_f

    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_11

    :cond_f
    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout:I

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    :cond_1a
    return-void
.end method

.method private setBottomButtonBar(Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 11

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->ensurePanelView()V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->setDividerVisibility(Z)V

    sget v0, Lcom/support/appcompat/R$id;->bottom_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_87

    :cond_29
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_bottom_bar_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButDividerVerMargin(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_bottom_button_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButVerPadding(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_panel_bottom_bar_padding_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerPaddingBottom(I)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setVerButPaddingOffset(I)V

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x102001b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x1020019

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p0, v0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1, p3, p4}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, p5, p6}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->a(Landroid/widget/Button;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_87
    return-void
.end method


# virtual methods
.method public getCenterButton()Landroid/widget/Button;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_e

    const v0, 0x102001b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentResId()I
    .registers 1

    sget p0, Lcom/support/appcompat/R$id;->panel_container:I

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getDialogOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public getDragPanelListener()Lcom/coui/appcompat/panel/COUIPanelDragListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-object p0
.end method

.method public getDragView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    return-object p0
.end method

.method public getDragViewHeight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getDraggableLinearLayout()Lcom/coui/appcompat/panel/COUIPanelContentLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method public getLeftButton()Landroid/widget/Button;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_e

    const v0, 0x102001a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutSideViewOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    return-object p0
.end method

.method public getRightButton()Landroid/widget/Button;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    if-eqz p0, :cond_e

    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShowOnFirstPanel()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTitleView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    return-object p0
.end method

.method public getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method public getToolbarHeight()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAbandon(Ljava/lang/Boolean;)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setOutSideViewOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    if-eqz p1, :cond_25

    const/4 v0, 0x0

    const-string v1, "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setPanelFragment(Lcom/coui/appcompat/panel/COUIPanelFragment;Ljava/lang/Boolean;)V

    :cond_25
    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public onAdd(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$drawable;->coui_panel_bg_without_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$color;->coui_color_mask:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget v1, Lcom/support/appcompat/R$anim;->coui_open_slide_exit:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p3, v1, :cond_45

    new-array v1, v2, [F

    fill-array-data v1, :array_88

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelFragment;->EXIT_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_46

    :cond_45
    move-object v1, v3

    :goto_46
    sget v4, Lcom/support/appcompat/R$anim;->coui_close_slide_enter:I

    if-ne p3, v4, :cond_75

    new-array v1, v2, [F

    fill-array-data v1, :array_90

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v1, 0x15e

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelFragment;->ENTER_MASK_ALPHA_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment$2;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/panel/COUIPanelFragment$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/panel/COUIPanelFragment$3;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :cond_75
    if-eqz v3, :cond_82

    if-eqz v1, :cond_82

    new-instance p1, Lcom/coui/appcompat/panel/COUIPanelFragment$4;

    invoke-direct {p1, p0, v0, v3}, Lcom/coui/appcompat/panel/COUIPanelFragment$4;-><init>(Lcom/coui/appcompat/panel/COUIPanelFragment;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v1, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v1

    :cond_82
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0

    nop

    :array_88
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_90
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
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

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    const-string v1, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    iget-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    if-eqz v1, :cond_16

    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout_tiny:I

    goto :goto_18

    :cond_16
    sget v1, Lcom/support/appcompat/R$layout;->coui_panel_view_layout:I

    :goto_18
    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDragView()Landroid/widget/ImageView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragView:Landroid/view/View;

    iget-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p3}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getPanelBarView()Lcom/coui/appcompat/panel/COUIPanelBarView;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelBarView:Lcom/coui/appcompat/panel/COUIPanelBarView;

    sget p3, Lcom/support/appcompat/R$layout;->coui_panel_layout:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$id;->bottom_sheet_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    sget p2, Lcom/support/appcompat/R$id;->title_view_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentResId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget p3, Lcom/support/appcompat/R$id;->panel_content:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelView:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    return-object p0
.end method

.method public onHide(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "SAVE_IS_SHOW_IN_FIRST_PANEL_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    const-string v0, "SAVE_IS_IN_TINY_SCREEN_PANEL_KEY"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShow(Ljava/lang/Boolean;)V
    .registers 2

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method public setIsInTinyScreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsInTinyScreen:Z

    return-void
.end method

.method public setOutSideViewOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mOutSideViewOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setPanelDragListener(Lcom/coui/appcompat/panel/COUIPanelDragListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mDragPanelListener:Lcom/coui/appcompat/panel/COUIPanelDragListener;

    return-void
.end method

.method public setPanelFragmentAnimationListener(Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mPanelFragmentAnimationListener:Lcom/coui/appcompat/panel/COUIPanelFragment$PanelFragmentAnimationListener;

    return-void
.end method

.method public setShowOnFirstPanel(Ljava/lang/Boolean;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mIsShowOnFirstPanel:Ljava/lang/Boolean;

    return-void
.end method

.method public setTitleView(I)V
    .registers 5

    if-lez p1, :cond_14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setTitleView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleView:Landroid/view/View;

    :cond_1d
    return-void
.end method

.method public setToolbar(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mTitleViewLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelFragment;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    :cond_15
    return-void
.end method
