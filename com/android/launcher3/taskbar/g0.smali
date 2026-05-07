.class public final synthetic Lcom/android/launcher3/taskbar/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController;II)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iput p3, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/views/OplusClipIconView;II)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/taskbar/g0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/g0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iput p3, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/taskbar/g0;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarViewController;

    iget v1, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iget p0, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController;->c(Lcom/android/launcher3/taskbar/TaskbarViewController;IILandroid/animation/ValueAnimator;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/launcher3/taskbar/g0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/views/OplusClipIconView;

    iget v1, p0, Lcom/android/launcher3/taskbar/g0;->c:I

    iget p0, p0, Lcom/android/launcher3/taskbar/g0;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/views/OplusClipIconView;->a(Lcom/android/launcher3/views/OplusClipIconView;IILandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
