.class public Lcom/oplus/uxicon/ui/ui/MyLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private mChildViewTouchable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    return-void
.end method

.method private setChildViewEnable(Landroid/view/View;Z)V
    .registers 6

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    :cond_8
    :goto_8
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_36

    invoke-virtual {p0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    :cond_25
    const/4 p1, 0x0

    :goto_26
    if-ge p1, v1, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_32
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    :cond_36
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    if-eqz v0, :cond_d

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public setChildViewTouchable(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_15

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->mChildViewTouchable:Z

    invoke-direct {p0, v0, v1}, Lcom/oplus/uxicon/ui/ui/MyLinearLayout;->setChildViewEnable(Landroid/view/View;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_15
    return-void
.end method
