.class public Lcom/airbnb/lottie/j$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/j;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/j;)V
    .registers 2

    iput-object p1, p0, Lcom/airbnb/lottie/j$f;->a:Lcom/airbnb/lottie/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/airbnb/lottie/j$f;->a:Lcom/airbnb/lottie/j;

    iget-object p1, p0, Lcom/airbnb/lottie/j;->n:Lm/c;

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/airbnb/lottie/j;->c:Lq/g;

    invoke-virtual {p0}, Lq/g;->d()F

    move-result p0

    invoke-virtual {p1, p0}, Lm/c;->k(F)V

    :cond_f
    return-void
.end method
