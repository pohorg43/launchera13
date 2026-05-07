.class Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LastChildAnimatorWrapper"
.end annotation


# instance fields
.field public mLastChildAnimator:Landroid/animation/ValueAnimator;

.field public mRemoveFrom:Landroid/graphics/Point;

.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/OplusCellLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->this$0:Lcom/android/launcher3/OplusCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mRemoveFrom:Landroid/graphics/Point;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher3/OplusCellLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;-><init>(Lcom/android/launcher3/OplusCellLayout;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mLastChildAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public of(Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mLastChildAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mLastChildAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    return-void
.end method
