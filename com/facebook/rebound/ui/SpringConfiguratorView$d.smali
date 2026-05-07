.class public Lcom/facebook/rebound/ui/SpringConfiguratorView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Lcom/facebook/rebound/ui/SpringConfiguratorView$a;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 11

    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    iget-object v0, p3, Lcom/facebook/rebound/ui/SpringConfiguratorView;->h:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    const v2, 0x47c35000  # 100000.0f

    if-ne p1, v0, :cond_38

    int-to-float v0, p2

    const/high16 v3, 0x43480000  # 200.0f

    invoke-static {v0, v3, v2, v1}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result v0

    iget-object p3, p3, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Lm1/e;

    float-to-double v3, v0

    invoke-static {v3, v4}, Lq/d;->o(D)D

    move-result-wide v5

    iput-wide v5, p3, Lm1/e;->b:D

    sget-object p3, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Ljava/text/DecimalFormat;

    invoke-virtual {p3, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    iget-object v0, v0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_38
    iget-object p3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    iget-object v0, p3, Lcom/facebook/rebound/ui/SpringConfiguratorView;->i:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_6c

    int-to-float p1, p2

    const/high16 p2, 0x42480000  # 50.0f

    invoke-static {p1, p2, v2, v1}, Landroidx/constraintlayout/core/motion/utils/a;->a(FFFF)F

    move-result p1

    iget-object p2, p3, Lcom/facebook/rebound/ui/SpringConfiguratorView;->m:Lm1/e;

    float-to-double v0, p1

    invoke-static {v0, v1}, Lq/d;->j(D)D

    move-result-wide v2

    iput-wide v2, p2, Lm1/e;->a:D

    sget-object p1, Lcom/facebook/rebound/ui/SpringConfiguratorView;->n:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$d;->a:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    iget-object p0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView;->k:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "F:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6c
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
