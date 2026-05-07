.class Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/views/OplusWidgetsFullSheet;->startExpandHideAnimation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

.field public final synthetic val$open:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/OplusWidgetsFullSheet;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    iput-boolean p2, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->val$open:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->val$open:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$600(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)V

    :cond_9
    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$700(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->this$0:Lcom/android/launcher3/views/OplusWidgetsFullSheet;

    invoke-static {p1}, Lcom/android/launcher3/views/OplusWidgetsFullSheet;->access$700(Lcom/android/launcher3/views/OplusWidgetsFullSheet;)Lcom/android/launcher3/widget/WidgetSheetBehavior;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/views/OplusWidgetsFullSheet$4;->val$open:Z

    if-eqz p0, :cond_1d

    const/4 p0, 0x3

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x5

    :goto_1e
    invoke-virtual {p1, p0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->setState(I)V

    :cond_21
    return-void
.end method
