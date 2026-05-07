.class Lcom/coui/appcompat/indicator/COUIPageIndicator$3;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/indicator/COUIPageIndicator;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/indicator/COUIPageIndicator;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$3;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator;

    iget-object v1, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_d

    goto :goto_15

    :cond_d
    invoke-virtual {v0}, Lcom/coui/appcompat/indicator/COUIPageIndicator;->g()V

    iget-object v0, v0, Lcom/coui/appcompat/indicator/COUIPageIndicator;->P:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_15
    :goto_15
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
