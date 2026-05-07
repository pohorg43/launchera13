.class public Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;
.super Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollViewBehavior"
.end annotation


# instance fields
.field public mObjectAnimator:Landroid/animation/ValueAnimator;

.field private mOnScrollListenerIsAdd:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>()V

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$COUIFloatingButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/animation/ObjectAnimator;

    invoke-direct {p1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    return-void
.end method

.method public static synthetic access$2100(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V

    return-void
.end method

.method private behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V
    .registers 7

    const/16 v0, 0xa

    if-le p2, v0, :cond_53

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_53

    iget-object p2, p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->a:Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;

    iget-boolean p2, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$InstanceState;->a:Z

    if-eqz p2, :cond_41

    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_41

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->p(Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v0

    invoke-virtual {p2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/16 p0, 0xfa

    invoke-virtual {p1, v1, v0, p0, v0}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->r(ZZIZ)V

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_5a

    :cond_41
    iget-object p2, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_5a

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->h()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mObjectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5a

    :cond_53
    const/16 p0, -0xa

    if-ge p2, p0, :cond_5a

    invoke-virtual {p1}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;->e()V

    :cond_5a
    :goto_5a
    return-void
.end method


# virtual methods
.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6  # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    instance-of p1, p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    if-eqz p1, :cond_c

    check-cast p2, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;

    invoke-direct {p0, p2, p5}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->behaviorAnimate(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton;I)V

    :cond_c
    return-void
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 9
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of p1, p4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p3, 0x0

    const/4 p5, 0x1

    if-eqz p1, :cond_27

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p6

    if-eqz p6, :cond_26

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    if-nez p1, :cond_26

    new-instance p1, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;

    invoke-direct {p1, p0, p2}, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior$1;-><init>(Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;Landroid/view/View;)V

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iput-boolean p5, p0, Lcom/coui/appcompat/floatingactionbutton/COUIFloatingButton$ScrollViewBehavior;->mOnScrollListenerIsAdd:Z

    :cond_26
    return p3

    :cond_27
    instance-of p0, p4, Landroid/widget/AbsListView;

    if-eqz p0, :cond_76

    move-object p0, p4

    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    invoke-virtual {p0, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p6

    invoke-virtual {p4}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p6, v0

    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    check-cast p4, Landroid/widget/AbsListView;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p4, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-lez p2, :cond_76

    if-lez p1, :cond_76

    invoke-virtual {p4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    if-nez p2, :cond_66

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    neg-int p2, p6

    if-lt p0, p2, :cond_66

    return p3

    :cond_66
    if-eqz v1, :cond_76

    invoke-virtual {p4}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result p0

    sub-int/2addr p1, p5

    if-ne p0, p1, :cond_76

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result p0

    if-gt p0, v0, :cond_76

    return p3

    :cond_76
    return p5
.end method
