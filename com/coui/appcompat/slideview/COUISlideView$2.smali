.class Lcom/coui/appcompat/slideview/COUISlideView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/slideview/COUISlideView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView$2;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$2;->a:Lcom/coui/appcompat/slideview/COUISlideView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->l0:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->k0:Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p0}, Lcom/coui/appcompat/slideview/COUISlideView$OnSmoothScrollListener;->a(Landroid/view/View;)V

    :cond_c
    return-void
.end method
