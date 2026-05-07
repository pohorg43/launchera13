.class public final synthetic Lcom/oplus/quickstep/gesture/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:J

.field public final synthetic f:Landroid/view/animation/Interpolator;

.field public final synthetic g:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field public final synthetic h:Landroid/graphics/PointF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V
    .registers 10

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;I)V
    .registers 11

    iput p9, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    const/4 v0, 0x1

    if-eq p9, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p9, v0, :cond_1b

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    return-void

    :cond_2d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iput p3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iput-wide p4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iput-object p6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iput-object p7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iput-object p8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget v0, p0, Lcom/oplus/quickstep/gesture/g;->a:I

    packed-switch v0, :pswitch_data_70

    goto :goto_5a

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    invoke-static/range {v1 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->y0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    :pswitch_1b  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    invoke-static/range {v1 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->x0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    :pswitch_30  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    invoke-static/range {v1 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->F0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    :pswitch_45  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    invoke-static/range {v1 .. v8}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->e0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    :goto_5a
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/g;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/AbsSwipeUpHandler;

    iget v2, p0, Lcom/oplus/quickstep/gesture/g;->c:F

    iget v3, p0, Lcom/oplus/quickstep/gesture/g;->d:F

    iget-wide v4, p0, Lcom/oplus/quickstep/gesture/g;->e:J

    iget-object v6, p0, Lcom/oplus/quickstep/gesture/g;->f:Landroid/view/animation/Interpolator;

    iget-object v7, p0, Lcom/oplus/quickstep/gesture/g;->g:Lcom/android/quickstep/GestureState$GestureEndTarget;

    iget-object v8, p0, Lcom/oplus/quickstep/gesture/g;->h:Landroid/graphics/PointF;

    invoke-static/range {v1 .. v8}, Lcom/android/quickstep/AbsSwipeUpHandler;->p(Lcom/android/quickstep/AbsSwipeUpHandler;FFJLandroid/view/animation/Interpolator;Lcom/android/quickstep/GestureState$GestureEndTarget;Landroid/graphics/PointF;)V

    return-void

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_30  #00000001
        :pswitch_1b  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
