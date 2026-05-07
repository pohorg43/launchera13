.class Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;
.super Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollBehavior"
.end annotation


# instance fields
.field private mLastStartedType:I

.field private mShouldSnapToBottom:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p0

    return p0
.end method

.method public canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z
    .registers 5

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->canDragView(Lcom/google/android/material/appbar/AppBarLayout;)Z

    move-result p0

    instance-of v0, p1, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    check-cast p1, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->getMode()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    move p1, v1

    goto :goto_16

    :cond_15
    :goto_15
    move p1, v2

    :goto_16
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    move v1, v2

    :cond_1b
    return v1
.end method

.method public contentInScreen(Landroid/view/View;)Z
    .registers 3

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public getTopBottomOffsetForScrollingSibling()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mShouldSnapToBottom:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mShouldSnapToBottom:Z

    return v0

    :cond_8
    invoke-super {p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V
    .registers 16
    .param p2  # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p3, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-gez v0, :cond_b

    const/4 p5, 0x0

    :cond_b
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 10
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p9}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V
    .registers 20
    .param p2  # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v2, p2

    instance-of v0, v2, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    if-eqz v0, :cond_12

    move-object v0, v2

    check-cast v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    invoke-static {v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->access$100(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    move v7, v0

    goto :goto_14

    :cond_12
    move/from16 v7, p7

    :goto_14
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-super/range {v0 .. v9}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIIII[I)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
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

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7
    .param p1  # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p6, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mLastStartedType:I

    invoke-super/range {p0 .. p6}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .registers 11
    .param p2  # Lcom/google/android/material/appbar/AppBarLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8b

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    if-eqz v1, :cond_8b

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    const/16 v2, 0x11

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_32

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->contentInScreen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    iget-boolean v4, v4, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    if-eqz v4, :cond_32

    move v4, v3

    goto :goto_33

    :cond_32
    move v4, v0

    :goto_33
    iput-boolean v4, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mShouldSnapToBottom:Z

    if-eqz v4, :cond_42

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    invoke-static {v4}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->access$200(Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;)Z

    move-result v4

    if-eqz v4, :cond_42

    move v4, v3

    goto :goto_43

    :cond_42
    move v4, v0

    :goto_43
    iput-boolean v4, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mShouldSnapToBottom:Z

    invoke-static {}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->access$300()Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string v4, "((mLastStartedType == ViewCompat.TYPE_TOUCH) || (type == ViewCompat.TYPE_NON_TOUCH)) = "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->mLastStartedType:I

    if-eqz v5, :cond_5a

    if-ne p4, v3, :cond_58

    goto :goto_5a

    :cond_58
    move v5, v0

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v5, v3

    :goto_5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n((snapFlag & LayoutParams.FLAG_SNAP) == LayoutParams.FLAG_SNAP) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_66

    move v0, v3

    :cond_66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n(contentInScreen(target)) = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout$ScrollBehavior;->contentInScreen(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n(((COUICollapsableAppBarLayout) abl).mCollapsable = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p2

    check-cast v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    iget-boolean v0, v0, Lcom/google/android/material/appbar/COUIDividerAppBarLayout;->mCollapsable:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUICollapsableAppBarLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/appbar/COUIDividerAppBarLayout$DividerBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method
