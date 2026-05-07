.class public Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCancelButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;
    }
.end annotation


# instance fields
.field public a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

.field public volatile b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    invoke-interface {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;->a()V

    :cond_c
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setPerformClickCallback(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton$PerformClickCallback;

    return-void
.end method

.method public setPerformClicked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    return-void
.end method
