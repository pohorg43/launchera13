.class Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 4

    iget-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->access$000(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->access$100(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_18

    goto :goto_28

    :cond_18
    iget-object p1, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {p1}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->access$000(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;

    invoke-static {p0}, Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;->access$100(Lcom/android/launcher3/widget/BaseLauncherAppWidgetHostView;)F

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_2b

    :cond_28
    :goto_28
    invoke-virtual {p2}, Landroid/graphics/Outline;->setEmpty()V

    :goto_2b
    return-void
.end method
