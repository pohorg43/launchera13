.class public Lcom/android/launcher/behavior/HeadScaleBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadScaleBehavior"


# instance fields
.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mChild:Landroid/view/View;

.field private mCurrentOffset:I

.field private mMaxHeight:I

.field private mScaleEnable:Z

.field private mScrollView:Landroid/view/View;

.field private searchView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScaleEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScaleEnable:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/behavior/HeadScaleBehavior;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScaleEnable:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/behavior/HeadScaleBehavior;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/behavior/HeadScaleBehavior;->onListScroll()V

    return-void
.end method

.method private onListScroll()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mChild:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScrollView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2d

    move v1, v2

    :goto_13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mChild:Landroid/view/View;

    goto :goto_2d

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mChild:Landroid/view/View;

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScrollView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mChild:Landroid/view/View;

    :cond_35
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mChild:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    if-gez v0, :cond_45

    iget v2, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    goto :goto_4c

    :cond_45
    iget v1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    if-le v0, v1, :cond_4a

    goto :goto_4c

    :cond_4a
    sub-int v2, v1, v0

    :goto_4c
    iget v0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mCurrentOffset:I

    if-ne v0, v2, :cond_51

    return-void

    :cond_51
    iput v2, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mCurrentOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scaleRange = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HeadScaleBehavior"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    iget-boolean p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScaleEnable:Z

    if-nez p1, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher/behavior/HeadScaleBehavior;->onListScroll()V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher/behavior/HeadScaleBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    and-int/lit8 p5, p5, 0x2

    const/4 p6, 0x0

    if-eqz p5, :cond_16

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p3

    if-gt p1, p3, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    move p1, p6

    :goto_17
    if-eqz p1, :cond_2f

    iget p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    if-gtz p1, :cond_2f

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mMaxHeight:I

    iput-object p2, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p4, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScrollView:Landroid/view/View;

    new-instance p1, Lcom/android/launcher/behavior/HeadScaleBehavior$1;

    invoke-direct {p1, p0}, Lcom/android/launcher/behavior/HeadScaleBehavior$1;-><init>(Lcom/android/launcher/behavior/HeadScaleBehavior;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_2f
    return p6
.end method

.method public setScaleEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/behavior/HeadScaleBehavior;->mScaleEnable:Z

    return-void
.end method
