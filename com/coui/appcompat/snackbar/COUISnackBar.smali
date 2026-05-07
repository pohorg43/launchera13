.class public Lcom/coui/appcompat/snackbar/COUISnackBar;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;,
        Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;
    }
.end annotation


# static fields
.field public static final u:Landroid/view/animation/PathInterpolator;

.field public static final v:Landroid/view/animation/PathInterpolator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/ViewGroup;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/ImageView;

.field public n:Landroid/view/View;

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/Runnable;

.field public t:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e19999a  # 0.15f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Landroid/view/animation/PathInterpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/snackbar/COUISnackBar;->v:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_child_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_off_screen_width_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->h:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_child_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_child_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_margin_vertical:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_context_margin_start_with_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_action_margin_top_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_snack_bar_off_screen_width_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->h:I

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static c(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :cond_2
    instance-of v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_9

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_9
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_19

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_19
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1c
    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_29

    check-cast p0, Landroid/view/View;

    goto :goto_2a

    :cond_29
    move-object p0, v0

    :cond_2a
    :goto_2a
    if-nez p0, :cond_2

    return-object v1
.end method

.method public static g(Landroid/view/View;Ljava/lang/String;I)Lcom/coui/appcompat/snackbar/COUISnackBar;
    .registers 7
    .param p0  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "No suitable parent found from the given view. Please provide a valid view."

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->c(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_6b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$layout;->coui_snack_bar_show_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    invoke-direct {v1, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setParent(Landroid/view/ViewGroup;)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    move p2, v3

    move v0, p2

    :goto_45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p2, v2, :cond_65

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/snackbar/COUISnackBar;

    if-eqz v2, :cond_62

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_61

    const/4 v0, 0x1

    goto :goto_62

    :cond_61
    move v0, v3

    :cond_62
    :goto_62
    add-int/lit8 p2, p2, 0x1

    goto :goto_45

    :cond_65
    if-nez v0, :cond_6a

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6a
    return-object v1

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getMaxWidth()I
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_10

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->h:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private setActionText(Ljava/lang/String;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setParent(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_20

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d(Landroid/view/View;)I

    move-result p0

    if-eq p0, p2, :cond_20

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_20
    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_2c

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/snackbar/COUISnackBar;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/coui/appcompat/snackbar/COUISnackBar$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/snackbar/COUISnackBar$2;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_2c
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public final d(Landroid/view/View;)I
    .registers 3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    sget v0, Lcom/support/appcompat/R$layout;->coui_snack_bar_item:I

    invoke-static {p1, v0, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->snack_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->tv_snack_bar_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->tv_snack_bar_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->n:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$id;->iv_snack_bar_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar$AutoDismissRunnable;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/coui/appcompat/snackbar/COUISnackBar$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUISnackBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_4f
    sget p2, Lcom/support/appcompat/R$styleable;->COUISnackBar_defaultSnackBarContentText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    sget p2, Lcom/support/appcompat/R$styleable;->COUISnackBar_snackBarDisappearTime:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setDuration(I)V

    :cond_67
    sget p2, Lcom/support/appcompat/R$styleable;->COUISnackBar_couiSnackBarIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_70} :catch_76
    .catchall {:try_start_4f .. :try_end_70} :catchall_74

    :goto_70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_92

    :catchall_74
    move-exception p0

    goto :goto_93

    :catch_76
    move-exception p0

    :try_start_77
    const-string p2, "COUISnackBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure setting COUISnackBar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_77 .. :try_end_91} :catchall_74

    goto :goto_70

    :goto_92
    return-void

    :goto_93
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final f()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getActionText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public getContentText()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDuration()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->p:I

    return p0
.end method

.method public h(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p2  # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_33

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_33

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setActionText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->a(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    new-instance v0, Lcom/coui/appcompat/snackbar/COUISnackBar$1;

    invoke-direct {v0, p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar$1;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->i:Landroid/view/ViewGroup;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_123

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f()Z

    move-result p2

    if-eqz p2, :cond_16

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    goto :goto_18

    :cond_16
    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    :goto_18
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->o:I

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f()Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    add-int/2addr p1, p3

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->f:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    add-int/2addr p3, p2

    goto :goto_45

    :cond_3f
    iget p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    mul-int/lit8 p1, p1, 0x3

    add-int p3, p1, p2

    :goto_45
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->j:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    add-int/2addr p4, p2

    sub-int/2addr p1, p4

    const/4 p2, 0x0

    const/4 p4, 0x1

    if-le p3, p1, :cond_5f

    move p1, p4

    goto :goto_60

    :cond_5f
    move p1, p2

    :goto_60
    if-eqz p1, :cond_63

    goto :goto_8c

    :cond_63
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    if-le p1, p4, :cond_6d

    move p1, p4

    goto :goto_6e

    :cond_6d
    move p1, p2

    :goto_6e
    if-eqz p1, :cond_71

    goto :goto_8c

    :cond_71
    iget p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->o:I

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:I

    if-le p1, p3, :cond_79

    move p1, p4

    goto :goto_7a

    :cond_79
    move p1, p2

    :goto_7a
    if-eqz p1, :cond_7d

    goto :goto_8c

    :cond_7d
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->b:I

    if-lt p1, p3, :cond_89

    move p1, p4

    goto :goto_8a

    :cond_89
    move p1, p2

    :goto_8a
    if-eqz p1, :cond_8d

    :goto_8c
    move p2, p4

    :cond_8d
    if-eqz p2, :cond_d1

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f()Z

    move-result p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_b1
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->c:I

    iget-object p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    add-int/2addr p3, p2

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->g:I

    add-int/2addr p3, p2

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->e:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_123

    :cond_d1
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d(Landroid/view/View;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->f()Z

    move-result p4

    if-eqz p4, :cond_116

    iget-object p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d(Landroid/view/View;)I

    move-result p4

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    if-ne p3, p4, :cond_fe

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p4}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_123

    :cond_fe
    if-ne p3, p1, :cond_10b

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_123

    :cond_10b
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_123

    :cond_116
    if-le p1, p2, :cond_11e

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    goto :goto_123

    :cond_11e
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->a(Landroid/view/View;I)V

    :cond_123
    :goto_123
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-direct {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getMaxWidth()I

    move-result v2

    if-lez v2, :cond_18

    if-eqz v0, :cond_18

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_18
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->o:I

    iget p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->a:I

    iget p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->d:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->q:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    if-eq p1, v0, :cond_10

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    goto :goto_31

    :cond_10
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31

    :cond_2a
    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_31

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_31
    :goto_31
    return v0
.end method

.method public setContentText(I)V
    .registers 3
    .param p1  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public setContentText(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_1c

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1c

    :cond_15
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->r:Ljava/lang/String;

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setDuration(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->p:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    if-eqz p1, :cond_29

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->s:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->getDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    return-void
.end method

.method public setIconDrawable(I)V
    .registers 4
    .param p1  # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15

    :cond_a
    iget-object v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_15
    return-void
.end method

.method public setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar;->t:Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;

    return-void
.end method
