.class public Lcom/coui/appcompat/checklayout/CheckableLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field public a:Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setCheckbleView(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_23

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_17

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/checklayout/CheckableLayout;->setCheckbleView(Landroid/view/ViewGroup;)V

    goto :goto_20

    :cond_17
    instance-of v3, v2, Landroid/widget/Checkable;

    if-eqz v3, :cond_20

    check-cast v2, Landroid/widget/Checkable;

    iput-object v2, p0, Lcom/coui/appcompat/checklayout/CheckableLayout;->a:Landroid/widget/Checkable;

    return-void

    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/checklayout/CheckableLayout;->a:Landroid/widget/Checkable;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Landroid/widget/Checkable;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-direct {p0, p0}, Lcom/coui/appcompat/checklayout/CheckableLayout;->setCheckbleView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/checklayout/CheckableLayout;->a:Landroid/widget/Checkable;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public toggle()V
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/checklayout/CheckableLayout;->a:Landroid/widget/Checkable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/widget/Checkable;->toggle()V

    :cond_7
    return-void
.end method
