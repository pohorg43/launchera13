.class public final synthetic Lcom/android/launcher3/graphics/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$Circle;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$LeafSquare;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/graphics/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/IconShape$TearDrop;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/graphics/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)V
    .registers 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/graphics/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget v0, p0, Lcom/android/launcher3/graphics/d;->a:I

    packed-switch v0, :pswitch_data_7e

    goto :goto_60

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/graphics/IconShape$TearDrop;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/animation/FloatArrayEvaluator;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [F

    iget-object p0, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/Path;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape$TearDrop;->b(Lcom/android/launcher3/graphics/IconShape$TearDrop;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_24  #0x1
    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/graphics/IconShape$LeafSquare;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/animation/FloatArrayEvaluator;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [F

    iget-object p0, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/Path;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape$LeafSquare;->b(Lcom/android/launcher3/graphics/IconShape$LeafSquare;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/graphics/IconShape$Circle;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/animation/FloatArrayEvaluator;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [F

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [F

    iget-object p0, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Landroid/graphics/Path;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/graphics/IconShape$Circle;->b(Lcom/android/launcher3/graphics/IconShape$Circle;Landroid/animation/FloatArrayEvaluator;[F[FLandroid/graphics/Path;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_60
    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->b:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iget-object v0, p0, Lcom/android/launcher3/graphics/d;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget-object p0, p0, Lcom/android/launcher3/graphics/d;->f:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, [Landroid/view/View;

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->a(Ljava/lang/Float;Lkotlin/jvm/internal/Ref$FloatRef;Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_24  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
