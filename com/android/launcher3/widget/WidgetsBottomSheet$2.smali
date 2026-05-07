.class Lcom/android/launcher3/widget/WidgetsBottomSheet$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/WidgetsBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetsBottomSheet;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/BaseWidgetSheet;->hasSeenEducationTip()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_e
    iget-object p1, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->access$000(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetsBottomSheet$2;->this$0:Lcom/android/launcher3/widget/WidgetsBottomSheet;

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetsBottomSheet;->access$000(Lcom/android/launcher3/widget/WidgetsBottomSheet;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
