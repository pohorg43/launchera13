.class Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusWidgetsFullSheet;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$400(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)Lcom/android/launcher/widget/WidgetsRecyclerViewR;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$2;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    iget-object p1, p1, Lcom/android/launcher3/views/AbstractSlideInView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
