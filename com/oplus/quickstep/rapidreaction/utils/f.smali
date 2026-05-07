.class public final synthetic Lcom/oplus/quickstep/rapidreaction/utils/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Float;

.field public final synthetic b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

.field public final synthetic c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

.field public final synthetic d:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->a:Ljava/lang/Float;

    iput-object p3, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iput-object p4, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iput-object p5, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->d:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->a:Ljava/lang/Float;

    iget-object v2, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->b:Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;

    iget-object v3, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->c:Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;

    iget-object v4, p0, Lcom/oplus/quickstep/rapidreaction/utils/f;->d:[Landroid/view/View;

    const/4 v1, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper;->d(Ljava/lang/Float;FLcom/oplus/quickstep/rapidreaction/utils/RapidReactionAnimationHelper$RapidFloatProperty;Lcom/oplus/quickstep/rapidreaction/widget/RectangleBackgroundView;[Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
