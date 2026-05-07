.class public Lcom/android/wm/shell/pip/tv/TvPipMenuView;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIRST_CUSTOM_ACTION_POSITION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TvPipMenuView"


# instance fields
.field private final mActionButtonsContainer:Landroid/widget/LinearLayout;

.field private final mAdditionalButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowLeft:Landroid/widget/ImageView;

.field private final mArrowRight:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private mButtonMenuIsVisible:Z

.field private final mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

.field private mCurrentPipBounds:Landroid/graphics/Rect;

.field private final mEduTextContainerView:Landroid/view/View;

.field private final mEduTextFadeExitAnimationDurationMs:I

.field private mEduTextHeight:I

.field private final mEduTextSlideExitAnimationDurationMs:I

.field private final mEduTextView:Landroid/widget/TextView;

.field private final mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

.field private mFocusedButton:Landroid/view/View;

.field private final mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMenuFrameView:Landroid/view/View;

.field private mMoveMenuIsVisible:Z

.field private final mPipFrameView:Landroid/view/View;

.field private final mPipMenuBorderWidth:I

.field private final mPipMenuFadeAnimationDuration:I

.field private final mPipMenuOuterSpace:I

.field private final mPipView:Landroid/view/View;

.field private final mResizeAnimationDuration:I

.field private final mScrollView:Landroid/widget/ScrollView;

.field private mSwitchingOrientation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    sget p2, Lcom/android/wm/shell/R$layout;->tv_pip_menu:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_action_buttons:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_fullscreen_button:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_close_button:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iput-object p3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setIsCustomCloseAction(Z)V

    sget p3, Lcom/android/wm/shell/R$id;->tv_pip_menu_move_button:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_expand_button:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_scroll:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_horizontal_scroll:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_frame:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_border:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_up:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_right:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_down:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_arrow_left:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_edu_text:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    sget p2, Lcom/android/wm/shell/R$id;->tv_pip_menu_edu_text_container:I

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->config_pipResizeAnimationDuration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->pip_menu_fade_animation_duration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_outer_space:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_border_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$dimen;->pip_menu_edu_text_view_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->pip_edu_text_view_exit_animation_duration_ms:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextFadeExitAnimationDurationMs:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/wm/shell/R$integer;->pip_edu_text_window_exit_animation_duration_ms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextSlideExitAnimationDurationMs:I

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->initEduText()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$hideEduText$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private animateAlphaTo(FLandroid/view/View;)V
    .registers 6

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    goto :goto_1b

    :cond_19
    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuFadeAnimationDuration:I

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wm/shell/pip/tv/d;-><init>(FLandroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/pip/tv/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/wm/shell/pip/tv/d;-><init>(FLandroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$onPipTransitionStarted$3(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic c(FLandroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$animateAlphaTo$4(FLandroid/view/View;)V

    return-void
.end method

.method private changeButtonScrollOrientation(Landroid/graphics/Rect;)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    move p1, v2

    :goto_f
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    :goto_16
    if-eqz p1, :cond_1b

    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_1d

    :cond_1b
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    :goto_1d
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v1, :cond_54

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v4, :cond_36

    const-string v4, "TvPipMenuView"

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x77c19438

    const/4 v7, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    invoke-static {v5, v6, v2, v7, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_36
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_54
    return-void
.end method

.method private checkGravity(II)Z
    .registers 3

    and-int p0, p1, p2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static synthetic d(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$initEduText$0(Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$hideEduText$2()V

    return-void
.end method

.method public static synthetic f(FLandroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->lambda$animateAlphaTo$5(FLandroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$animateAlphaTo$4(FLandroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$animateAlphaTo$5(FLandroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_a

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$hideEduText$1(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    return-void
.end method

.method private synthetic lambda$hideEduText$2()V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextContainerView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initEduText$0(Landroid/text/SpannableString;Landroid/text/SpannedString;Landroid/text/Annotation;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$drawable;->home_icon:I

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_33

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/tv/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p2, p3}, Landroid/text/SpannedString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_33
    return-void
.end method

.method private synthetic lambda$onPipTransitionStarted$3(Landroid/graphics/Rect;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->changeButtonScrollOrientation(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    return-void
.end method

.method private refocusPreviousButton()V
    .registers 10

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    if-nez v0, :cond_cd

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_cd

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-nez v1, :cond_e

    goto/16 :goto_cd

    :cond_e
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v3

    :goto_1f
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "TvPipMenuView"

    if-nez v1, :cond_49

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, 0x21695837

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v7, v8, v3, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_43
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_61

    :cond_49
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x1f126169

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v3

    aput-object v1, v4, v2

    invoke-static {v7, v8, v3, v5, v4}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_61
    :goto_61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_73

    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/ScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    goto :goto_78

    :cond_73
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/HorizontalScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    :goto_78
    iget-object v7, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_94

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_93

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x2137a43c

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {p0, v0, v3, v5, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_93
    return-void

    :cond_94
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v1, :cond_a4

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x7c97c8a9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v3

    invoke-static {v1, v4, v3, v5, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a4
    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_cd

    :cond_ba
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    :cond_cd
    :goto_cd
    return-void
.end method

.method private setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_16
    invoke-virtual {p1}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    :goto_1d
    invoke-virtual {p1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setEnabled(Z)V

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/popup/r;

    invoke-direct {v0, p2}, Lcom/android/launcher3/popup/r;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;)V

    invoke-virtual {p1, p0, v0, p3}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setFrameHighlighted(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMenuFrameView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method private updateButtonGravity(Landroid/graphics/Rect;)V
    .registers 15

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v3

    :goto_f
    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-boolean v4, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-string v8, "TvPipMenuView"

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v11, 0x653a1edf

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v8, v12, v3

    aput-object v4, v12, v2

    aput-object v9, v12, v5

    invoke-static {v10, v11, v3, v7, v12}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    if-eqz v0, :cond_55

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ge v1, p1, :cond_5d

    goto :goto_5b

    :cond_55
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-ge v1, p1, :cond_5d

    :goto_5b
    move p1, v2

    goto :goto_5e

    :cond_5d
    move p1, v3

    :goto_5e
    if-eqz p1, :cond_63

    const/16 v1, 0x11

    goto :goto_69

    :cond_63
    if-eqz v0, :cond_67

    move v1, v2

    goto :goto_69

    :cond_67
    const/16 v1, 0x10

    :goto_69
    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_a1

    invoke-static {v1}, Landroid/view/Gravity;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x3127ae7e

    const/16 v9, 0x3c

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v10, v5

    aput-object p0, v10, v6

    invoke-static {v1, v4, v9, v7, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a1
    return-void
.end method

.method private updatePipFrameBounds()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuBorderWidth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipFrameView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_27
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_44
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    :cond_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4d

    const/16 v2, 0x42

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3c

    packed-switch v0, :pswitch_data_58

    goto :goto_53

    :pswitch_27  #0x13, 0x14, 0x15, 0x16
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onPipMovement(I)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v3

    :cond_3b
    :goto_3b
    return v1

    :cond_3c
    :pswitch_3c  #0x17
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onExitMoveMode()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v3

    :cond_4c
    :goto_4c
    return v1

    :cond_4d
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onBackPress()V

    return v1

    :cond_53
    :goto_53
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_58
    .packed-switch 0x13
        :pswitch_27  #00000013
        :pswitch_27  #00000014
        :pswitch_27  #00000015
        :pswitch_27  #00000016
        :pswitch_3c  #00000017
    .end packed-switch
.end method

.method public getPipMenuContainerBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipMenuOuterSpace:I

    neg-int v1, p1

    neg-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    add-int/2addr p1, p0

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method public getWindowSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_15

    return-object p0

    :cond_15
    return-object v0
.end method

.method public hideAllUserControls()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x7bc1b495

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v2, v1, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iput-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    invoke-direct {p0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    return-void
.end method

.method public hideEduText()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextHeight:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextSlideExitAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->BROWSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/quickstep/views/a;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/a;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextFadeExitAnimationDurationMs:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/pip/tv/a;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/tv/a;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public hideMovementHints()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method public initEduText()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$string;->pip_edu_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/SpannedString;

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannedString;->length()I

    move-result v2

    const-class v3, Landroid/text/Annotation;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/text/SpannedString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Annotation;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/v;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/launcher3/model/v;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/text/SpannableString;Landroid/text/SpannedString;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_fullscreen_button:I

    if-ne v0, v1, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onFullscreenButtonClick()V

    goto :goto_6f

    :cond_13
    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_move_button:I

    if-ne v0, v1, :cond_1d

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onEnterMoveMode()V

    goto :goto_6f

    :cond_1d
    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_close_button:I

    if-ne v0, v1, :cond_27

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onCloseButtonClick()V

    goto :goto_6f

    :cond_27
    sget v1, Lcom/android/wm/shell/R$id;->tv_pip_menu_expand_button:I

    if-ne v0, v1, :cond_31

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;->onToggleExpandedMode()V

    goto :goto_6f

    :cond_31
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/RemoteAction;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "TvPipMenuView"

    const/4 v2, 0x0

    if-eqz p0, :cond_5f

    :try_start_3e
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3e .. :try_end_45} :catch_46

    goto :goto_6f

    :catch_46
    move-exception p0

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v3, :cond_6f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x6e97ae5f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object p0, v5, p1

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6f

    :cond_5f
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz p0, :cond_6f

    sget-object p0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x53f8bfa8

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v1, p1, v2

    invoke-static {p0, v3, v2, v0, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method public onPipTransitionFinished()V
    .registers 7

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const-string v0, "TvPipMenuView"

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x6e93c7d4

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->ENTER:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_52

    :cond_4f
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :goto_52
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    return-void
.end method

.method public onPipTransitionStarted(Landroid/graphics/Rect;)V
    .registers 12

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x2

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/android/wm/shell/pip/PipUtils;->aspectRatioChanged(FF)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mPipView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/2addr v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_42
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_50

    move v0, v4

    goto :goto_51

    :cond_50
    move v0, v3

    :goto_51
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-ne v2, v4, :cond_5b

    move v2, v4

    goto :goto_5c

    :cond_5b
    move v2, v3

    :goto_5c
    if-eq v0, v2, :cond_60

    move v0, v4

    goto :goto_61

    :cond_60
    move v0, v3

    :goto_61
    sget-boolean v2, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v2, :cond_7c

    const-string v2, "TvPipMenuView"

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0xc3be9de

    const/16 v7, 0xc

    const/4 v8, 0x0

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v2, v9, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7c
    if-nez v0, :cond_7f

    return-void

    :cond_7f
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    if-eqz v0, :cond_a7

    iput-boolean v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/pip/tv/TvPipInterpolators;->EXIT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mResizeAnimationDuration:I

    div-int/2addr v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/tv/b;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/pip/tv/b;-><init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_ad

    :cond_a7
    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->changeButtonScrollOrientation(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    :goto_ad
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideAllUserControls()V

    :cond_8
    return-void
.end method

.method public setAdditionalActions(Ljava/util/List;Landroid/app/RemoteAction;Landroid/os/Handler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-direct {p0, p2, v0, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V

    goto :goto_16

    :cond_8
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    sget v1, Lcom/android/wm/shell/R$string;->pip_close:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setTextAndDescription(I)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    sget v1, Lcom/android/wm/shell/R$drawable;->pip_ic_close_white:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setImageResource(I)V

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    invoke-virtual {v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setIsCustomCloseAction(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCloseButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v0, v2, :cond_50

    :goto_35
    if-le v0, v2, :cond_68

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    iget-object v5, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {v5, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_50
    if-ge v0, v2, :cond_68

    :goto_52
    if-ge v0, v2, :cond_68

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    :cond_68
    :goto_68
    if-ge v1, v0, :cond_88

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    iget-object v4, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mAdditionalButtons:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    invoke-static {v2, p2}, Lcom/android/wm/shell/pip/PipUtils;->remoteActionsMatch(Landroid/app/RemoteAction;Landroid/app/RemoteAction;)Z

    move-result v5

    if-eqz v5, :cond_82

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_85

    :cond_82
    invoke-direct {p0, v2, v4, p3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setActionForButton(Landroid/app/RemoteAction;Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;Landroid/os/Handler;)V

    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_88
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_92

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :cond_92
    return-void
.end method

.method public setEduTextActive(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mEduTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public setExpandedModeEnabled(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public setIsExpanded(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz p1, :cond_7

    sget v1, Lcom/android/wm/shell/R$drawable;->pip_ic_collapse:I

    goto :goto_9

    :cond_7
    sget v1, Lcom/android/wm/shell/R$drawable;->pip_ic_expand:I

    :goto_9
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mExpandButton:Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;

    if-eqz p1, :cond_13

    sget p1, Lcom/android/wm/shell/R$string;->pip_collapse:I

    goto :goto_15

    :cond_13
    sget p1, Lcom/android/wm/shell/R$string;->pip_expand:I

    :goto_15
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuActionButton;->setTextAndDescription(I)V

    return-void
.end method

.method public setListener(Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;)V
    .registers 2
    .param p1  # Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mListener:Lcom/android/wm/shell/pip/tv/TvPipMenuView$Listener;

    return-void
.end method

.method public showButtonsMenu()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->hideMovementHints()V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    if-nez v2, :cond_33

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mFocusedButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    goto :goto_30

    :cond_2f
    move v2, v1

    :goto_30
    invoke-virtual {v0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_33
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    return-void
.end method

.method public showButtonsMenu(Z)V
    .registers 4

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->refocusPreviousButton()V

    :cond_b
    if-eqz p1, :cond_10

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mActionButtonsContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method public showMoveMenu(I)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mButtonMenuIsVisible:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mMoveMenuIsVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showButtonsMenu(Z)V

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->showMovementHints(I)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->setFrameHighlighted(Z)V

    return-void
.end method

.method public showMovementHints(I)V
    .registers 6

    const/16 v0, 0x50

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowUp:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    const/16 v0, 0x30

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowDown:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iget-object v3, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->checkGravity(II)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mArrowRight:Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->animateAlphaTo(FLandroid/view/View;)V

    return-void
.end method

.method public updateBounds(Landroid/graphics/Rect;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    if-eqz v0, :cond_2b

    const-string v0, "TvPipMenuView"

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x185d60ca

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mCurrentPipBounds:Landroid/graphics/Rect;

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->mSwitchingOrientation:Z

    if-nez v0, :cond_34

    invoke-direct {p0, p1}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updateButtonGravity(Landroid/graphics/Rect;)V

    :cond_34
    invoke-direct {p0}, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->updatePipFrameBounds()V

    return-void
.end method
