.class public Lcom/facebook/rebound/ui/SpringConfiguratorView$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm1/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringAtRest(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringEndStateChange(Lm1/d;)V
    .registers 2

    return-void
.end method

.method public onSpringUpdate(Lm1/d;)V
    .registers 4

    iget-object p1, p1, Lm1/d;->c:Lm1/d$b;

    iget-wide v0, p1, Lm1/d$b;->a:D

    double-to-float p1, v0

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$c;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    iget v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->e:F

    iget v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->d:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
