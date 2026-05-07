.class final Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/WidgetSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettleRunnable"
.end annotation


# instance fields
.field private isPosted:Z

.field private targetState:I

.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/widget/WidgetSheetBehavior<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->targetState:I

    return-void
.end method


# virtual methods
.method public final getTargetState()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->targetState:I

    return p0
.end method

.method public final isPosted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->isPosted:Z

    return p0
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->this$0:Lcom/android/launcher3/widget/WidgetSheetBehavior;

    iget v1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->targetState:I

    invoke-static {v0, v1}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->access$setStateInternal(Lcom/android/launcher3/widget/WidgetSheetBehavior;I)V

    :goto_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->isPosted:Z

    return-void
.end method

.method public final setPosted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->isPosted:Z

    return-void
.end method

.method public final setTargetState(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/WidgetSheetBehavior$SettleRunnable;->targetState:I

    return-void
.end method
