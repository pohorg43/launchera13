.class public final synthetic Lcom/android/launcher3/widget/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
.implements Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$Listener;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/widget/g;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetSheetBehavior;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/widget/g;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/widget/g;->b:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/launcher3/widget/g;->b:Z

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->q(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/widget/WidgetSheetBehavior;

    iget-boolean p0, p0, Lcom/android/launcher3/widget/g;->b:Z

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/launcher3/widget/WidgetSheetBehavior;->b(Lcom/android/launcher3/widget/WidgetSheetBehavior;ZLandroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public onSwapBtnClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/widget/g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-boolean p0, p0, Lcom/android/launcher3/widget/g;->b:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->r(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;Z)V

    return-void
.end method
