.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    sget p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    goto :goto_2b

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2b

    sget p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->u:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$9;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    :cond_2b
    :goto_2b
    return-void
.end method
