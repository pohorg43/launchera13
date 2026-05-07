.class Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;
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
    name = "DropAnimationListener"
.end annotation


# instance fields
.field private canceled:Z

.field private endPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

.field private startPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

.field private thumbOffsetX:I

.field private thumbOffsetY:I


# direct methods
.method private constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->startPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->endPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Lcom/oplus/splitscreen/SplitScreenDragIconPanel$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;-><init>(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DropAnimation::onAnimationEnd   canceled="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->canceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1202(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->canceled:Z

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$400(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2c
    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1300(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->setDropAnimalStatus(Z)V

    :cond_4e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DropAnimation::onAnimationStart"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_d3

    :try_start_12
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->startPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget v1, v0, Lcom/oplus/splitscreen/DropAnimatorInfo;->posX:I

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->endPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget v3, v2, Lcom/oplus/splitscreen/DropAnimatorInfo;->posX:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    iget v0, v0, Lcom/oplus/splitscreen/DropAnimatorInfo;->posY:I

    iget v2, v2, Lcom/oplus/splitscreen/DropAnimatorInfo;->posY:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->thumbOffsetX:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->thumbOffsetY:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v4, v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v4, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v4, v2, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$900(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object v2

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v4, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_5c
    iget-object v0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->startPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget v1, v0, Lcom/oplus/splitscreen/DropAnimatorInfo;->posWidth:I

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->endPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iget v4, v2, Lcom/oplus/splitscreen/DropAnimatorInfo;->posWidth:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v1, v4

    iget v0, v0, Lcom/oplus/splitscreen/DropAnimatorInfo;->posHeight:I

    iget v2, v2, Lcom/oplus/splitscreen/DropAnimatorInfo;->posHeight:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int p1, v2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result p1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1000(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v4, v1

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$1100(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, v2, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v1, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object v0, p1, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$800(Lcom/oplus/splitscreen/SplitScreenDragIconPanel;)Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->this$0:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_b8} :catch_b9

    goto :goto_dc

    :catch_b9
    move-exception p0

    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropAnimation::onAnimationUpdate  failed  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :cond_d3
    invoke-static {}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DropAnimation::onAnimationUpdate    mAnimSurfaceControl null"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_dc
    return-void
.end method

.method public resetRect(Lcom/oplus/splitscreen/DropAnimatorInfo;Lcom/oplus/splitscreen/DropAnimatorInfo;II)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->startPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iput-object p2, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->endPos:Lcom/oplus/splitscreen/DropAnimatorInfo;

    iput p3, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->thumbOffsetX:I

    iput p4, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->thumbOffsetY:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DropAnimationListener;->canceled:Z

    return-void
.end method
