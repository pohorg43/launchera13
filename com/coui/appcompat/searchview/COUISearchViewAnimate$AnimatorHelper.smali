.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorHelper"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public volatile c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public final synthetic h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 4

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->k:J

    iput-wide v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$1;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->d:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$2;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->e:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$3;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->f:Ljava/lang/Runnable;

    new-instance p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$4;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 10

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_12

    const-string p0, "COUISearchViewAnimate"

    const-string v0, "runStateChangeAnimation: same state , return. targetState = "

    invoke-static {v0, p1, p0}, Landroidx/recyclerview/widget/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_12
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x42a00000  # 80.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne p1, v6, :cond_15b

    monitor-enter p0

    :try_start_1e
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_29

    monitor-exit p0

    goto/16 :goto_2c7

    :cond_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_158

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-boolean v6, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Z

    if-eqz v6, :cond_94

    iget-object v6, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    if-eqz v6, :cond_c0

    iget v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    if-nez v6, :cond_6b

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result p1

    if-nez p1, :cond_51

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    goto :goto_6b

    :cond_51
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int/2addr p1, v6

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/2addr v6, p1

    iput v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    :cond_6b
    :goto_6b
    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$7;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$7;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_c0

    :cond_94
    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_c0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$5;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$5;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c0
    :goto_c0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_e0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p1, :cond_109

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_109
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    if-eqz p1, :cond_2c7

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-array p1, v0, [F

    fill-array-data p1, :array_2c8

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$13;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$13;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$14;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$14;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2c7

    :catchall_158
    move-exception p1

    :try_start_159
    monitor-exit p0
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw p1

    :cond_15b
    if-nez p1, :cond_2c7

    monitor-enter p0

    :try_start_15e
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_169

    monitor-exit p0

    goto/16 :goto_2c7

    :cond_169
    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_15e .. :try_end_16a} :catchall_2c4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-boolean v6, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Z

    if-eqz v6, :cond_1f1

    iget-object v6, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    if-eqz v6, :cond_224

    iget v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    if-nez v6, :cond_1ba

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Z

    move-result p1

    if-nez p1, :cond_1a0

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLeft()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    goto :goto_1ba

    :cond_1a0
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    sub-int/2addr p1, v6

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/2addr v6, p1

    iput v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    :cond_1ba
    :goto_1ba
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->b:I

    iget-object v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v6, v6, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$8;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$8;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_224

    :cond_1f1
    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_224

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setRotationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$6;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$6;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_224
    :goto_224
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_24d

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v6, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_24d
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    if-eqz p1, :cond_274

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$10;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_274
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    if-eqz p1, :cond_2c7

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    iget-boolean p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->b:Z

    if-nez p1, :cond_29b

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2a2

    :cond_29b
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->h:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v5}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchCancelButton;->setPerformClicked(Z)V

    :goto_2a2
    new-array p1, v0, [F

    fill-array-data p1, :array_2d0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$11;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$11;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$12;-><init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2c7

    :catchall_2c4
    move-exception p1

    :try_start_2c5
    monitor-exit p0
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2c4

    throw p1

    :cond_2c7
    :goto_2c7
    return-void

    :array_2c8
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2d0
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
