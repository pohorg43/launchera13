.class Lcom/coui/appcompat/toolbar/COUIToolbar$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/toolbar/COUIToolbar;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/toolbar/COUIToolbar;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$3;->a:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIToolbar$3;->a:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->collapseActionView()V

    return-void
.end method
