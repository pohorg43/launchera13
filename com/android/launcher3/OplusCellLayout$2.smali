.class Lcom/android/launcher3/OplusCellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateLastChildToAdd(Landroid/view/View;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/widget/ImageView;

.field public final synthetic val$leftOffset:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$2;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$2;->val$child:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher3/OplusCellLayout$2;->val$leftOffset:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$2;->this$0:Lcom/android/launcher3/OplusCellLayout;

    invoke-static {p1}, Lcom/android/launcher3/OplusCellLayout;->access$100(Lcom/android/launcher3/OplusCellLayout;)Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/OplusCellLayout$LastChildAnimatorWrapper;->mRemoveFrom:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/android/launcher3/OplusCellLayout$2;->val$child:Landroid/widget/ImageView;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/launcher3/OplusCellLayout$2;->val$leftOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/launcher3/OplusCellLayout$2;->val$child:Landroid/widget/ImageView;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method
