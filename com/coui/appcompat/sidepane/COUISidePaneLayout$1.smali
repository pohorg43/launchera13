.class Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/sidepane/COUISidePaneLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->d()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->a()Z

    goto :goto_13

    :cond_e
    iget-object p0, p0, Lcom/coui/appcompat/sidepane/COUISidePaneLayout$1;->a:Lcom/coui/appcompat/sidepane/COUISidePaneLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/sidepane/COUISidePaneLayout;->f()Z

    :goto_13
    return-void
.end method
