.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitScreenDragIconPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScalePaneListener"
.end annotation


# instance fields
.field private isEnlarge:Z

.field private panelOffsetRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    return-void
.end method


# virtual methods
.method public getPanelHeight()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method public getPanelWidth()I
    .registers 2

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    add-int/2addr v0, p0

    :cond_f
    return v0
.end method

.method public init(Landroid/graphics/Rect;Z)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    iput-boolean p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1702(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Z)V

    :cond_10
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScaleAnimation:onAnimationEnd mPanelSurface="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->isEnlarge:Z

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1600(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Z)V

    :cond_a
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bc

    :try_start_1a
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1500(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->panelOffsetRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p1

    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p1

    if-eqz p1, :cond_9a

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_9a
    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$ScalePaneListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_a1} :catch_a2

    goto :goto_c5

    :catch_a2
    move-exception p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mExpandScaleAnim failed surface is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c5

    :cond_bc
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mAnimSurfaceControl is null animEnlarge "

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c5
    return-void
.end method
