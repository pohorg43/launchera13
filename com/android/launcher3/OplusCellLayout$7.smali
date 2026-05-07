.class Lcom/android/launcher3/OplusCellLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusCellLayout;->animateLastChildToRemove(Landroid/view/View;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusCellLayout;

.field public final synthetic val$child:Landroid/widget/ImageView;

.field public final synthetic val$childLp:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

.field public final synthetic val$leftOffset:I

.field public final synthetic val$startX:I

.field public final synthetic val$startY:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusCellLayout;Landroid/widget/ImageView;IIILcom/android/launcher3/views/BaseDragLayer$LayoutParams;)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/OplusCellLayout$7;->this$0:Lcom/android/launcher3/OplusCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$child:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startX:I

    iput p4, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$leftOffset:I

    iput p5, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startY:I

    iput-object p6, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$childLp:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$child:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startX:I

    iget v1, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$leftOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$child:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startY:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$childLp:Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    iget v0, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startX:I

    iput v0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    iget p0, p0, Lcom/android/launcher3/OplusCellLayout$7;->val$startY:I

    iput p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    return-void
.end method
